//! Platform-specific operations.

cfg_if::cfg_if! {
    if #[cfg(all(target_arch = "x86_64", platform_family = "x86-pc"))] {
        mod x86_pc;
        pub use self::x86_pc::*;
    } 
}
