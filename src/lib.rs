#[cfg(any(target_os = "android", target_os = "ios"))]
mod ffi;
#[cfg(any(target_os = "android", target_os = "ios"))]
pub use ffi::*;
