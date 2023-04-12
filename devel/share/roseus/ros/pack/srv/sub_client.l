;; Auto-generated. Do not edit!


(when (boundp 'pack::sub_client)
  (if (not (find-package "PACK"))
    (make-package "PACK"))
  (shadow 'sub_client (find-package "PACK")))
(unless (find-package "PACK::SUB_CLIENT")
  (make-package "PACK::SUB_CLIENT"))
(unless (find-package "PACK::SUB_CLIENTREQUEST")
  (make-package "PACK::SUB_CLIENTREQUEST"))
(unless (find-package "PACK::SUB_CLIENTRESPONSE")
  (make-package "PACK::SUB_CLIENTRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pack::sub_clientRequest
  :super ros::object
  :slots (_imgs ))

(defmethod pack::sub_clientRequest
  (:init
   (&key
    ((:imgs __imgs) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _imgs __imgs)
   self)
  (:imgs
   (&rest __imgs)
   (if (keywordp (car __imgs))
       (send* _imgs __imgs)
     (progn
       (if __imgs (setq _imgs (car __imgs)))
       _imgs)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _imgs
    (send _imgs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _imgs
       (send _imgs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _imgs
     (send _imgs :deserialize buf ptr-) (incf ptr- (send _imgs :serialization-length))
   ;;
   self)
  )

(defclass pack::sub_clientResponse
  :super ros::object
  :slots (_distance _theta ))

(defmethod pack::sub_clientResponse
  (:init
   (&key
    ((:distance __distance) (instance std_msgs::Float32 :init))
    ((:theta __theta) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _distance __distance)
   (setq _theta __theta)
   self)
  (:distance
   (&rest __distance)
   (if (keywordp (car __distance))
       (send* _distance __distance)
     (progn
       (if __distance (setq _distance (car __distance)))
       _distance)))
  (:theta
   (&rest __theta)
   (if (keywordp (car __theta))
       (send* _theta __theta)
     (progn
       (if __theta (setq _theta (car __theta)))
       _theta)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _distance
    (send _distance :serialization-length)
    ;; std_msgs/Float32 _theta
    (send _theta :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _distance
       (send _distance :serialize s)
     ;; std_msgs/Float32 _theta
       (send _theta :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _distance
     (send _distance :deserialize buf ptr-) (incf ptr- (send _distance :serialization-length))
   ;; std_msgs/Float32 _theta
     (send _theta :deserialize buf ptr-) (incf ptr- (send _theta :serialization-length))
   ;;
   self)
  )

(defclass pack::sub_client
  :super ros::object
  :slots ())

(setf (get pack::sub_client :md5sum-) "1ea84f917e2d4a57c4ac42667c785711")
(setf (get pack::sub_client :datatype-) "pack/sub_client")
(setf (get pack::sub_client :request) pack::sub_clientRequest)
(setf (get pack::sub_client :response) pack::sub_clientResponse)

(defmethod pack::sub_clientRequest
  (:response () (instance pack::sub_clientResponse :init)))

(setf (get pack::sub_clientRequest :md5sum-) "1ea84f917e2d4a57c4ac42667c785711")
(setf (get pack::sub_clientRequest :datatype-) "pack/sub_clientRequest")
(setf (get pack::sub_clientRequest :definition-)
      "sensor_msgs/Image imgs

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
std_msgs/Float32 distance 
std_msgs/Float32 theta

================================================================================
MSG: std_msgs/Float32
")

(setf (get pack::sub_clientResponse :md5sum-) "1ea84f917e2d4a57c4ac42667c785711")
(setf (get pack::sub_clientResponse :datatype-) "pack/sub_clientResponse")
(setf (get pack::sub_clientResponse :definition-)
      "sensor_msgs/Image imgs

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
std_msgs/Float32 distance 
std_msgs/Float32 theta

================================================================================
MSG: std_msgs/Float32
")



(provide :pack/sub_client "1ea84f917e2d4a57c4ac42667c785711")


