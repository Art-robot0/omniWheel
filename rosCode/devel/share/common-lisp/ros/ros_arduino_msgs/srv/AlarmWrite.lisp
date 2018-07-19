; Auto-generated. Do not edit!


(cl:in-package ros_arduino_msgs-srv)


;//! \htmlinclude AlarmWrite-request.msg.html

(cl:defclass <AlarmWrite-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AlarmWrite-request (<AlarmWrite-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AlarmWrite-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AlarmWrite-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_arduino_msgs-srv:<AlarmWrite-request> is deprecated: use ros_arduino_msgs-srv:AlarmWrite-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AlarmWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_arduino_msgs-srv:value-val is deprecated.  Use ros_arduino_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AlarmWrite-request>) ostream)
  "Serializes a message object of type '<AlarmWrite-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AlarmWrite-request>) istream)
  "Deserializes a message object of type '<AlarmWrite-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AlarmWrite-request>)))
  "Returns string type for a service object of type '<AlarmWrite-request>"
  "ros_arduino_msgs/AlarmWriteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AlarmWrite-request)))
  "Returns string type for a service object of type 'AlarmWrite-request"
  "ros_arduino_msgs/AlarmWriteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AlarmWrite-request>)))
  "Returns md5sum for a message object of type '<AlarmWrite-request>"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AlarmWrite-request)))
  "Returns md5sum for a message object of type 'AlarmWrite-request"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AlarmWrite-request>)))
  "Returns full string definition for message of type '<AlarmWrite-request>"
  (cl:format cl:nil "uint8 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AlarmWrite-request)))
  "Returns full string definition for message of type 'AlarmWrite-request"
  (cl:format cl:nil "uint8 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AlarmWrite-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AlarmWrite-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AlarmWrite-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude AlarmWrite-response.msg.html

(cl:defclass <AlarmWrite-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AlarmWrite-response (<AlarmWrite-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AlarmWrite-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AlarmWrite-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_arduino_msgs-srv:<AlarmWrite-response> is deprecated: use ros_arduino_msgs-srv:AlarmWrite-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AlarmWrite-response>) ostream)
  "Serializes a message object of type '<AlarmWrite-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AlarmWrite-response>) istream)
  "Deserializes a message object of type '<AlarmWrite-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AlarmWrite-response>)))
  "Returns string type for a service object of type '<AlarmWrite-response>"
  "ros_arduino_msgs/AlarmWriteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AlarmWrite-response)))
  "Returns string type for a service object of type 'AlarmWrite-response"
  "ros_arduino_msgs/AlarmWriteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AlarmWrite-response>)))
  "Returns md5sum for a message object of type '<AlarmWrite-response>"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AlarmWrite-response)))
  "Returns md5sum for a message object of type 'AlarmWrite-response"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AlarmWrite-response>)))
  "Returns full string definition for message of type '<AlarmWrite-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AlarmWrite-response)))
  "Returns full string definition for message of type 'AlarmWrite-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AlarmWrite-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AlarmWrite-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AlarmWrite-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AlarmWrite)))
  'AlarmWrite-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AlarmWrite)))
  'AlarmWrite-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AlarmWrite)))
  "Returns string type for a service object of type '<AlarmWrite>"
  "ros_arduino_msgs/AlarmWrite")