; Auto-generated. Do not edit!


(cl:in-package ros_service_ex-srv)


;//! \htmlinclude ProductOfThreeNum-request.msg.html

(cl:defclass <ProductOfThreeNum-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0)
   (num3
    :reader num3
    :initarg :num3
    :type cl:integer
    :initform 0))
)

(cl:defclass ProductOfThreeNum-request (<ProductOfThreeNum-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProductOfThreeNum-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProductOfThreeNum-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_service_ex-srv:<ProductOfThreeNum-request> is deprecated: use ros_service_ex-srv:ProductOfThreeNum-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <ProductOfThreeNum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service_ex-srv:num1-val is deprecated.  Use ros_service_ex-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <ProductOfThreeNum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service_ex-srv:num2-val is deprecated.  Use ros_service_ex-srv:num2 instead.")
  (num2 m))

(cl:ensure-generic-function 'num3-val :lambda-list '(m))
(cl:defmethod num3-val ((m <ProductOfThreeNum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service_ex-srv:num3-val is deprecated.  Use ros_service_ex-srv:num3 instead.")
  (num3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProductOfThreeNum-request>) ostream)
  "Serializes a message object of type '<ProductOfThreeNum-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProductOfThreeNum-request>) istream)
  "Deserializes a message object of type '<ProductOfThreeNum-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProductOfThreeNum-request>)))
  "Returns string type for a service object of type '<ProductOfThreeNum-request>"
  "ros_service_ex/ProductOfThreeNumRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProductOfThreeNum-request)))
  "Returns string type for a service object of type 'ProductOfThreeNum-request"
  "ros_service_ex/ProductOfThreeNumRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProductOfThreeNum-request>)))
  "Returns md5sum for a message object of type '<ProductOfThreeNum-request>"
  "3dbbdc95f1a704981b9e7b198a21e3bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProductOfThreeNum-request)))
  "Returns md5sum for a message object of type 'ProductOfThreeNum-request"
  "3dbbdc95f1a704981b9e7b198a21e3bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProductOfThreeNum-request>)))
  "Returns full string definition for message of type '<ProductOfThreeNum-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%int32 num3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProductOfThreeNum-request)))
  "Returns full string definition for message of type 'ProductOfThreeNum-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%int32 num3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProductOfThreeNum-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProductOfThreeNum-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ProductOfThreeNum-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
    (cl:cons ':num3 (num3 msg))
))
;//! \htmlinclude ProductOfThreeNum-response.msg.html

(cl:defclass <ProductOfThreeNum-response> (roslisp-msg-protocol:ros-message)
  ((product
    :reader product
    :initarg :product
    :type cl:integer
    :initform 0))
)

(cl:defclass ProductOfThreeNum-response (<ProductOfThreeNum-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProductOfThreeNum-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProductOfThreeNum-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_service_ex-srv:<ProductOfThreeNum-response> is deprecated: use ros_service_ex-srv:ProductOfThreeNum-response instead.")))

(cl:ensure-generic-function 'product-val :lambda-list '(m))
(cl:defmethod product-val ((m <ProductOfThreeNum-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service_ex-srv:product-val is deprecated.  Use ros_service_ex-srv:product instead.")
  (product m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProductOfThreeNum-response>) ostream)
  "Serializes a message object of type '<ProductOfThreeNum-response>"
  (cl:let* ((signed (cl:slot-value msg 'product)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProductOfThreeNum-response>) istream)
  "Deserializes a message object of type '<ProductOfThreeNum-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'product) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProductOfThreeNum-response>)))
  "Returns string type for a service object of type '<ProductOfThreeNum-response>"
  "ros_service_ex/ProductOfThreeNumResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProductOfThreeNum-response)))
  "Returns string type for a service object of type 'ProductOfThreeNum-response"
  "ros_service_ex/ProductOfThreeNumResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProductOfThreeNum-response>)))
  "Returns md5sum for a message object of type '<ProductOfThreeNum-response>"
  "3dbbdc95f1a704981b9e7b198a21e3bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProductOfThreeNum-response)))
  "Returns md5sum for a message object of type 'ProductOfThreeNum-response"
  "3dbbdc95f1a704981b9e7b198a21e3bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProductOfThreeNum-response>)))
  "Returns full string definition for message of type '<ProductOfThreeNum-response>"
  (cl:format cl:nil "int32 product~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProductOfThreeNum-response)))
  "Returns full string definition for message of type 'ProductOfThreeNum-response"
  (cl:format cl:nil "int32 product~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProductOfThreeNum-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProductOfThreeNum-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ProductOfThreeNum-response
    (cl:cons ':product (product msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ProductOfThreeNum)))
  'ProductOfThreeNum-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ProductOfThreeNum)))
  'ProductOfThreeNum-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProductOfThreeNum)))
  "Returns string type for a service object of type '<ProductOfThreeNum>"
  "ros_service_ex/ProductOfThreeNum")