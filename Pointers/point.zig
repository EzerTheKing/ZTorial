const std = @import("std");
const print = std.debug.print;

var z: i5 = 2; // variable 2

fn points(a: *i5) void { // point
    a.* += 1; // point a + 1
}

pub fn main() !void {
    points(&z); // peference, z = 3 (2 + 1 = 3)
    print("Values: {}\n", .{z}); // print variable
}

// Pointers work the same way as in C and C++
// (if you're familiar with them. If not, I recommend checking them out.)
// That's all I can say. (Sorry, I'm not very good at explaining all this; check the documentation.)
