
(in-package #:gl) 

;;;; ARB_shader_objects

(defconstant +program-object-arb+ #x8B40) 
(defconstant +shader-object-arb+ #x8B48) 
(defconstant +object-type-arb+ #x8B4E) 
(defconstant +object-subtype-arb+ #x8B4F) 
(defconstant +float-vec2-arb+ #x8B50) 
(defconstant +float-vec3-arb+ #x8B51) 
(defconstant +float-vec4-arb+ #x8B52) 
(defconstant +int-vec2-arb+ #x8B53) 
(defconstant +int-vec3-arb+ #x8B54) 
(defconstant +int-vec4-arb+ #x8B55) 
(defconstant +bool-arb+ #x8B56) 
(defconstant +bool-vec2-arb+ #x8B57) 
(defconstant +bool-vec3-arb+ #x8B58) 
(defconstant +bool-vec4-arb+ #x8B59) 
(defconstant +float-mat2-arb+ #x8B5A) 
(defconstant +float-mat3-arb+ #x8B5B) 
(defconstant +float-mat4-arb+ #x8B5C) 
(defconstant +sampler-1d-arb+ #x8B5D) 
(defconstant +sampler-2d-arb+ #x8B5E) 
(defconstant +sampler-3d-arb+ #x8B5F) 
(defconstant +sampler-cube-arb+ #x8B60) 
(defconstant +sampler-1d-shadow-arb+ #x8B61) 
(defconstant +sampler-2d-shadow-arb+ #x8B62) 
(defconstant +sampler-2d-rect-arb+ #x8B63) 
(defconstant +sampler-2d-rect-shadow-arb+ #x8B64) 
(defconstant +object-delete-status-arb+ #x8B80) 
(defconstant +object-compile-status-arb+ #x8B81) 
(defconstant +object-link-status-arb+ #x8B82) 
(defconstant +object-validate-status-arb+ #x8B83) 
(defconstant +object-info-log-length-arb+ #x8B84) 
(defconstant +object-attached-objects-arb+ #x8B85) 
(defconstant +object-active-uniforms-arb+ #x8B86) 
(defconstant +object-active-uniform-max-length-arb+ #x8B87) 
(defconstant +object-shader-source-length-arb+ #x8B88) 
(defglextfun
 (("GetShaderSourceARB" get-shader-source-arb) :args
  ((:name |obj| :type |handleARB| :direction :in)
   (:name |maxLength| :type |SizeI| :direction :in)
   (:name |length| :type |SizeI| :direction :out :array t :size #x1)
   (:name |source| :type |charARB| :direction :out :array t :size length))
  :return ("void") :category ("ARB_shader_objects") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore") :alias
  ("GetShaderSource") :glsalias ("GetShaderSource"))) 
(defglextfun
 (("GetUniformivARB" get-uniform-iv-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)
   (:name |location| :type |Int32| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size location))
  :return ("void") :category ("ARB_shader_objects") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore") :alias
  ("GetUniformiv") :glsalias ("GetUniformiv"))) 
(defglextfun
 (("GetUniformfvARB" get-uniform-fv-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)
   (:name |location| :type |Int32| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size location))
  :return ("void") :category ("ARB_shader_objects") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore") :alias
  ("GetUniformfv") :glsalias ("GetUniformfv"))) 
(defglextfun
 (("GetActiveUniformARB" get-active-uniform-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |maxLength| :type |SizeI| :direction :in)
   (:name |length| :type |SizeI| :direction :out :array t :size #x1)
   (:name |size| :type |Int32| :direction :out :array t :size #x1)
   (:name |type| :type |GLenum| :direction :out :array t :size #x1)
   (:name |name| :type |charARB| :direction :out :array t))
  :return ("void") :category ("ARB_shader_objects") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore") :alias
  ("GetActiveUniform") :glsalias ("GetActiveUniform"))) 
(defglextfun
 (("GetUniformLocationARB" get-uniform-location-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)
   (:name |name| :type |charARB| :direction :in :array t))
  :return ("Int32") :category ("ARB_shader_objects") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore") :alias
  ("GetUniformLocation") :glsalias ("GetUniformLocation"))) 
(defglextfun
 (("GetAttachedObjectsARB" get-attached-objects-arb) :args
  ((:name |containerObj| :type |handleARB| :direction :in)
   (:name |maxCount| :type |SizeI| :direction :in)
   (:name |count| :type |SizeI| :direction :out :array t :size #x1)
   (:name |obj| :type |handleARB| :direction :out :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore") :alias
  ("GetAttachedShaders") :glsalias ("GetAttachedShaders"))) 
(defglextfun
 (("GetInfoLogARB" get-info-log-arb) :args
  ((:name |obj| :type |handleARB| :direction :in)
   (:name |maxLength| :type |SizeI| :direction :in)
   (:name |length| :type |SizeI| :direction :out :array t :size #x1)
   (:name |infoLog| :type |charARB| :direction :out :array t :size length))
  :return ("void") :category ("ARB_shader_objects") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("get") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("GetObjectParameterivARB" get-object-parameter-iv-arb) :args
  ((:name |obj| :type |handleARB| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size pname))
  :return ("void") :category ("ARB_shader_objects") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("get") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("GetObjectParameterfvARB" get-object-parameter-fv-arb) :args
  ((:name |obj| :type |handleARB| :direction :in)
   (:name |pname| :type |GLenum| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size pname))
  :return ("void") :category ("ARB_shader_objects") :dlflags ("notlistable")
  :version ("1.2") :extension nil :glxsingle ("?") :glxflags ("ignore")
  :glsflags ("get") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("UniformMatrix4fvARB" uniform-matrix-4fv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |transpose| :type |Boolean| :direction :in)
   (:name |value| :type |Float32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("UniformMatrix4fv")
  :glsalias ("UniformMatrix4fv"))) 
(defglextfun
 (("UniformMatrix3fvARB" uniform-matrix-3fv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |transpose| :type |Boolean| :direction :in)
   (:name |value| :type |Float32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("UniformMatrix3fv")
  :glsalias ("UniformMatrix3fv"))) 
(defglextfun
 (("UniformMatrix2fvARB" uniform-matrix-2fv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |transpose| :type |Boolean| :direction :in)
   (:name |value| :type |Float32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("UniformMatrix2fv")
  :glsalias ("UniformMatrix2fv"))) 
(defglextfun
 (("Uniform4ivARB" uniform-4iv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |Int32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform4iv") :glsalias
  ("Uniform4iv"))) 
(defglextfun
 (("Uniform3ivARB" uniform-3iv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |Int32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform3iv") :glsalias
  ("Uniform3iv"))) 
(defglextfun
 (("Uniform2ivARB" uniform-2iv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |Int32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform2iv") :glsalias
  ("Uniform2iv"))) 
(defglextfun
 (("Uniform1ivARB" uniform-1iv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |Int32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform1iv") :glsalias
  ("Uniform1iv"))) 
(defglextfun
 (("Uniform4fvARB" uniform-4fv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |Float32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform4fv") :glsalias
  ("Uniform4fv"))) 
(defglextfun
 (("Uniform3fvARB" uniform-3fv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |Float32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform3fv") :glsalias
  ("Uniform3fv"))) 
(defglextfun
 (("Uniform2fvARB" uniform-2fv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |Float32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform2fv") :glsalias
  ("Uniform2fv"))) 
(defglextfun
 (("Uniform1fvARB" uniform-1fv-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |Float32| :direction :in :array t :size count))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform1fv") :glsalias
  ("Uniform1fv"))) 
(defglextfun
 (("Uniform4iARB" uniform-4i-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |Int32| :direction :in)
   (:name |v1| :type |Int32| :direction :in)
   (:name |v2| :type |Int32| :direction :in)
   (:name |v3| :type |Int32| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform4i") :glsalias
  ("Uniform4i"))) 
(defglextfun
 (("Uniform3iARB" uniform-3i-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |Int32| :direction :in)
   (:name |v1| :type |Int32| :direction :in)
   (:name |v2| :type |Int32| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform3i") :glsalias
  ("Uniform3i"))) 
(defglextfun
 (("Uniform2iARB" uniform-2i-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |Int32| :direction :in)
   (:name |v1| :type |Int32| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform2i") :glsalias
  ("Uniform2i"))) 
(defglextfun
 (("Uniform1iARB" uniform-1i-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |Int32| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform1i") :glsalias
  ("Uniform1i"))) 
(defglextfun
 (("Uniform4fARB" uniform-4f-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |Float32| :direction :in)
   (:name |v1| :type |Float32| :direction :in)
   (:name |v2| :type |Float32| :direction :in)
   (:name |v3| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform4f") :glsalias
  ("Uniform4f"))) 
(defglextfun
 (("Uniform3fARB" uniform-3f-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |Float32| :direction :in)
   (:name |v1| :type |Float32| :direction :in)
   (:name |v2| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform3f") :glsalias
  ("Uniform3f"))) 
(defglextfun
 (("Uniform2fARB" uniform-2f-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |Float32| :direction :in)
   (:name |v1| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform2f") :glsalias
  ("Uniform2f"))) 
(defglextfun
 (("Uniform1fARB" uniform-1f-arb) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |Float32| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("Uniform1f") :glsalias
  ("Uniform1f"))) 
(defglextfun
 (("ValidateProgramARB" validate-program-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)) :return ("void")
  :category ("ARB_shader_objects") :version ("1.2") :extension nil :glxropcode
  ("?") :glxflags ("ignore") :alias ("ValidateProgram") :glsalias
  ("ValidateProgram"))) 
(defglextfun
 (("UseProgramObjectARB" use-program-object-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)) :return ("void")
  :category ("ARB_shader_objects") :version ("1.2") :extension nil :glxropcode
  ("?") :glxflags ("ignore") :alias ("UseProgram") :glsalias ("UseProgram"))) 
(defglextfun
 (("LinkProgramARB" link-program-arb) :args
  ((:name |programObj| :type |handleARB| :direction :in)) :return ("void")
  :category ("ARB_shader_objects") :version ("1.2") :extension nil :glxropcode
  ("?") :glxflags ("ignore") :alias ("LinkProgram") :glsalias ("LinkProgram"))) 
(defglextfun
 (("AttachObjectARB" attach-object-arb) :args
  ((:name |containerObj| :type |handleARB| :direction :in)
   (:name |obj| :type |handleARB| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("AttachShader") :glsalias
  ("AttachShader"))) 
(defglextfun
 (("CreateProgramObjectARB" create-program-object-arb) :args nil :return
  ("handleARB") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("CreateProgram") :glsalias
  ("CreateProgram"))) 
(defglextfun
 (("CompileShaderARB" compile-shader-arb) :args
  ((:name |shaderObj| :type |handleARB| :direction :in)) :return ("void")
  :category ("ARB_shader_objects") :version ("1.2") :extension nil :glxropcode
  ("?") :glxflags ("ignore") :alias ("CompileShader") :glsalias
  ("CompileShader"))) 
(defglextfun
 (("ShaderSourceARB" shader-source-arb) :args
  ((:name |shaderObj| :type |handleARB| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |string| :type |charPointerARB| :direction :in :array t :size count)
   (:name |length| :type |Int32| :direction :in :array t :size #x1))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("ShaderSource") :glsalias
  ("ShaderSource"))) 
(defglextfun
 (("CreateShaderObjectARB" create-shader-object-arb) :args
  ((:name |shaderType| :type |GLenum| :direction :in)) :return ("handleARB")
  :category ("ARB_shader_objects") :version ("1.2") :extension nil :glxropcode
  ("?") :glxflags ("ignore") :alias ("CreateShader") :glsalias
  ("CreateShader"))) 
(defglextfun
 (("DetachObjectARB" detach-object-arb) :args
  ((:name |containerObj| :type |handleARB| :direction :in)
   (:name |attachedObj| :type |handleARB| :direction :in))
  :return ("void") :category ("ARB_shader_objects") :version ("1.2") :extension
  nil :glxropcode ("?") :glxflags ("ignore") :alias ("DetachShader") :glsalias
  ("DetachShader"))) 
(defglextfun
 (("GetHandleARB" get-handle-arb) :args
  ((:name |pname| :type |GLenum| :direction :in)) :return ("handleARB")
  :category ("ARB_shader_objects") :dlflags ("notlistable") :version ("1.2")
  :extension nil :glxsingle ("?") :glxflags ("ignore") :glsflags ("get")
  :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("DeleteObjectARB" delete-object-arb) :args
  ((:name |obj| :type |handleARB| :direction :in)) :return ("void") :category
  ("ARB_shader_objects") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 