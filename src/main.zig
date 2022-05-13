const std = @import("std");
const t = @import("tests.zig");

pub fn main() anyerror!void {
    for (t.tc) |tc| {
        std.log.info("tc:{s}", .{tc});
    }
    std.log.info("All your codebase are belong to us.", .{});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
