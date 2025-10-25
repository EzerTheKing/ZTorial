const std = @import("std"); // std lib
const print = std.debug.print; // print text

pub fn main() !void { // main
    print("Hello, {s}\n", .{"Zig.!"}); // cteate consol text Hello, Zig.!
}
