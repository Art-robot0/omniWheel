; Auto-generated. Do not edit!


(cl:in-package iot_modules-msg)


;//! \htmlinclude IOTnet.msg.html

(cl:defclass <IOTnet> (roslisp-msg-protocol:ros-message)
  ((netcmd
    :reader netcmd
    :initarg :netcmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IOTnet (<IOTnet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOTnet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOTnet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iot_modules-msg:<IOTnet> is deprecated: use iot_modules-msg:IOTnet instead.")))

(cl:ensure-generic-function 'netcmd-val :lambda-list '(m))
(cl:defmethod netcmd-val ((m <IOTnet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iot_modules-msg:netcmd-val is deprecated.  Use iot_modules-msg:netcmd instead.")
  (netcmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOTnet>) ostream)
  "Serializes a message object of type '<IOTnet>"
  (cl:let* ((signed (cl:slot-value msg 'netcmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOTnet>) istream)
  "Deserializes a message object of type '<IOTnet>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'netcmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOTnet>)))
  "Returns string type for a message object of type '<IOTnet>"
  "iot_modules/IOTnet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOTnet)))
  "Returns string type for a message object of type 'IOTnet"
  "iot_modules/IOTnet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOTnet>)))
  "Returns md5sum for a message object of type '<IOTnet>"
  "8356f5430589b68b9b7aa8b89ec16c9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOTnet)))
  "Returns md5sum for a message object of type 'IOTnet"
  "8356f5430589b68b9b7aa8b89ec16c9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOTnet>)))
  "Returns full string definition for message of type '<IOTnet>"
  (cl:format cl:nil "int8 netcmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOTnet)))
  "Returns full string definition for message of type 'IOTnet"
  (cl:format cl:nil "int8 netcmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOTnet>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOTnet>))
  "Converts a ROS message object to a list"
  (cl:list 'IOTnet
    (cl:cons ':netcmd (netcmd msg))
))
