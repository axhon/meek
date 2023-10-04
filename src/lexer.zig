const std = @import("std");
const token = @import("token.zig");

const expect = std.testing.expect;

test "lexer.nextToken()" {
    const input = "=+(){},;";
    _ = input;

    const tests = [_]struct { expectedType: token.TokenType, expectedLiteral: []const u8 }{ .{ .expectedLiteral = "=", .expectedType = token.TokenType.ASSIGN }, .{ .expectedLiteral = "+", .expectedType = token.TokenType.PLUS } };
    for (tests) |t| {
        try expect(@as(token.TokenType, t.expectedType) == token.TokenType.ASSIGN);
    }
}
