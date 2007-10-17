
(in-package #:gl) 

;;;; SGIX_polynomial_ffd

(defglextfun
 (("LoadIdentityDeformationMapSGIX" load-identity-deformation-map-sgix) :args
  ((:name |mask| :type |FfdMaskSGIX| :direction :in)) :return ("void")
  :category ("SGIX_polynomial_ffd") :version ("1.0") :glxflags ("SGI" "ignore")
  :glxropcode ("2076") :extension nil :glsopcode ("0x0187") :offset ("?"))) 
(defglextfun
 (("DeformSGIX" deform-sgix) :args
  ((:name |mask| :type |FfdMaskSGIX| :direction :in)) :return ("void")
  :category ("SGIX_polynomial_ffd") :version ("1.0") :glxflags ("SGI" "ignore")
  :glxropcode ("2075") :extension nil :glsopcode ("0x0186") :offset ("?"))) 
(defglextfun
 (("DeformationMap3fSGIX" deformation-map-3f-sgix) :args
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
  :return ("void") :category ("SGIX_polynomial_ffd") :dlflags ("handcode")
  :version ("1.0") :glxflags ("SGI" "ignore") :glxropcode ("2074") :extension
  nil :glsflags ("capture-handcode") :glsopcode ("0x0185") :offset ("?"))) 
(defglextfun
 (("DeformationMap3dSGIX" deformation-map-3d-sgix) :args
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
  :return ("void") :dlflags ("handcode") :category ("SGIX_polynomial_ffd")
  :version ("1.0") :glxflags ("SGI" "ignore") :glxropcode ("2073") :extension
  nil :glsflags ("capture-handcode") :glsopcode ("0x0184") :offset ("?"))) 