;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::word_count)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'word_count (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::WORD_COUNT")
  (make-package "BEGINNER_TUTORIALS::WORD_COUNT"))
(unless (find-package "BEGINNER_TUTORIALS::WORD_COUNTREQUEST")
  (make-package "BEGINNER_TUTORIALS::WORD_COUNTREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::WORD_COUNTRESPONSE")
  (make-package "BEGINNER_TUTORIALS::WORD_COUNTRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::word_countRequest
  :super ros::object
  :slots (_words ))

(defmethod beginner_tutorials::word_countRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::word_countResponse
  :super ros::object
  :slots (_count ))

(defmethod beginner_tutorials::word_countResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass beginner_tutorials::word_count
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::word_count :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get beginner_tutorials::word_count :datatype-) "beginner_tutorials/word_count")
(setf (get beginner_tutorials::word_count :request) beginner_tutorials::word_countRequest)
(setf (get beginner_tutorials::word_count :response) beginner_tutorials::word_countResponse)

(defmethod beginner_tutorials::word_countRequest
  (:response () (instance beginner_tutorials::word_countResponse :init)))

(setf (get beginner_tutorials::word_countRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get beginner_tutorials::word_countRequest :datatype-) "beginner_tutorials/word_countRequest")
(setf (get beginner_tutorials::word_countRequest :definition-)
      "string words
---
uint32 count
")

(setf (get beginner_tutorials::word_countResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get beginner_tutorials::word_countResponse :datatype-) "beginner_tutorials/word_countResponse")
(setf (get beginner_tutorials::word_countResponse :definition-)
      "string words
---
uint32 count
")



(provide :beginner_tutorials/word_count "58903d21a3264f3408d79ba79e9f7c7e")


