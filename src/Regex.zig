const std = @import("std");
pub fn compile(alloc: std.mem.Allocator, pattern: []const u8) Regex {
    //"([a-zA-Z_]\\w*|@\\\".+\\\")\\s*(:)\\s*";
    var prev: ?u8 = null;
    var parts = std.ArrayList(RegexPart).init(alloc);
    var state = std.ArrayList(State).init(alloc);
    defer state.deinit();
    for (pattern) |p, idx| {
        defer prev = p;

        switch (p) {
            '(' => {
                try state.append(.{startGroup});
            },
            ')' => {
                const s = state.popOrNull();
            },
        }
    }
}
