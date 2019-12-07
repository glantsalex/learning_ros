; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude word_count-request.msg.html

(cl:defclass <word_count-request> (roslisp-msg-protocol:ros-message)
  ((words
    :reader words
    :initarg :words
    :type cl:string
    :initform ""))
)

(cl:defclass word_count-request (<word_count-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <word_count-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'word_count-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<word_count-request> is deprecated: use beginner_tutorials-srv:word_count-request instead.")))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <word_count-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:words-val is deprecated.  Use beginner_tutorials-srv:words instead.")
  (words m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <word_count-request>) ostream)
  "Serializes a message object of type '<word_count-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'words))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <word_count-request>) istream)
  "Deserializes a message object of type '<word_count-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'words) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'words) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<word_count-request>)))
  "Returns string type for a service object of type '<word_count-request>"
  "beginner_tutorials/word_countRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'word_count-request)))
  "Returns string type for a service object of type 'word_count-request"
  "beginner_tutorials/word_countRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<word_count-request>)))
  "Returns md5sum for a message object of type '<word_count-request>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'word_count-request)))
  "Returns md5sum for a message object of type 'word_count-request"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<word_count-request>)))
  "Returns full string definition for message of type '<word_count-request>"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'word_count-request)))
  "Returns full string definition for message of type 'word_count-request"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <word_count-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'words))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <word_count-request>))
  "Converts a ROS message object to a list"
  (cl:list 'word_count-request
    (cl:cons ':words (words msg))
))
;//! \htmlinclude word_count-response.msg.html

(cl:defclass <word_count-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass word_count-response (<word_count-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <word_count-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'word_count-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<word_count-response> is deprecated: use beginner_tutorials-srv:word_count-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <word_count-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:count-val is deprecated.  Use beginner_tutorials-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <word_count-response>) ostream)
  "Serializes a message object of type '<word_count-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <word_count-response>) istream)
  "Deserializes a message object of type '<word_count-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<word_count-response>)))
  "Returns string type for a service object of type '<word_count-response>"
  "beginner_tutorials/word_countResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'word_count-response)))
  "Returns string type for a service object of type 'word_count-response"
  "beginner_tutorials/word_countResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<word_count-response>)))
  "Returns md5sum for a message object of type '<word_count-response>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'word_count-response)))
  "Returns md5sum for a message object of type 'word_count-response"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<word_count-response>)))
  "Returns full string definition for message of type '<word_count-response>"
  (cl:format cl:nil "uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'word_count-response)))
  "Returns full string definition for message of type 'word_count-response"
  (cl:format cl:nil "uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <word_count-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <word_count-response>))
  "Converts a ROS message object to a list"
  (cl:list 'word_count-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'word_count)))
  'word_count-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'word_count)))
  'word_count-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'word_count)))
  "Returns string type for a service object of type '<word_count>"
  "beginner_tutorials/word_count")