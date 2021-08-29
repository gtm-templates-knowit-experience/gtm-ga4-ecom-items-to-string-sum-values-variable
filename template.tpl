___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GA4 - Ecom Items to String or Sum Values",
  "description": "This Variable turns GA4 Ecommerce Item array (e.g. [{item_id: \u002712\u0027, quantity: 1},{item_id: \u002734\u0027, quantity: 2}]) into a string (e.g. \u002712|34\u0027), or sums Values (e.g 3).",
"categories": ["ANALYTICS","TAG_MANAGEMENT","UTILITY"],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "templateDescription",
    "displayName": "Turn GA4 Ecommerce Item array (e.g. \u003cstrong\u003e[{item_id: \u002712\u0027, quantity: 1},{item_id: \u002734\u0027, quantity: 2}]\u003c/strong\u003e) into a string (e.g. \u003cstrong\u003e\u002712|34\u0027\u003c/strong\u003e), or sum Values (e.g \u003cstrong\u003e3\u003c/strong\u003e)."
  },
  {
    "type": "GROUP",
    "name": "inputSelectionGroup",
    "displayName": "Select Input Method",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "inputSelection",
        "displayName": "",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "inputDataLayer",
            "displayValue": "GA4 Ecommerce Data Layer"
          },
          {
            "value": "inputVariable",
            "displayValue": "Variable"
          }
        ],
        "simpleValueType": true,
        "alwaysInSummary": false
      },
      {
        "type": "SELECT",
        "name": "inputSelectionVariable",
        "displayName": "Select Variable",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "inputSelection",
            "paramValue": "inputVariable",
            "type": "EQUALS"
          }
        ]
      }
    ],
    "help": "Choose between \u003cstrong\u003eGA4 Ecommerce Data Layer\u003c/strong\u003e or \u003cstrong\u003eVariable\u003c/strong\u003e. If you choose \u003cstrong\u003eVariable, it must return a complete \u003cstrong\u003eecommerce object\u003c/strong\u003e."
  },
  {
    "type": "GROUP",
    "name": "mappingSelectionGroup",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "selectionType",
        "displayName": "Select Mapping Method",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "standardMapping",
            "displayValue": "Standard Mapping"
          },
          {
            "value": "customMapping",
            "displayValue": "Custom Mapping"
          }
        ],
        "simpleValueType": true,
        "help": "You can either map against \u003cstrong\u003eGA4 Standard Ecommerce Events\u003c/strong\u003e or choose \u003cstrong\u003eCustom Mapping\u003c/strong\u003e to map against \u003cstrong\u003eVariables\u003c/strong\u003e.",
        "enablingConditions": [],
        "alwaysInSummary": true
      },
      {
        "type": "GROUP",
        "name": "selectionStandard",
        "displayName": "Select Ecommerce Events",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "CHECKBOX",
            "name": "add_payment_info",
            "checkboxText": "add_payment_info",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "add_shipping_info",
            "checkboxText": "add_shipping_info",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "add_to_cart",
            "checkboxText": "add_to_cart",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "add_to_wishlist",
            "checkboxText": "add_to_wishlist",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "begin_checkout",
            "checkboxText": "begin_checkout",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "purchase",
            "checkboxText": "purchase",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "refund",
            "checkboxText": "refund",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "remove_from_cart",
            "checkboxText": "remove_from_cart",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "select_item",
            "checkboxText": "select_item",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "select_promotion",
            "checkboxText": "select_promotion",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "view_cart",
            "checkboxText": "view_cart",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "view_item",
            "checkboxText": "view_item",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "view_item_list",
            "checkboxText": "view_item_list",
            "simpleValueType": true,
            "enablingConditions": []
          },
          {
            "type": "CHECKBOX",
            "name": "view_promotion",
            "checkboxText": "view_promotion",
            "simpleValueType": true,
            "enablingConditions": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "selectionType",
            "paramValue": "standardMapping",
            "type": "EQUALS"
          }
        ],
        "help": "Select \u003cstrong\u003eGA4 Standard Ecommerce Events\u003c/strong\u003e that should generate the \u003cstrong\u003estring\u003c/strong\u003e or \u003cstrong\u003esum Item Values\u003c/strong\u003e."
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "selectionCustom",
        "displayName": "Custom Mapping",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Custom Mapping Parameter",
            "name": "customParameter",
            "type": "TEXT",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "custom_event"
          },
          {
            "defaultValue": "{{Event}}",
            "displayName": "Select Variable for Mapping",
            "name": "customParameterVariable",
            "type": "SELECT",
            "selectItems": [],
            "macrosInSelect": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "{{Event}}"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "selectionType",
            "paramValue": "customMapping",
            "type": "EQUALS"
          }
        ],
        "newRowButtonText": "Add Custom Mapping Parameter",
        "help": "Type in \u003cstrong\u003eCustom Mapping Parameter\u003c/strong\u003e (e.g. \u003cstrong\u003eaddToCart\u003c/strong\u003e) and \u003cstrong\u003eSelect Variable for Mapping\u003c/strong\u003e against this parameter (e.g. \u003cstrong\u003e{{Event}}\u003c/strong\u003e)."
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "itemTypeSelection",
    "displayName": "Select Item Parameter Type \u0026 Action",
    "radioItems": [
      {
        "value": "string",
        "displayValue": "Create String from Item Parameter"
      },
      {
        "value": "metric",
        "displayValue": "Sum Values from Item Parameter"
      }
    ],
    "simpleValueType": true,
    "help": "Select if you are going to \u003cstrong\u003eCreate a String\u003c/strong\u003e or \u003cstrong\u003eSum Values\u003c/strong\u003e from the \u003cstrong\u003eParameter\u003c/strong\u003e."
  },
  {
    "type": "SELECT",
    "name": "itemType",
    "displayName": "Select Item Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "itemStandard",
        "displayValue": "Standard Item Parameter"
      },
      {
        "value": "itemCustom",
        "displayValue": "Custom Item Parameter"
      }
    ],
    "simpleValueType": true,
    "help": "Select a \u003cstrong\u003eStandard Item Parameter\u003c/strong\u003e, or choose \u003cstrong\u003eCustom Item Parameter\u003c/strong\u003e."
  },
  {
    "type": "GROUP",
    "name": "itemStringGroup",
    "displayName": "Select Item Parameter Settings",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "itemStandardString",
        "displayName": "",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "item_id",
            "displayValue": "item_id"
          },
          {
            "value": "item_name",
            "displayValue": "item_name"
          },
          {
            "value": "item_variant",
            "displayValue": "item_variant"
          },
          {
            "value": "item_brand",
            "displayValue": "item_brand"
          },
          {
            "value": "item_category",
            "displayValue": "item_category"
          },
          {
            "value": "item_category2",
            "displayValue": "item_category2"
          },
          {
            "value": "item_category3",
            "displayValue": "item_category3"
          },
          {
            "value": "item_category4",
            "displayValue": "item_category4"
          },
          {
            "value": "item_category5",
            "displayValue": "item_category5"
          },
          {
            "value": "affiliation",
            "displayValue": "affiliation"
          },
          {
            "value": "coupon",
            "displayValue": "coupon"
          },
          {
            "value": "currency",
            "displayValue": "currency"
          },
          {
            "value": "index",
            "displayValue": "index"
          },
          {
            "value": "item_list_id",
            "displayValue": "item_list_id"
          },
          {
            "value": "item_list_name",
            "displayValue": "item_list_name"
          },
          {
            "value": "location_id",
            "displayValue": "location_id"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "itemType",
            "paramValue": "itemStandard",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "itemCustomString",
        "displayName": "Custom Item String Parameter",
        "simpleValueType": true,
        "help": "Type in your \u003cstrong\u003eCustom Item String\u003c/strong\u003e Parameter, e.g. \u003cstrong\u003eitem_color\u003c/strong\u003e.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "valueHint": "item_name",
        "enablingConditions": [
          {
            "paramName": "itemType",
            "paramValue": "itemCustom",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "paramDelimiter",
        "displayName": "Delimiter",
        "simpleValueType": true,
        "help": "Choose \u003cstrong\u003edelimiter\u003c/strong\u003e for separating your values in the string.",
        "valueHint": "|",
        "defaultValue": "|",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "itemUniqueString",
        "checkboxText": "Return Unique Items/Keys",
        "simpleValueType": true,
        "help": "Choose if only \u003cstrong\u003eUnique Item Parameter Values\u003c/strong\u003e should be returned. E.g. if the Item array contains \u003cstrong\u003e[{item_category: \u0027A\u0027},{item_category: \u0027B\u0027 },(item_category: \u0027A\u0027}]\u003c/strong\u003e, the string returned will be \u003cstrong\u003e\u0027A|B\u0027\u003c/strong\u003e."
      }
    ],
    "enablingConditions": [
      {
        "paramName": "itemTypeSelection",
        "paramValue": "string",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "itemMetricGroup",
    "displayName": "Select Value Settings",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "itemStandardMetric",
        "displayName": "Select Item Parameter",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "discount",
            "displayValue": "discount"
          },
          {
            "value": "price",
            "displayValue": "price"
          },
          {
            "value": "quantity",
            "displayValue": "quantity"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "itemType",
            "paramValue": "itemStandard",
            "type": "EQUALS"
          }
        ],
        "help": "Select a \u003cstrong\u003eGA4 Standard Item Parameter\u003c/strong\u003e from the dropdown to \u003cstrong\u003ecreate values\u003c/strong\u003e from."
      },
      {
        "type": "TEXT",
        "name": "itemCustomMetric",
        "displayName": "Custom Item Metric Parameter",
        "simpleValueType": true,
        "help": "Type in a \u003cstrong\u003eCustom Item Parameter\u003c/strong\u003e to \u003cstrong\u003ecreate values\u003c/strong\u003e from.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "valueHint": "price",
        "enablingConditions": [
          {
            "paramName": "itemType",
            "paramValue": "itemCustom",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "multiplyQuantity",
        "checkboxText": "Multiply Value with Quantity",
        "simpleValueType": true,
        "help": "Choose if the \u003cstrong\u003eValue (Metric)\u003c/strong\u003e should be \u003cstrong\u003eMultiplied\u003c/strong\u003e with \u003cstrong\u003eQuantity\u003c/strong\u003e.",
        "valueValidators": [],
        "enablingConditions": [
          {
            "paramName": "itemStandardMetric",
            "paramValue": "quantity",
            "type": "NOT_EQUALS"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "itemTypeSelection",
        "paramValue": "metric",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const dataLayer = require('copyFromDataLayer');
const event = dataLayer('event', 2);
const getType = require('getType');
const queryPermission = require('queryPermission');
const makeNumber = require('makeNumber');
  
let standardMapping = {};
  if (data.selectionType == 'standardMapping') {
    standardMapping = {
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
  }

  let customMapping;  
  if (data.selectionCustom && data.selectionType == 'customMapping') {
    data.selectionCustom.forEach((customArray) => {
      if (customArray.customParameter === customArray.customParameterVariable) {
        customMapping = customArray.customParameter;
      }
    });
  }

  const mappingResult = standardMapping[event] ? standardMapping[event] : customMapping;
  const keyPath = 'ecommerce.items';
  if (queryPermission('read_data_layer', keyPath) && mappingResult) {
    const ecom = data.inputSelectionVariable ? data.inputSelectionVariable : dataLayer('ecommerce', 1);
    const itemsArray = ecom.items;
      if (getType(itemsArray) !== 'array') {
        return;
      }
  
  if (data.itemTypeSelection === 'string') {
    const paramDelimiter = data.paramDelimiter;
    const itemString = data.itemStandardString ? data.itemStandardString : data.itemCustomString;
    if (data.itemUniqueString) {
      return itemsArray
        .map(obj => obj[itemString])
        .filter((value, index, self) => self.indexOf(value) === index)
        .join(paramDelimiter);
    } else {
      return itemsArray
        .map(obj => obj[itemString])
        .filter(obj => obj)
        .join(paramDelimiter);    
      }
  } else {
    const itemMetric = data.itemStandardMetric ? data.itemStandardMetric : data.itemCustomMetric;
    if (data.multiplyQuantity) {
      return itemsArray
        .reduce(function(a, b){return a + makeNumber(b[itemMetric]*(b.quantity||1));}, 0);
    } else {
      return itemsArray
        .map(obj => obj[itemMetric])
        .filter(obj => obj)
        .reduce((a, b) => a + makeNumber(b), 0);      
    }
  }
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce.*"
              },
              {
                "type": 1,
                "string": "event"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 8/28/2021, 8:11:21 PM


