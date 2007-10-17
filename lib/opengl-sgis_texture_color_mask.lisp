
(in-package #:gl) 

;;;; SGIS_texture_color_mask

(defconstant +texture-color-writemask-sgis+ #x81EF) 
(defconstant +texture-color-writemask-sgis+ #x81EF) 
(defglextfun
 (("TextureColorMaskSGIS" texture-color-mask-sgis) :args
  ((:name |red| :type |Boolean| :direction :in)
   (:name |green| :type |Boolean| :direction :in)
   (:name |blue| :type |Boolean| :direction :in)
   (:name |alpha| :type |Boolean| :direction :in))
  :return ("void") :category ("SGIS_texture_color_mask") :version ("1.1")
  :glxropcode ("2082") :extension nil :glsopcode ("0x01B0") :offset ("?"))) 