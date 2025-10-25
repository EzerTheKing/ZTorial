const print = @import("std").debug.print;

// A destructuring assignment can separate elements of indexable aggregate types (Tuples, Arrays, Vectors):
// Tuples > const tuple = .{ 7, 3, 1 };
// Array > const array = [_]u32{ 1, 2, 2 };
// Vectors > const vector: @Vector(3, u32) = .{ 2, 3, 8 };

// We assign values to these variables x, y, and z based on their order.
// In tuples, arrays, and vectors, the values are ordered one after the other,
// just like our variables (if you swap the variables, their results will change).
// I just wanted to clarify this in case...

pub fn main() void {
    var x: u32 = undefined;
    var y: u32 = undefined;
    var z: u32 = undefined;

    // Tuples
    const tuple = .{ 7, 3, 1 };

    x, y, z = tuple;

    print("tuple: x = {}, y = {}, z = {}\n", .{ x, y, z });

    // Array
    const array = [_]u32{ 1, 2, 2 };

    x, y, z = array;

    print("array: x = {}, y = {}, z = {}\n", .{ x, y, z });

    // Vectors
    const vector: @Vector(3, u32) = .{ 2, 3, 8 };

    x, y, z = vector;

    print("vector: x = {}, y = {}, z = {}\n", .{ x, y, z });

    // A destructuring expression may only appear within a block (i.e. not at container scope).
    // The left hand side of the assignment must consist of a comma separated list, each element of which may be either an lvalue
    // (for instance, an existing `var`) or a variable declaration:
    //    var x: u32 = undefined;
    //    const tuple = .{ 1, 2, 3 };
    //    x, var y: u32, const z = tuple;
    //    print("x = {}, y = {}, z = {}\n", .{ x, y, z });
    // y is mutable
    //    y = 100;
    // You can use _ to throw away unwanted values.
    //    _, x, _ = tuple;
    //    print("x = {}", .{x});
}
