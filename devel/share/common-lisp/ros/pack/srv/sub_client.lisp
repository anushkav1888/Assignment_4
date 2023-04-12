; Auto-generated. Do not edit!


(cl:in-package pack-srv)


;//! \htmlinclude sub_client-request.msg.html

(cl:defclass <sub_client-request> (roslisp-msg-protocol:ros-message)
  ((imgs
    :reader imgs
    :initarg :imgs
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass sub_client-request (<sub_client-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sub_client-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sub_client-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pack-srv:<sub_client-request> is deprecated: use pack-srv:sub_client-request instead.")))

(cl:ensure-generic-function 'imgs-val :lambda-list '(m))
(cl:defmethod imgs-val ((m <sub_client-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pack-srv:imgs-val is deprecated.  Use pack-srv:imgs instead.")
  (imgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sub_client-request>) ostream)
  "Serializes a message object of type '<sub_client-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imgs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sub_client-request>) istream)
  "Deserializes a message object of type '<sub_client-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imgs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sub_client-request>)))
  "Returns string type for a service object of type '<sub_client-request>"
  "pack/sub_clientRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sub_client-request)))
  "Returns string type for a service object of type 'sub_client-request"
  "pack/sub_clientRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sub_client-request>)))
  "Returns md5sum for a message object of type '<sub_client-request>"
  "1ea84f917e2d4a57c4ac42667c785711")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sub_client-request)))
  "Returns md5sum for a message object of type 'sub_client-request"
  "1ea84f917e2d4a57c4ac42667c785711")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sub_client-request>)))
  "Returns full string definition for message of type '<sub_client-request>"
  (cl:format cl:nil "sensor_msgs/Image imgs~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sub_client-request)))
  "Returns full string definition for message of type 'sub_client-request"
  (cl:format cl:nil "sensor_msgs/Image imgs~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sub_client-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imgs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sub_client-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sub_client-request
    (cl:cons ':imgs (imgs msg))
))
;//! \htmlinclude sub_client-response.msg.html

(cl:defclass <sub_client-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (theta
    :reader theta
    :initarg :theta
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass sub_client-response (<sub_client-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sub_client-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sub_client-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pack-srv:<sub_client-response> is deprecated: use pack-srv:sub_client-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <sub_client-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pack-srv:distance-val is deprecated.  Use pack-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <sub_client-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pack-srv:theta-val is deprecated.  Use pack-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sub_client-response>) ostream)
  "Serializes a message object of type '<sub_client-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'theta) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sub_client-response>) istream)
  "Deserializes a message object of type '<sub_client-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'theta) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sub_client-response>)))
  "Returns string type for a service object of type '<sub_client-response>"
  "pack/sub_clientResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sub_client-response)))
  "Returns string type for a service object of type 'sub_client-response"
  "pack/sub_clientResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sub_client-response>)))
  "Returns md5sum for a message object of type '<sub_client-response>"
  "1ea84f917e2d4a57c4ac42667c785711")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sub_client-response)))
  "Returns md5sum for a message object of type 'sub_client-response"
  "1ea84f917e2d4a57c4ac42667c785711")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sub_client-response>)))
  "Returns full string definition for message of type '<sub_client-response>"
  (cl:format cl:nil "std_msgs/Float32 distance ~%std_msgs/Float32 theta~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sub_client-response)))
  "Returns full string definition for message of type 'sub_client-response"
  (cl:format cl:nil "std_msgs/Float32 distance ~%std_msgs/Float32 theta~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sub_client-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sub_client-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sub_client-response
    (cl:cons ':distance (distance msg))
    (cl:cons ':theta (theta msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sub_client)))
  'sub_client-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sub_client)))
  'sub_client-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sub_client)))
  "Returns string type for a service object of type '<sub_client>"
  "pack/sub_client")