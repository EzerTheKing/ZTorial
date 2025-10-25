const std = @import("std");
const BLD = *std.Build;

pub fn build(b: BLD) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{ // Main build
        .name = "app",
        .root_module = b.createModule(.{
            .root_source_file = b.path("While/while.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });

    b.installArtifact(exe);
}
