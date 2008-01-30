;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ati_element_array

(defconstant +element-array-ati+ #x8768) 
(defconstant +element-array-type-ati+ #x8769) 
(defconstant +element-array-pointer-ati+ #x876A) 
(defglextfun "DrawRangeElementArrayATI" draw-range-element-array-ati :return
 "void" :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |start| :type |UInt32| :direction :in)
  (:name |end| :type |UInt32| :direction :in)
  (:name |count| :type |SizeI| :direction :in))
 :category "ATI_element_array" :version "1.2") 
(defglextfun "DrawElementArrayATI" draw-element-array-ati :return "void" :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |count| :type |SizeI| :direction :in))
 :category "ATI_element_array" :version "1.2") 
(defglextfun "ElementPointerATI" element-pointer-ati :return "void" :args
 ((:name |type| :type |ElementPointerTypeATI| :direction :in)
  (:name |pointer| :type |Void| :direction :in :array t :size (|type|)
   :retained t))
 :category "ATI_element_array" :version "1.2") 
