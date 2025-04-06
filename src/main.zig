//! By convention, main.zig is where your main function lives in the case that
//! you are building an executable. If you are making a library, the convention
//! is to delete this file and start with root.zig instead.

pub fn main() !void {
    var data: [30_000]u8 = undefined;
    var data_pointer: u16 = 0;
}
