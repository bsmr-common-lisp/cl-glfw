;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgix_fragment_lighting

(defconstant +current-raster-normal-sgix+ #x8406) 
(defconstant +current-raster-normal-sgix+ #x8406) 
(defglextfun "LightEnviSGIX" light-env-i-sgix :return "void" :args
 ((:name |pname| :type |LightEnvParameterSGIX| :direction :in)
  (:name |param| :type |CheckedInt32| :direction :in))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "GetFragmentMaterialivSGIX" get-fragment-material-iv-sgix :return
 "void" :args
 ((:name |face| :type |MaterialFace| :direction :in)
  (:name |pname| :type |MaterialParameter| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "GetFragmentMaterialfvSGIX" get-fragment-material-fv-sgix :return
 "void" :args
 ((:name |face| :type |MaterialFace| :direction :in)
  (:name |pname| :type |MaterialParameter| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "GetFragmentLightivSGIX" get-fragment-light-iv-sgix :return "void"
 :args
 ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
  (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "GetFragmentLightfvSGIX" get-fragment-light-fv-sgix :return "void"
 :args
 ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
  (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentMaterialivSGIX" fragment-material-iv-sgix :return "void"
 :args
 ((:name |face| :type |MaterialFace| :direction :in)
  (:name |pname| :type |MaterialParameter| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :in :array t :size
   (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentMaterialiSGIX" fragment-material-i-sgix :return "void"
 :args
 ((:name |face| :type |MaterialFace| :direction :in)
  (:name |pname| :type |MaterialParameter| :direction :in)
  (:name |param| :type |CheckedInt32| :direction :in))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentMaterialfvSGIX" fragment-material-fv-sgix :return "void"
 :args
 ((:name |face| :type |MaterialFace| :direction :in)
  (:name |pname| :type |MaterialParameter| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in :array t :size
   (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentMaterialfSGIX" fragment-material-f-sgix :return "void"
 :args
 ((:name |face| :type |MaterialFace| :direction :in)
  (:name |pname| :type |MaterialParameter| :direction :in)
  (:name |param| :type |CheckedFloat32| :direction :in))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentLightModelivSGIX" fragment-light-model-iv-sgix :return
 "void" :args
 ((:name |pname| :type |FragmentLightModelParameterSGIX| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :in :array t :size
   (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentLightModeliSGIX" fragment-light-model-i-sgix :return
 "void" :args
 ((:name |pname| :type |FragmentLightModelParameterSGIX| :direction :in)
  (:name |param| :type |CheckedInt32| :direction :in))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentLightModelfvSGIX" fragment-light-model-fv-sgix :return
 "void" :args
 ((:name |pname| :type |FragmentLightModelParameterSGIX| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in :array t :size
   (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentLightModelfSGIX" fragment-light-model-f-sgix :return
 "void" :args
 ((:name |pname| :type |FragmentLightModelParameterSGIX| :direction :in)
  (:name |param| :type |CheckedFloat32| :direction :in))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentLightivSGIX" fragment-light-iv-sgix :return "void" :args
 ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
  (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :in :array t :size
   (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentLightiSGIX" fragment-light-i-sgix :return "void" :args
 ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
  (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
  (:name |param| :type |CheckedInt32| :direction :in))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentLightfvSGIX" fragment-light-fv-sgix :return "void" :args
 ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
  (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in :array t :size
   (|pname|)))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentLightfSGIX" fragment-light-f-sgix :return "void" :args
 ((:name |light| :type |FragmentLightNameSGIX| :direction :in)
  (:name |pname| :type |FragmentLightParameterSGIX| :direction :in)
  (:name |param| :type |CheckedFloat32| :direction :in))
 :category "SGIX_fragment_lighting" :version "1.0") 
(defglextfun "FragmentColorMaterialSGIX" fragment-color-material-sgix :return
 "void" :args
 ((:name |face| :type |MaterialFace| :direction :in)
  (:name |mode| :type |MaterialParameter| :direction :in))
 :category "SGIX_fragment_lighting" :version "1.0") 
