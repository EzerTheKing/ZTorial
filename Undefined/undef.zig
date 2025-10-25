const print = @import("std").debug.print;

// Use undefined to leave variables uninitialized:
pub fn main() void {
    var x: i32 = undefined; // undefined
    x = 1;
    print("{d}\n", .{x}); // x = 1
}

// undefined can be coerced to any type. Once this happens,
// it is no longer possible to detect that the value is undefined.
// undefined means the value could be anything, even something that is nonsense according to the type. Translated into English,
// undefined means "Not a meaningful value. Using this value would be a bug. The value will be unused, or overwritten before being used."

// In Debug and ReleaseSafe mode, Zig writes 0xaa bytes to undefined memory.
// This is to catch bugs early, and to help detect use of undefined memory in a debugger. However, this behavior is only an implementation feature,
// not a language semantic, so it is not guaranteed to be observable to code.
