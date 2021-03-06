;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ati_pn_triangles

(defconstant +pn-triangles-ati+ #x87F0) 
(defconstant +max-pn-triangles-tesselation-level-ati+ #x87F1) 
(defconstant +pn-triangles-point-mode-ati+ #x87F2) 
(defconstant +pn-triangles-normal-mode-ati+ #x87F3) 
(defconstant +pn-triangles-tesselation-level-ati+ #x87F4) 
(defconstant +pn-triangles-point-mode-linear-ati+ #x87F5) 
(defconstant +pn-triangles-point-mode-cubic-ati+ #x87F6) 
(defconstant +pn-triangles-normal-mode-linear-ati+ #x87F7) 
(defconstant +pn-triangles-normal-mode-quadratic-ati+ #x87F8) 
(defconstant +3dc-x-amd+ #x87F9) 
(defconstant +3dc-xy-amd+ #x87FA) 
(defconstant +pn-triangles-ati+ #x87F0) 
(defconstant +max-pn-triangles-tesselation-level-ati+ #x87F1) 
(defconstant +pn-triangles-point-mode-ati+ #x87F2) 
(defconstant +pn-triangles-normal-mode-ati+ #x87F3) 
(defconstant +pn-triangles-tesselation-level-ati+ #x87F4) 
(defconstant +pn-triangles-point-mode-linear-ati+ #x87F5) 
(defconstant +pn-triangles-point-mode-cubic-ati+ #x87F6) 
(defconstant +pn-triangles-normal-mode-linear-ati+ #x87F7) 
(defconstant +pn-triangles-normal-mode-quadratic-ati+ #x87F8) 
(defglextfun "PNTrianglesfATI" pntriangles-f-ati :return "void" :args
 ((:name |pname| :type |PNTrianglesPNameATI| :direction :in)
  (:name |param| :type |Float32| :direction :in))
 :category "ATI_pn_triangles" :deprecated nil :version "1.2") 
(defglextfun "PNTrianglesiATI" pntriangles-i-ati :return "void" :args
 ((:name |pname| :type |PNTrianglesPNameATI| :direction :in)
  (:name |param| :type |Int32| :direction :in))
 :category "ATI_pn_triangles" :deprecated nil :version "1.2") 
(make-extension-loader |ATI_pn_triangles|
 (("PNTrianglesfATI" pntriangles-f-ati :return "void" :args
   ((:name |pname| :type |PNTrianglesPNameATI| :direction :in)
    (:name |param| :type |Float32| :direction :in))
   :category "ATI_pn_triangles" :deprecated nil :version "1.2")
  ("PNTrianglesiATI" pntriangles-i-ati :return "void" :args
   ((:name |pname| :type |PNTrianglesPNameATI| :direction :in)
    (:name |param| :type |Int32| :direction :in))
   :category "ATI_pn_triangles" :deprecated nil :version "1.2"))) 
