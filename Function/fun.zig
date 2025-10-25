const std = @import("std");
const print = std.debug.print;

var z: i5 = 2; // variable 2
var f: i5 = 2; // variable 2

fn fon(a: i5, b: i5) i12 {
    return a + b;
}

pub fn main() !void { // public function main
    const g = fon(z, f);
    print("Values: {}\n", .{g}); // print variable
}
