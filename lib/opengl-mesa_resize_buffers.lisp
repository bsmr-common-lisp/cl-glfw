
(in-package #:gl) 

;;;; MESA_resize_buffers

(defglextfun
 (("ResizeBuffersMESA" resize-buffers-mesa) :args nil :return ("void")
  :category ("MESA_resize_buffers") :version ("1.0") :glxropcode ("?")
  :glsopcode ("0x01EF") :offset ("512"))) 