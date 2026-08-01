const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const multiline =
        \\hello
        \\\bar
    ;
    try stdout.print("Hello, {s}!\n", .{"world"});
    try stdout.print(multiline);
}
