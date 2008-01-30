;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_point_parameters

(defconstant +point-size-min-arb+ #x8126) 
(defconstant +point-size-max-arb+ #x8127) 
(defconstant +point-fade-threshold-size-arb+ #x8128) 
(defconstant +point-distance-attenuation-arb+ #x8129) 
(defglextfun "PointParameterfvARB" point-parameter-fv-arb :return "void" :args
 ((:name |pname| :type |PointParameterNameARB| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in :array t :size
   (|pname|)))
 :category "ARB_point_parameters" :version "1.0") 
(defglextfun "PointParameterfARB" point-parameter-f-arb :return "void" :args
 ((:name |pname| :type |PointParameterNameARB| :direction :in)
  (:name |param| :type |CheckedFloat32| :direction :in))
 :category "ARB_point_parameters" :version "1.0") 
