pub fn char_to_token(src: u8) ?Token {
    return switch (src) {
        '<' => .left,
        '>' => .right,
        '+' => .inc,
        '-' => .sub,
        ',' => .input,
        '.' => .output,
        '[' => .loop,
        ']' => .loopback,
        else => null,
    };
}

const Token = enum {
    //
    left,
    right,
    inc,
    dec,
    input,
    output,
    loop,
    loopback,
};

const std = @import("std");

pub fn tokenize(src: []u8) std.ArrayList(Token) {
    var tokens: std.ArrayList(Token) = undefined;
    tokens.initCapacity(src.len / 2);

    for (src) |char| {
        if (char_to_token(char)) |token| {
            tokens.addOne(token);
        }
    }

    return tokens;
}
