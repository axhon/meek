pub const TokenType = union(enum) {
    ILLEGAL: void,
    EOF: void,

    // identifiers + literals
    IDENT: []const u8,
    INT: i32,

    // operators
    ASSIGN: void,
    PLUS: void,

    // delimiters
    COMMA: void,
    SEMICOLON: void,

    PARENS_LEFT: void,
    PARENS_RIGHT: void,
    BRACE_LEFT: void,
    BRACE_RIGHT: void,

    // keywords
    FUNCTION: void,
    LET: void,
};

pub const Token = struct { type: TokenType, literal: []const u8 };
