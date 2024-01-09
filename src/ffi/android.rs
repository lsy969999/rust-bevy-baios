use std::ffi::CString;

use jni::JNIEnv;
use jni::objects::{JClass, JString};
use jni::sys::jstring;

use super::android_ios::rust_greeting;

// #[no_mangle]
// pub extern fn rust_greeting2(to: *const c_char) -> *mut c_char{
//   let c_str = unsafe {
//     CStr::from_ptr(to)
//   };
//   let recipient = match c_str.to_str() {
//       Err(_) => "there",
//       Ok(string) => string,
//   };

//   CString::new("Hello ".to_owned() + recipient).unwrap().into_raw()
// }

#[no_mangle]
#[allow(non_snake_case)]
pub unsafe extern fn Java_com_example_sample_RustGreetings_greeting<'local>(
  mut env: JNIEnv<'local>,
  _class: JClass<'local>,
  input: JString<'local>
) -> jstring{
  let world = rust_greeting(env.get_string(&input).expect("invalid pattern string").as_ptr());
  let world_ptr = CString::from_raw(world);
  let output = env.new_string(world_ptr.to_str().unwrap()).expect("Couldn't create java string!");
  output.into_raw()
}