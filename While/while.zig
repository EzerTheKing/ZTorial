const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var a: i7 = 1; // a = 8

    while (a <= 8) { // a = 8 > true
        print("While a:{}\n", .{a});
        a += 1;
        if (a == 8) { // if | else a = 8 > print("End of the cycle.!")
            print("End of the cycle.!", .{});
        }
    }
}
