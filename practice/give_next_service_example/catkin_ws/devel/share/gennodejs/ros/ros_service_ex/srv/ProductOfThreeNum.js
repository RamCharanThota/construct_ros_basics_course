// Auto-generated. Do not edit!

// (in-package ros_service_ex.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ProductOfThreeNumRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num1 = null;
      this.num2 = null;
      this.num3 = null;
    }
    else {
      if (initObj.hasOwnProperty('num1')) {
        this.num1 = initObj.num1
      }
      else {
        this.num1 = 0;
      }
      if (initObj.hasOwnProperty('num2')) {
        this.num2 = initObj.num2
      }
      else {
        this.num2 = 0;
      }
      if (initObj.hasOwnProperty('num3')) {
        this.num3 = initObj.num3
      }
      else {
        this.num3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProductOfThreeNumRequest
    // Serialize message field [num1]
    bufferOffset = _serializer.int32(obj.num1, buffer, bufferOffset);
    // Serialize message field [num2]
    bufferOffset = _serializer.int32(obj.num2, buffer, bufferOffset);
    // Serialize message field [num3]
    bufferOffset = _serializer.int32(obj.num3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProductOfThreeNumRequest
    let len;
    let data = new ProductOfThreeNumRequest(null);
    // Deserialize message field [num1]
    data.num1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num2]
    data.num2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num3]
    data.num3 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_service_ex/ProductOfThreeNumRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86be3740681ed62105cc2bccd1e32006';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 num1
    int32 num2
    int32 num3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProductOfThreeNumRequest(null);
    if (msg.num1 !== undefined) {
      resolved.num1 = msg.num1;
    }
    else {
      resolved.num1 = 0
    }

    if (msg.num2 !== undefined) {
      resolved.num2 = msg.num2;
    }
    else {
      resolved.num2 = 0
    }

    if (msg.num3 !== undefined) {
      resolved.num3 = msg.num3;
    }
    else {
      resolved.num3 = 0
    }

    return resolved;
    }
};

class ProductOfThreeNumResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.product = null;
    }
    else {
      if (initObj.hasOwnProperty('product')) {
        this.product = initObj.product
      }
      else {
        this.product = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProductOfThreeNumResponse
    // Serialize message field [product]
    bufferOffset = _serializer.int32(obj.product, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProductOfThreeNumResponse
    let len;
    let data = new ProductOfThreeNumResponse(null);
    // Deserialize message field [product]
    data.product = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_service_ex/ProductOfThreeNumResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26cae2f0f3a92c4a8f32305e4e3169ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 product
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProductOfThreeNumResponse(null);
    if (msg.product !== undefined) {
      resolved.product = msg.product;
    }
    else {
      resolved.product = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ProductOfThreeNumRequest,
  Response: ProductOfThreeNumResponse,
  md5sum() { return '3dbbdc95f1a704981b9e7b198a21e3bd'; },
  datatype() { return 'ros_service_ex/ProductOfThreeNum'; }
};
