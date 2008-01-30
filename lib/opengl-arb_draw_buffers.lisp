;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_draw_buffers

(defconstant +max-draw-buffers-arb+ #x8824) 
(defconstant +draw-buffer0-arb+ #x8825) 
(defconstant +draw-buffer1-arb+ #x8826) 
(defconstant +draw-buffer2-arb+ #x8827) 
(defconstant +draw-buffer3-arb+ #x8828) 
(defconstant +draw-buffer4-arb+ #x8829) 
(defconstant +draw-buffer5-arb+ #x882A) 
(defconstant +draw-buffer6-arb+ #x882B) 
(defconstant +draw-buffer7-arb+ #x882C) 
(defconstant +draw-buffer8-arb+ #x882D) 
(defconstant +draw-buffer9-arb+ #x882E) 
(defconstant +draw-buffer10-arb+ #x882F) 
(defconstant +draw-buffer11-arb+ #x8830) 
(defconstant +draw-buffer12-arb+ #x8831) 
(defconstant +draw-buffer13-arb+ #x8832) 
(defconstant +draw-buffer14-arb+ #x8833) 
(defconstant +draw-buffer15-arb+ #x8834) 
(defglextfun "DrawBuffersARB" draw-buffers-arb :return "void" :args
 ((:name |n| :type |SizeI| :direction :in)
  (:name |bufs| :type |DrawBufferModeATI| :direction :in :array t :size n))
 :category "ARB_draw_buffers" :version "1.5") 
