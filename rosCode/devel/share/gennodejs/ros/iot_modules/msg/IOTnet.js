// Auto-generated. Do not edit!

// (in-package iot_modules.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class IOTnet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.netcmd = null;
    }
    else {
      if (initObj.hasOwnProperty('netcmd')) {
        this.netcmd = initObj.netcmd
      }
      else {
        this.netcmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOTnet
    // Serialize message field [netcmd]
    bufferOffset = _serializer.int8(obj.netcmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOTnet
    let len;
    let data = new IOTnet(null);
    // Deserialize message field [netcmd]
    data.netcmd = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iot_modules/IOTnet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8356f5430589b68b9b7aa8b89ec16c9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 netcmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOTnet(null);
    if (msg.netcmd !== undefined) {
      resolved.netcmd = msg.netcmd;
    }
    else {
      resolved.netcmd = 0
    }

    return resolved;
    }
};

module.exports = IOTnet;
