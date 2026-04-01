const dataLayer = require('copyFromDataLayer');
const event = dataLayer('event', 2);
const getType = require('getType');
const queryPermission = require('queryPermission');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const Math = require('Math');

// 1. Determine Mapping Result
let mappingResult;

if (data.selectionType === 'standardMapping') {
  const standardMapping = {
    'add_payment_info': data.add_payment_info,
    'add_shipping_info': data.add_shipping_info,
    'add_to_cart': data.add_to_cart,
    'add_to_wishlist': data.add_to_wishlist,
    'begin_checkout': data.begin_checkout,
    'purchase': data.purchase,
    'refund': data.refund,
    'remove_from_cart': data.remove_from_cart,
    'select_item': data.select_item,
    'select_promotion': data.select_promotion,
    'view_cart': data.view_cart,
    'view_item': data.view_item,
    'view_item_list': data.view_item_list,
    'view_promotion': data.view_promotion
  };
  mappingResult = standardMapping[event];
} else if (data.selectionType === 'customMapping' && data.selectionCustom) {
  data.selectionCustom.forEach((customArray) => {
    if (customArray.customParameter === customArray.customParameterVariable) {
      mappingResult = customArray.customParameter;
    }
  });
}

// 2. Validate Permissions and Extract Data
const keyPath = 'ecommerce.items';
if (!queryPermission('read_data_layer', keyPath) || !mappingResult) {
  return;
}

const ecom = data.inputSelectionVariable ? data.inputSelectionVariable : dataLayer('ecommerce', 1);

// Early exit if ecom or ecom.items is missing/invalid
if (!ecom || !ecom.items || getType(ecom.items) !== 'array') {
  return;
}

let itemsArray = ecom.items;

// --------------------------------------------------------
// Filtering Logic (Target Specific Items)
// --------------------------------------------------------
if (data.enableFilter && data.filterKey && data.filterValue) {
  
  const targetValue = data.normalizeFilter ? makeString(data.filterValue).toLowerCase().trim() : makeString(data.filterValue);

  itemsArray = itemsArray.filter((item) => {
    let itemValue = item[data.filterKey];
    
    // Skip if the key doesn't exist on this item
    if (itemValue === undefined || itemValue === null) return false;

    itemValue = makeString(itemValue);
    const finalItemValue = data.normalizeFilter ? itemValue.toLowerCase().trim() : itemValue;

    return finalItemValue === targetValue;
  });
}

// Exit if array is empty after filtering (or natively empty)
if (!itemsArray.length) {
  return;
}
// --------------------------------------------------------

// 3. Process Items (String Map vs Metric Sum)
if (data.itemTypeSelection === 'string') {
  const paramDelimiter = data.paramDelimiter;
  const itemString = data.itemStandardString ? data.itemStandardString : data.itemCustomString;

  const values = itemsArray
    .map(obj => obj[itemString])
    .filter(v => v != null && v !== '');

  if (!values.length) return;

  if (data.itemUniqueString) {
    const unique = [];
    for (let i = 0; i < values.length; i++) {
      if (unique.indexOf(values[i]) === -1) {
        unique.push(values[i]);
      }
    }
    return unique.join(paramDelimiter);
  }

  return values.join(paramDelimiter);

} else {
  // Numeric Summation
  const itemMetric = data.itemStandardMetric ? data.itemStandardMetric : data.itemCustomMetric;
  
  if (data.multiplyQuantity) {
    const rawTotal = itemsArray.reduce((total, item) => {
      const value = makeNumber(item[itemMetric]) || 0;
      const qty = makeNumber(item.quantity) || 1; 
      return total + (value * qty);
    }, 0);
    
    // Round to 2 decimal places to fix JS floating point errors
    return Math.round(rawTotal * 100) / 100;
    
  } else {
    const rawTotal = itemsArray
      .map(obj => obj[itemMetric])
      .filter(val => val != null)
      .reduce((total, val) => total + (makeNumber(val) || 0), 0);
      
    // Round to 2 decimal places to fix JS floating point errors
    return Math.round(rawTotal * 100) / 100;
  }
}
