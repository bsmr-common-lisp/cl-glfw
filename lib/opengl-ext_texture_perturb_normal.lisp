
(in-package #:gl) 

;;;; EXT_texture_perturb_normal

(defconstant +perturb-ext+ #x85AE) 
(defconstant +texture-normal-ext+ #x85AF) 
(defglextfun
 (("TextureNormalEXT" texture-normal-ext) :args
  ((:name |mode| :type |TextureNormalModeEXT| :direction :in)) :return ("void")
  :category ("EXT_texture_perturb_normal") :version ("1.1") :glxropcode ("?")
  :glsflags ("ignore") :offset ("?"))) 