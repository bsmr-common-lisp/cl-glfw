
(in-package #:gl) 

;;;; SGIX_fragment_lighting

(defconstant +current-raster-normal-sgix+ #x8406) 
(defconstant +current-raster-normal-sgix+ #x8406) 
(defglextfun
 (("LightEnviSGIX" light-envi-sgix) :args
  ((:name |pname| :type |LightEnvParameterSGIX| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsflags ("gl-enum") :glsopcode ("0x01AF")
  :offset ("493"))) 
(defglextfun
 (("GetFragmentMaterialivSGIX" get-fragment-material-iv-sgix) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :dlflags
  ("notlistable") :glxflags ("ignore") :version ("1.0") :extension nil
  :glsflags ("get") :glsopcode ("0x01AE") :offset ("492"))) 
(defglextfun
 (("GetFragmentMaterialfvSGIX" get-fragment-material-fv-sgix) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :dlflags
  ("notlistable") :glxflags ("ignore") :version ("1.0") :extension nil
  :glsflags ("get") :glsopcode ("0x01AD") :offset ("491"))) 
(defglextfun
 (("GetFragmentLightivSGIX" get-fragment-light-iv-sgix) :args
  ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
   (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :dlflags
  ("notlistable") :glxflags ("ignore") :version ("1.0") :extension nil
  :glsflags ("get") :glsopcode ("0x01AC") :offset ("490"))) 
(defglextfun
 (("GetFragmentLightfvSGIX" get-fragment-light-fv-sgix) :args
  ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
   (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :dlflags
  ("notlistable") :glxflags ("ignore") :version ("1.0") :extension nil
  :glsflags ("get") :glsopcode ("0x01AB") :offset ("489"))) 
(defglextfun
 (("FragmentMaterialivSGIX" fragment-material-iv-sgix) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsopcode ("0x01AA") :offset ("488"))) 
(defglextfun
 (("FragmentMaterialiSGIX" fragment-material-i-sgix) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsopcode ("0x01A9") :offset ("487"))) 
(defglextfun
 (("FragmentMaterialfvSGIX" fragment-material-fv-sgix) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsopcode ("0x01A8") :offset ("486"))) 
(defglextfun
 (("FragmentMaterialfSGIX" fragment-material-f-sgix) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |pname| :type |MaterialParameter| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsopcode ("0x01A7") :offset ("485"))) 
(defglextfun
 (("FragmentLightModelivSGIX" fragment-light-model-iv-sgix) :args
  ((:name |pname| :type |FragmentLightModelParameterSGIX| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsflags ("gl-enum") :glsopcode ("0x01A6")
  :offset ("484"))) 
(defglextfun
 (("FragmentLightModeliSGIX" fragment-light-model-i-sgix) :args
  ((:name |pname| :type |FragmentLightModelParameterSGIX| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsflags ("gl-enum") :glsopcode ("0x01A5")
  :offset ("483"))) 
(defglextfun
 (("FragmentLightModelfvSGIX" fragment-light-model-fv-sgix) :args
  ((:name |pname| :type |FragmentLightModelParameterSGIX| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsflags ("gl-enum") :glsopcode ("0x01A4")
  :offset ("482"))) 
(defglextfun
 (("FragmentLightModelfSGIX" fragment-light-model-f-sgix) :args
  ((:name |pname| :type |FragmentLightModelParameterSGIX| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsflags ("gl-enum") :glsopcode ("0x01A3")
  :offset ("481"))) 
(defglextfun
 (("FragmentLightivSGIX" fragment-light-iv-sgix) :args
  ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
   (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
   (:name |params| :type |CheckedInt32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsopcode ("0x01A2") :offset ("480"))) 
(defglextfun
 (("FragmentLightiSGIX" fragment-light-i-sgix) :args
  ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
   (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
   (:name |param| :type |CheckedInt32| :direction :in))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsopcode ("0x01A1") :offset ("479"))) 
(defglextfun
 (("FragmentLightfvSGIX" fragment-light-fv-sgix) :args
  ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
   (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
   (:name |params| :type |CheckedFloat32| :direction :in :array t :size
    (|pname|)))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsopcode ("0x01A0") :offset ("478"))) 
(defglextfun
 (("FragmentLightfSGIX" fragment-light-f-sgix) :args
  ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
   (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
   (:name |param| :type |CheckedFloat32| :direction :in))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsopcode ("0x019F") :offset ("477"))) 
(defglextfun
 (("FragmentColorMaterialSGIX" fragment-color-material-sgix) :args
  ((:name |face| :type |MaterialFace| :direction :in)
   (:name |mode| :type |MaterialParameter| :direction :in))
  :return ("void") :category ("SGIX_fragment_lighting") :glxflags ("ignore")
  :version ("1.0") :extension nil :glsopcode ("0x019E") :offset ("476"))) 