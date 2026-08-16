package org.blacksquircle.ui.language.lua.lexer;

import Cf.a;
import Cf.c;
import android.provider.CalendarContract;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class LuaToken {
    private static final a $ENTRIES;
    private static final LuaToken[] $VALUES;
    public static final LuaToken LONG_LITERAL = new LuaToken("LONG_LITERAL", 0);
    public static final LuaToken INTEGER_LITERAL = new LuaToken("INTEGER_LITERAL", 1);
    public static final LuaToken FLOAT_LITERAL = new LuaToken("FLOAT_LITERAL", 2);
    public static final LuaToken DOUBLE_LITERAL = new LuaToken("DOUBLE_LITERAL", 3);
    public static final LuaToken BREAK = new LuaToken("BREAK", 4);
    public static final LuaToken DO = new LuaToken("DO", 5);
    public static final LuaToken ELSE = new LuaToken("ELSE", 6);
    public static final LuaToken ELSEIF = new LuaToken("ELSEIF", 7);
    public static final LuaToken END = new LuaToken("END", 8);
    public static final LuaToken FOR = new LuaToken("FOR", 9);
    public static final LuaToken FUNCTION = new LuaToken("FUNCTION", 10);
    public static final LuaToken GOTO = new LuaToken("GOTO", 11);
    public static final LuaToken IF = new LuaToken("IF", 12);
    public static final LuaToken IN = new LuaToken("IN", 13);
    public static final LuaToken LOCAL = new LuaToken(CalendarContract.ACCOUNT_TYPE_LOCAL, 14);
    public static final LuaToken NIL = new LuaToken("NIL", 15);
    public static final LuaToken REPEAT = new LuaToken("REPEAT", 16);
    public static final LuaToken RETURN = new LuaToken("RETURN", 17);
    public static final LuaToken THEN = new LuaToken("THEN", 18);
    public static final LuaToken UNTIL = new LuaToken("UNTIL", 19);
    public static final LuaToken WHILE = new LuaToken("WHILE", 20);
    public static final LuaToken AND = new LuaToken("AND", 21);
    public static final LuaToken OR = new LuaToken("OR", 22);
    public static final LuaToken NOT = new LuaToken("NOT", 23);
    public static final LuaToken TRUE = new LuaToken("TRUE", 24);
    public static final LuaToken FALSE = new LuaToken("FALSE", 25);
    public static final LuaToken NULL = new LuaToken("NULL", 26);
    public static final LuaToken _G = new LuaToken("_G", 27);
    public static final LuaToken _VERSION = new LuaToken("_VERSION", 28);
    public static final LuaToken ASSERT = new LuaToken("ASSERT", 29);
    public static final LuaToken COLLECTGARBAGE = new LuaToken("COLLECTGARBAGE", 30);
    public static final LuaToken DOFILE = new LuaToken("DOFILE", 31);
    public static final LuaToken ERROR = new LuaToken("ERROR", 32);
    public static final LuaToken GETFENV = new LuaToken("GETFENV", 33);
    public static final LuaToken GETMETATABLE = new LuaToken("GETMETATABLE", 34);
    public static final LuaToken IPAIRS = new LuaToken("IPAIRS", 35);
    public static final LuaToken LOAD = new LuaToken("LOAD", 36);
    public static final LuaToken LOADFILE = new LuaToken("LOADFILE", 37);
    public static final LuaToken LOADSTRING = new LuaToken("LOADSTRING", 38);
    public static final LuaToken MODULE = new LuaToken("MODULE", 39);
    public static final LuaToken NEXT = new LuaToken("NEXT", 40);
    public static final LuaToken PAIRS = new LuaToken("PAIRS", 41);
    public static final LuaToken PCALL = new LuaToken("PCALL", 42);
    public static final LuaToken PRINT = new LuaToken("PRINT", 43);
    public static final LuaToken RAWEQUAL = new LuaToken("RAWEQUAL", 44);
    public static final LuaToken RAWGET = new LuaToken("RAWGET", 45);
    public static final LuaToken RAWSET = new LuaToken("RAWSET", 46);
    public static final LuaToken REQUIRE = new LuaToken("REQUIRE", 47);
    public static final LuaToken SELECT = new LuaToken("SELECT", 48);
    public static final LuaToken SETFENV = new LuaToken("SETFENV", 49);
    public static final LuaToken SETMETATABLE = new LuaToken("SETMETATABLE", 50);
    public static final LuaToken TONUMBER = new LuaToken("TONUMBER", 51);
    public static final LuaToken TOSTRING = new LuaToken("TOSTRING", 52);
    public static final LuaToken TYPE = new LuaToken("TYPE", 53);
    public static final LuaToken UNPACK = new LuaToken("UNPACK", 54);
    public static final LuaToken XPCALL = new LuaToken("XPCALL", 55);
    public static final LuaToken LPAREN = new LuaToken("LPAREN", 56);
    public static final LuaToken RPAREN = new LuaToken("RPAREN", 57);
    public static final LuaToken LBRACE = new LuaToken("LBRACE", 58);
    public static final LuaToken RBRACE = new LuaToken("RBRACE", 59);
    public static final LuaToken LBRACK = new LuaToken("LBRACK", 60);
    public static final LuaToken RBRACK = new LuaToken("RBRACK", 61);
    public static final LuaToken SEMICOLON = new LuaToken("SEMICOLON", 62);
    public static final LuaToken COMMA = new LuaToken("COMMA", 63);
    public static final LuaToken DOT = new LuaToken("DOT", 64);
    public static final LuaToken LT = new LuaToken("LT", 65);
    public static final LuaToken GT = new LuaToken("GT", 66);
    public static final LuaToken LTEQ = new LuaToken("LTEQ", 67);
    public static final LuaToken GTEQ = new LuaToken("GTEQ", 68);
    public static final LuaToken EQEQ = new LuaToken("EQEQ", 69);
    public static final LuaToken TILDEEQ = new LuaToken("TILDEEQ", 70);
    public static final LuaToken CONCAT = new LuaToken("CONCAT", 71);
    public static final LuaToken EQ = new LuaToken("EQ", 72);
    public static final LuaToken NOT_OPERATOR = new LuaToken("NOT_OPERATOR", 73);
    public static final LuaToken TILDE = new LuaToken("TILDE", 74);
    public static final LuaToken COLON = new LuaToken("COLON", 75);
    public static final LuaToken PLUS = new LuaToken("PLUS", 76);
    public static final LuaToken MINUS = new LuaToken("MINUS", 77);
    public static final LuaToken MULT = new LuaToken("MULT", 78);
    public static final LuaToken DIV = new LuaToken("DIV", 79);
    public static final LuaToken OR_OPERATOR = new LuaToken("OR_OPERATOR", 80);
    public static final LuaToken XOR = new LuaToken("XOR", 81);
    public static final LuaToken MOD = new LuaToken("MOD", 82);
    public static final LuaToken QUEST = new LuaToken("QUEST", 83);
    public static final LuaToken DOUBLE_QUOTED_STRING = new LuaToken("DOUBLE_QUOTED_STRING", 84);
    public static final LuaToken SINGLE_QUOTED_STRING = new LuaToken("SINGLE_QUOTED_STRING", 85);
    public static final LuaToken LINE_COMMENT = new LuaToken("LINE_COMMENT", 86);
    public static final LuaToken BLOCK_COMMENT = new LuaToken("BLOCK_COMMENT", 87);
    public static final LuaToken IDENTIFIER = new LuaToken("IDENTIFIER", 88);
    public static final LuaToken WHITESPACE = new LuaToken("WHITESPACE", 89);
    public static final LuaToken BAD_CHARACTER = new LuaToken("BAD_CHARACTER", 90);
    public static final LuaToken EOF = new LuaToken("EOF", 91);

    private static final LuaToken[] $values() {
        return new LuaToken[]{LONG_LITERAL, INTEGER_LITERAL, FLOAT_LITERAL, DOUBLE_LITERAL, BREAK, DO, ELSE, ELSEIF, END, FOR, FUNCTION, GOTO, IF, IN, LOCAL, NIL, REPEAT, RETURN, THEN, UNTIL, WHILE, AND, OR, NOT, TRUE, FALSE, NULL, _G, _VERSION, ASSERT, COLLECTGARBAGE, DOFILE, ERROR, GETFENV, GETMETATABLE, IPAIRS, LOAD, LOADFILE, LOADSTRING, MODULE, NEXT, PAIRS, PCALL, PRINT, RAWEQUAL, RAWGET, RAWSET, REQUIRE, SELECT, SETFENV, SETMETATABLE, TONUMBER, TOSTRING, TYPE, UNPACK, XPCALL, LPAREN, RPAREN, LBRACE, RBRACE, LBRACK, RBRACK, SEMICOLON, COMMA, DOT, LT, GT, LTEQ, GTEQ, EQEQ, TILDEEQ, CONCAT, EQ, NOT_OPERATOR, TILDE, COLON, PLUS, MINUS, MULT, DIV, OR_OPERATOR, XOR, MOD, QUEST, DOUBLE_QUOTED_STRING, SINGLE_QUOTED_STRING, LINE_COMMENT, BLOCK_COMMENT, IDENTIFIER, WHITESPACE, BAD_CHARACTER, EOF};
    }

    static {
        LuaToken[] $values = $values();
        $VALUES = $values;
        $ENTRIES = c.c($values);
    }

    private LuaToken(String str, int i10) {
    }

    @NotNull
    public static a<LuaToken> getEntries() {
        return $ENTRIES;
    }

    public static LuaToken valueOf(String str) {
        return (LuaToken) Enum.valueOf(LuaToken.class, str);
    }

    public static LuaToken[] values() {
        return (LuaToken[]) $VALUES.clone();
    }
}
