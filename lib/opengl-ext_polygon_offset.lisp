
(in-package #:gl) 

;;;; EXT_polygon_offset

(defconstant +polygon-offset-ext+ #x8037) 
(defconstant +polygon-offset-factor-ext+ #x8038) 
(defconstant +polygon-offset-ext+ #x8037) 
(defconstant +polygon-offset-factor-ext+ #x8038) 
(defglextfun
 (("PolygonOffsetEXT" polygon-offset-ext) :args
  ((:name |factor| :type |Float32| :direction :in)
   (:name |bias| :type |Float32| :direction :in))
  :return ("void") :category ("EXT_polygon_offset") :version ("1.0")
  :glxropcode ("4098") :glxflags ("EXT") :extension ("soft") :glsopcode
  ("0x0122") :offset ("414"))) 