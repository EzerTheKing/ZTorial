// --------------------------- Comments --------------------------- //

print("Hello, {s}\n", .{"Zig.!"});
// Hello Zig.!

// --------------------------- Doc Comments --------------------------- //

// A doc comment is one that begins with exactly three slashes (i.e. /// but not ////);
// multiple doc comments in a row are merged together to form a multiline doc comment.
// The doc comment documents whatever immediately follows it.
/// Comment Doc
const a: i5 = 0;

// Doc comments are only allowed in certain places; it is a compile
// error to have a doc comment in an unexpected place, such as in the middle of an expression,
// or just before a non-doc comment.
/// doc-comment // ERROR.!
//! top-level doc-comment
const std = @import("std");

fn base() void {
    /// End of file
}

// ---------------------------Top-Level Doc Comments --------------------------- //

//  A top-level doc comment is one that begins with two slashes and an exclamation point: //!; it documents the current module.
// It is a compile error if a top-level doc comment is not placed at the start of a container, before any expressions.

//! This module provides functions for retrieving the current date and
//! time with varying degrees of precision and accuracy. It does not
//! depend on libc, but will use functions from it if available.

fn cat() void{
    //! Top level comments are allowed inside a container other than a module,
    //! but it is not very useful.  Currently, when producing the package
    //! documentation, these comments are ignored.
};
