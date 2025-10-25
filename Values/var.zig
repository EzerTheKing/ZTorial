const std = @import("std");

// Use the const or var keyword to assign a value to an identifier (If you need a variable that you can modify, use the var keyword):

// --------------------------- var --------------------------- //
// A mutable variable.
// Memory is allocated where it is declared (stack, global memory, or heap allocator).
// The value can be overwritten any number of times during the variable's lifetime.
// When declared without an explicit type, the compiler infers the type from the assigned value, but the type remains fixed.

// --------------------------- const --------------------------- //
// An immutable variable.
// Once initialized, its value cannot be changed; attempting to assign a new value will result in a compilation error.
// If the value is known at compile time (for example, a literal), then const can become a compiler-defined constant, and its value will be inlined into the code rather than stored in memory.
// const is often used for function parameters, local constants, and global values that should not change.

// --------------------------- int --------------------------- //
const a: i5 = 0; // int i5-6-7-8-9-10.... (128) number of bytes
// const immutable variable

var A: i5 = 0; // int i5-6-7-8-9-10.... (128) number of bytes
// const mutable variable

// --------------------------- unsigned --------------------------- //
const b: u5 = 0; // unsigned value u5-6-7-8-9-10.... (128) number of bytes
// const static

var B: u5 = 0; // unsigned value u5-6-7-8-9-10.... (128) number of bytes
// const mutable variable

// --------------------------- float --------------------------- //
const n: f16 = 0.1; // float value f16-32-64-80-128 number of bytes
// const immutable variable

var N: f16 = 0.1; // float value f16-32-64-80-128 number of bytes
// const mutable variable

// --------------------------- bool --------------------------- //
//   const p: bool = true; // true or false
//  if (p){ // true
//
//  }else { // false
//
//  }

// --------------------------- function --------------------------- //
fn baseF() void {}

// --------------------------- base.! --------------------------- //
// true and false > bool values
// null > used to set an optional type to null
// undefined > used to leave a value unspecified

pub fn main() !void {
    a += 1; // ERROR.!
    A += 1; // Good.!

    b += 1; // ERROR.!
    B += 1; // Good.!

    baseF();
}
