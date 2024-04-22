#![cfg_attr(not(target_os = "none"), allow(dead_code))]

cfg_if::cfg_if! {
    if #[cfg(any(target_arch = "x86", target_arch = "x86_64"))] {
        mod x86;
        pub use self::x86::*;
    }
}
