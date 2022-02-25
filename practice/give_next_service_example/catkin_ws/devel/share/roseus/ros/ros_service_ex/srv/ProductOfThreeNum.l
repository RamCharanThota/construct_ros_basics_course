;; Auto-generated. Do not edit!


(when (boundp 'ros_service_ex::ProductOfThreeNum)
  (if (not (find-package "ROS_SERVICE_EX"))
    (make-package "ROS_SERVICE_EX"))
  (shadow 'ProductOfThreeNum (find-package "ROS_SERVICE_EX")))
(unless (find-package "ROS_SERVICE_EX::PRODUCTOFTHREENUM")
  (make-package "ROS_SERVICE_EX::PRODUCTOFTHREENUM"))
(unless (find-package "ROS_SERVICE_EX::PRODUCTOFTHREENUMREQUEST")
  (make-package "ROS_SERVICE_EX::PRODUCTOFTHREENUMREQUEST"))
(unless (find-package "ROS_SERVICE_EX::PRODUCTOFTHREENUMRESPONSE")
  (make-package "ROS_SERVICE_EX::PRODUCTOFTHREENUMRESPONSE"))

(in-package "ROS")





(defclass ros_service_ex::ProductOfThreeNumRequest
  :super ros::object
  :slots (_num1 _num2 _num3 ))

(defmethod ros_service_ex::ProductOfThreeNumRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    ((:num3 __num3) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   (setq _num3 (round __num3))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:num3
   (&optional __num3)
   (if __num3 (setq _num3 __num3)) _num3)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ;; int32 _num3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;; int32 _num3
       (write-long _num3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num3
     (setq _num3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_service_ex::ProductOfThreeNumResponse
  :super ros::object
  :slots (_product ))

(defmethod ros_service_ex::ProductOfThreeNumResponse
  (:init
   (&key
    ((:product __product) 0)
    )
   (send-super :init)
   (setq _product (round __product))
   self)
  (:product
   (&optional __product)
   (if __product (setq _product __product)) _product)
  (:serialization-length
   ()
   (+
    ;; int32 _product
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _product
       (write-long _product s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _product
     (setq _product (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_service_ex::ProductOfThreeNum
  :super ros::object
  :slots ())

(setf (get ros_service_ex::ProductOfThreeNum :md5sum-) "3dbbdc95f1a704981b9e7b198a21e3bd")
(setf (get ros_service_ex::ProductOfThreeNum :datatype-) "ros_service_ex/ProductOfThreeNum")
(setf (get ros_service_ex::ProductOfThreeNum :request) ros_service_ex::ProductOfThreeNumRequest)
(setf (get ros_service_ex::ProductOfThreeNum :response) ros_service_ex::ProductOfThreeNumResponse)

(defmethod ros_service_ex::ProductOfThreeNumRequest
  (:response () (instance ros_service_ex::ProductOfThreeNumResponse :init)))

(setf (get ros_service_ex::ProductOfThreeNumRequest :md5sum-) "3dbbdc95f1a704981b9e7b198a21e3bd")
(setf (get ros_service_ex::ProductOfThreeNumRequest :datatype-) "ros_service_ex/ProductOfThreeNumRequest")
(setf (get ros_service_ex::ProductOfThreeNumRequest :definition-)
      "int32 num1
int32 num2
int32 num3
---
int32 product

")

(setf (get ros_service_ex::ProductOfThreeNumResponse :md5sum-) "3dbbdc95f1a704981b9e7b198a21e3bd")
(setf (get ros_service_ex::ProductOfThreeNumResponse :datatype-) "ros_service_ex/ProductOfThreeNumResponse")
(setf (get ros_service_ex::ProductOfThreeNumResponse :definition-)
      "int32 num1
int32 num2
int32 num3
---
int32 product

")



(provide :ros_service_ex/ProductOfThreeNum "3dbbdc95f1a704981b9e7b198a21e3bd")


