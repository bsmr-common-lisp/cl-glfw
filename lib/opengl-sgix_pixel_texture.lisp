
(in-package #:gl) 

;;;; SGIX_pixel_texture

(defglextfun
 (("PixelTexGenSGIX" pixel-tex-gen-sgix) :args
  ((:name |mode| :type |PixelTexGenModeSGIX| :direction :in)) :return ("void")
  :category ("SGIX_pixel_texture") :version ("1.0") :glxflags ("SGI")
  :glxropcode ("2059") :extension nil :glsopcode ("0x0170") :offset ("430"))) 