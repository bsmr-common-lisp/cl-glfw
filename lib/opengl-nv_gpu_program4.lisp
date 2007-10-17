
(in-package #:gl) 

;;;; NV_gpu_program4

(defconstant +min-program-texel-offset-nv+ #x8904) 
(defconstant +max-program-texel-offset-nv+ #x8905) 
(defconstant +program-attrib-components-nv+ #x8906) 
(defconstant +program-result-components-nv+ #x8907) 
(defconstant +max-program-attrib-components-nv+ #x8908) 
(defconstant +max-program-result-components-nv+ #x8909) 
(defconstant +max-program-generic-attribs-nv+ #x8DA5) 
(defconstant +max-program-generic-results-nv+ #x8DA6) 
(defglextfun
 (("GetProgramEnvParameterIuivNV" get-program-env-parameter-i-uiv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |UInt32| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("NV_gpu_program4")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV50") :glfflags ("ignore")
  :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("GetProgramEnvParameterIivNV" get-program-env-parameter-i-iv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("NV_gpu_program4")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV50") :glfflags ("ignore")
  :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("GetProgramLocalParameterIuivNV" get-program-local-parameter-i-uiv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |UInt32| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("NV_gpu_program4")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV50") :glfflags ("ignore")
  :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("GetProgramLocalParameterIivNV" get-program-local-parameter-i-iv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size #x4))
  :return ("void") :dlflags ("notlistable") :category ("NV_gpu_program4")
  :version ("1.3") :extension ("soft" "WINSOFT" "NV50") :glfflags ("ignore")
  :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("ProgramEnvParametersI4uivNV" program-env-parameters-i-4uiv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |params| :type |UInt32| :direction :in :array t :size count*4))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("ProgramEnvParameterI4uivNV" program-env-parameter-i-4uiv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |UInt32| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("ProgramEnvParameterI4uiNV" program-env-parameter-i-4ui-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |UInt32| :direction :in)
   (:name |y| :type |UInt32| :direction :in)
   (:name |z| :type |UInt32| :direction :in)
   (:name |w| :type |UInt32| :direction :in))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :vectorequiv
  ("ProgramEnvParameterI4uivNV") :glxvectorequiv ("ProgramEnvParameterI4uivNV")
  :extension ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("ProgramEnvParametersI4ivNV" program-env-parameters-i-4iv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |params| :type |Int32| :direction :in :array t :size count*4))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("ProgramEnvParameterI4ivNV" program-env-parameter-i-4iv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Int32| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("ProgramEnvParameterI4iNV" program-env-parameter-i-4i-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int32| :direction :in)
   (:name |y| :type |Int32| :direction :in)
   (:name |z| :type |Int32| :direction :in)
   (:name |w| :type |Int32| :direction :in))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :vectorequiv
  ("ProgramEnvParameterI4ivNV") :glxvectorequiv ("ProgramEnvParameterI4ivNV")
  :extension ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("ProgramLocalParametersI4uivNV" program-local-parameters-i-4uiv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |params| :type |UInt32| :direction :in :array t :size count*4))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("ProgramLocalParameterI4uivNV" program-local-parameter-i-4uiv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |UInt32| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("ProgramLocalParameterI4uiNV" program-local-parameter-i-4ui-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |UInt32| :direction :in)
   (:name |y| :type |UInt32| :direction :in)
   (:name |z| :type |UInt32| :direction :in)
   (:name |w| :type |UInt32| :direction :in))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :vectorequiv
  ("ProgramLocalParameterI4uivNV") :glxvectorequiv
  ("ProgramLocalParameterI4uivNV") :extension ("soft" "WINSOFT" "NV50")
  :glfflags ("ignore") :glsflags ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("ProgramLocalParametersI4ivNV" program-local-parameters-i-4iv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |params| :type |Int32| :direction :in :array t :size count*4))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("ProgramLocalParameterI4ivNV" program-local-parameter-i-4iv-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |params| :type |Int32| :direction :in :array t :size #x4))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :extension
  ("soft" "WINSOFT" "NV50") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("ProgramLocalParameterI4iNV" program-local-parameter-i-4i-nv) :args
  ((:name |target| :type |ProgramTarget| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |x| :type |Int32| :direction :in)
   (:name |y| :type |Int32| :direction :in)
   (:name |z| :type |Int32| :direction :in)
   (:name |w| :type |Int32| :direction :in))
  :return ("void") :category ("NV_gpu_program4") :version ("1.3") :vectorequiv
  ("ProgramLocalParameterI4ivNV") :glxvectorequiv
  ("ProgramLocalParameterI4ivNV") :extension ("soft" "WINSOFT" "NV50")
  :glfflags ("ignore") :glsflags ("ignore") :glxflags ("ignore"))) 