; Auto-generated. Do not edit!


(cl:in-package ros_arduino_msgs-srv)


;//! \htmlinclude LightShow-request.msg.html

(cl:defclass <LightShow-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LightShow-request (<LightShow-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightShow-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightShow-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_arduino_msgs-srv:<LightShow-request> is deprecated: use ros_arduino_msgs-srv:LightShow-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LightShow-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_arduino_msgs-srv:value-val is deprecated.  Use ros_arduino_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightShow-request>) ostream)
  "Serializes a message object of type '<LightShow-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightShow-request>) istream)
  "Deserializes a message object of type '<LightShow-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightShow-request>)))
  "Returns string type for a service object of type '<LightShow-request>"
  "ros_arduino_msgs/LightShowRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightShow-request)))
  "Returns string type for a service object of type 'LightShow-request"
  "ros_arduino_msgs/LightShowRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightShow-request>)))
  "Returns md5sum for a message object of type '<LightShow-request>"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightShow-request)))
  "Returns md5sum for a message object of type 'LightShow-request"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightShow-request>)))
  "Returns full string definition for message of type '<LightShow-request>"
  (cl:format cl:nil "uint8 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightShow-request)))
  "Returns full string definition for message of type 'LightShow-request"
  (cl:format cl:nil "uint8 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightShow-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightShow-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LightShow-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude LightShow-response.msg.html

(cl:defclass <LightShow-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LightShow-response (<LightShow-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightShow-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightShow-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_arduino_msgs-srv:<LightShow-response> is deprecated: use ros_arduino_msgs-srv:LightShow-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightShow-response>) ostream)
  "Serializes a message object of type '<LightShow-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightShow-response>) istream)
  "Deserializes a message object of type '<LightShow-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightShow-response>)))
  "Returns string type for a service object of type '<LightShow-response>"
  "ros_arduino_msgs/LightShowResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightShow-response)))
  "Returns string type for a service object of type 'LightShow-response"
  "ros_arduino_msgs/LightShowResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightShow-response>)))
  "Returns md5sum for a message object of type '<LightShow-response>"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightShow-response)))
  "Returns md5sum for a message object of type 'LightShow-response"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightShow-response>)))
  "Returns full string definition for message of type '<LightShow-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightShow-response)))
  "Returns full string definition for message of type 'LightShow-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightShow-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightShow-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LightShow-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LightShow)))
  'LightShow-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LightShow)))
  'LightShow-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightShow)))
  "Returns string type for a service object of type '<LightShow>"
  "ros_arduino_msgs/LightShow")