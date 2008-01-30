;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgix_polynomial_ffd

(defglextfun "LoadIdentityDeformationMapSGIX"
 load-identity-deformation-map-sgix :return "void" :args
 ((:name |mask| :type |FfdMaskSGIX| :direction :in)) :category
 "SGIX_polynomial_ffd" :version "1.0") 
(defglextfun "DeformSGIX" deform-sgix :return "void" :args
 ((:name |mask| :type |FfdMaskSGIX| :direction :in)) :category
 "SGIX_polynomial_ffd" :version "1.0") 
(defglextfun "DeformationMap3fSGIX" deformation-map-3f-sgix :return "void"
 :args
 ((:name |target| :type |FfdTargetSGIX| :direction :in)
  (:name |u1| :type |CoordF| :direction :in)
  (:name |u2| :type |CoordF| :direction :in)
  (:name |ustride| :type |Int32| :direction :in)
  (:name |uorder| :type |CheckedInt32| :direction :in)
  (:name |v1| :type |CoordF| :direction :in)
  (:name |v2| :type |CoordF| :direction :in)
  (:name |vstride| :type |Int32| :direction :in)
  (:name |vorder| :type |CheckedInt32| :direction :in)
  (:name |w1| :type |CoordF| :direction :in)
  (:name |w2| :type |CoordF| :direction :in)
  (:name |wstride| :type |Int32| :direction :in)
  (:name |worder| :type |CheckedInt32| :direction :in)
  (:name |points| :type |CoordF| :direction :in :array t :size
   (|target| |ustride| |uorder| |vstride| |vorder| |wstride| |worder|)))
 :category "SGIX_polynomial_ffd" :version "1.0") 
(defglextfun "DeformationMap3dSGIX" deformation-map-3d-sgix :return "void"
 :args
 ((:name |target| :type |FfdTargetSGIX| :direction :in)
  (:name |u1| :type |CoordD| :direction :in)
  (:name |u2| :type |CoordD| :direction :in)
  (:name |ustride| :type |Int32| :direction :in)
  (:name |uorder| :type |CheckedInt32| :direction :in)
  (:name |v1| :type |CoordD| :direction :in)
  (:name |v2| :type |CoordD| :direction :in)
  (:name |vstride| :type |Int32| :direction :in)
  (:name |vorder| :type |CheckedInt32| :direction :in)
  (:name |w1| :type |CoordD| :direction :in)
  (:name |w2| :type |CoordD| :direction :in)
  (:name |wstride| :type |Int32| :direction :in)
  (:name |worder| :type |CheckedInt32| :direction :in)
  (:name |points| :type |CoordD| :direction :in :array t :size
   (|target| |ustride| |uorder| |vstride| |vorder| |wstride| |worder|)))
 :category "SGIX_polynomial_ffd" :version "1.0") 
