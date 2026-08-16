package org.blacksquircle.ui.language.java.lexer;

import Cf.a;
import Cf.c;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class JavaToken {
    private static final a $ENTRIES;
    private static final JavaToken[] $VALUES;
    public static final JavaToken LONG_LITERAL = new JavaToken("LONG_LITERAL", 0);
    public static final JavaToken INTEGER_LITERAL = new JavaToken("INTEGER_LITERAL", 1);
    public static final JavaToken FLOAT_LITERAL = new JavaToken("FLOAT_LITERAL", 2);
    public static final JavaToken DOUBLE_LITERAL = new JavaToken("DOUBLE_LITERAL", 3);
    public static final JavaToken ABSTRACT = new JavaToken("ABSTRACT", 4);
    public static final JavaToken ASSERT = new JavaToken("ASSERT", 5);
    public static final JavaToken BREAK = new JavaToken("BREAK", 6);
    public static final JavaToken CASE = new JavaToken("CASE", 7);
    public static final JavaToken CATCH = new JavaToken("CATCH", 8);
    public static final JavaToken CLASS = new JavaToken(SuffixConstants.EXTENSION_CLASS, 9);
    public static final JavaToken CONST = new JavaToken("CONST", 10);
    public static final JavaToken CONTINUE = new JavaToken("CONTINUE", 11);
    public static final JavaToken DEFAULT = new JavaToken("DEFAULT", 12);
    public static final JavaToken DO = new JavaToken("DO", 13);
    public static final JavaToken ELSE = new JavaToken("ELSE", 14);
    public static final JavaToken ENUM = new JavaToken("ENUM", 15);
    public static final JavaToken EXTENDS = new JavaToken("EXTENDS", 16);
    public static final JavaToken FINAL = new JavaToken("FINAL", 17);
    public static final JavaToken FINALLY = new JavaToken("FINALLY", 18);
    public static final JavaToken FOR = new JavaToken("FOR", 19);
    public static final JavaToken GOTO = new JavaToken("GOTO", 20);
    public static final JavaToken IF = new JavaToken("IF", 21);
    public static final JavaToken IMPLEMENTS = new JavaToken("IMPLEMENTS", 22);
    public static final JavaToken IMPORT = new JavaToken("IMPORT", 23);
    public static final JavaToken INSTANCEOF = new JavaToken("INSTANCEOF", 24);
    public static final JavaToken INTERFACE = new JavaToken("INTERFACE", 25);
    public static final JavaToken NATIVE = new JavaToken("NATIVE", 26);
    public static final JavaToken NEW = new JavaToken("NEW", 27);
    public static final JavaToken PACKAGE = new JavaToken("PACKAGE", 28);
    public static final JavaToken PRIVATE = new JavaToken("PRIVATE", 29);
    public static final JavaToken PROTECTED = new JavaToken("PROTECTED", 30);
    public static final JavaToken PUBLIC = new JavaToken("PUBLIC", 31);
    public static final JavaToken STATIC = new JavaToken("STATIC", 32);
    public static final JavaToken STRICTFP = new JavaToken("STRICTFP", 33);
    public static final JavaToken SUPER = new JavaToken("SUPER", 34);
    public static final JavaToken SWITCH = new JavaToken("SWITCH", 35);
    public static final JavaToken SYNCHRONIZED = new JavaToken("SYNCHRONIZED", 36);
    public static final JavaToken THIS = new JavaToken("THIS", 37);
    public static final JavaToken THROW = new JavaToken("THROW", 38);
    public static final JavaToken THROWS = new JavaToken("THROWS", 39);
    public static final JavaToken TRANSIENT = new JavaToken("TRANSIENT", 40);
    public static final JavaToken TRY = new JavaToken("TRY", 41);
    public static final JavaToken VOID = new JavaToken("VOID", 42);
    public static final JavaToken VOLATILE = new JavaToken("VOLATILE", 43);
    public static final JavaToken WHILE = new JavaToken("WHILE", 44);
    public static final JavaToken RETURN = new JavaToken("RETURN", 45);
    public static final JavaToken BOOLEAN = new JavaToken("BOOLEAN", 46);
    public static final JavaToken BYTE = new JavaToken("BYTE", 47);
    public static final JavaToken CHAR = new JavaToken("CHAR", 48);
    public static final JavaToken DOUBLE = new JavaToken("DOUBLE", 49);
    public static final JavaToken FLOAT = new JavaToken("FLOAT", 50);
    public static final JavaToken INT = new JavaToken("INT", 51);
    public static final JavaToken LONG = new JavaToken("LONG", 52);
    public static final JavaToken SHORT = new JavaToken("SHORT", 53);
    public static final JavaToken TRUE = new JavaToken("TRUE", 54);
    public static final JavaToken FALSE = new JavaToken("FALSE", 55);
    public static final JavaToken NULL = new JavaToken("NULL", 56);
    public static final JavaToken EQEQ = new JavaToken("EQEQ", 57);
    public static final JavaToken NOTEQ = new JavaToken("NOTEQ", 58);
    public static final JavaToken OROR = new JavaToken("OROR", 59);
    public static final JavaToken PLUSPLUS = new JavaToken("PLUSPLUS", 60);
    public static final JavaToken MINUSMINUS = new JavaToken("MINUSMINUS", 61);
    public static final JavaToken LT = new JavaToken("LT", 62);
    public static final JavaToken LTLT = new JavaToken("LTLT", 63);
    public static final JavaToken LTEQ = new JavaToken("LTEQ", 64);
    public static final JavaToken LTLTEQ = new JavaToken("LTLTEQ", 65);
    public static final JavaToken GT = new JavaToken("GT", 66);
    public static final JavaToken GTGT = new JavaToken("GTGT", 67);
    public static final JavaToken GTGTGT = new JavaToken("GTGTGT", 68);
    public static final JavaToken GTEQ = new JavaToken("GTEQ", 69);
    public static final JavaToken GTGTEQ = new JavaToken("GTGTEQ", 70);
    public static final JavaToken AND = new JavaToken("AND", 71);
    public static final JavaToken ANDAND = new JavaToken("ANDAND", 72);
    public static final JavaToken PLUSEQ = new JavaToken("PLUSEQ", 73);
    public static final JavaToken MINUSEQ = new JavaToken("MINUSEQ", 74);
    public static final JavaToken MULTEQ = new JavaToken("MULTEQ", 75);
    public static final JavaToken DIVEQ = new JavaToken("DIVEQ", 76);
    public static final JavaToken ANDEQ = new JavaToken("ANDEQ", 77);
    public static final JavaToken OREQ = new JavaToken("OREQ", 78);
    public static final JavaToken XOREQ = new JavaToken("XOREQ", 79);
    public static final JavaToken MODEQ = new JavaToken("MODEQ", 80);
    public static final JavaToken LPAREN = new JavaToken("LPAREN", 81);
    public static final JavaToken RPAREN = new JavaToken("RPAREN", 82);
    public static final JavaToken LBRACE = new JavaToken("LBRACE", 83);
    public static final JavaToken RBRACE = new JavaToken("RBRACE", 84);
    public static final JavaToken LBRACK = new JavaToken("LBRACK", 85);
    public static final JavaToken RBRACK = new JavaToken("RBRACK", 86);
    public static final JavaToken SEMICOLON = new JavaToken("SEMICOLON", 87);
    public static final JavaToken COMMA = new JavaToken("COMMA", 88);
    public static final JavaToken DOT = new JavaToken("DOT", 89);
    public static final JavaToken ELLIPSIS = new JavaToken("ELLIPSIS", 90);
    public static final JavaToken EQ = new JavaToken("EQ", 91);
    public static final JavaToken NOT = new JavaToken("NOT", 92);
    public static final JavaToken TILDE = new JavaToken("TILDE", 93);
    public static final JavaToken QUEST = new JavaToken("QUEST", 94);
    public static final JavaToken COLON = new JavaToken("COLON", 95);
    public static final JavaToken PLUS = new JavaToken("PLUS", 96);
    public static final JavaToken MINUS = new JavaToken("MINUS", 97);
    public static final JavaToken MULT = new JavaToken("MULT", 98);
    public static final JavaToken DIV = new JavaToken("DIV", 99);
    public static final JavaToken OR = new JavaToken("OR", 100);
    public static final JavaToken XOR = new JavaToken("XOR", 101);
    public static final JavaToken MOD = new JavaToken("MOD", 102);
    public static final JavaToken DOUBLE_COLON = new JavaToken("DOUBLE_COLON", 103);
    public static final JavaToken ARROW = new JavaToken("ARROW", 104);
    public static final JavaToken ANNOTATION = new JavaToken("ANNOTATION", 105);
    public static final JavaToken DOUBLE_QUOTED_STRING = new JavaToken("DOUBLE_QUOTED_STRING", 106);
    public static final JavaToken SINGLE_QUOTED_STRING = new JavaToken("SINGLE_QUOTED_STRING", 107);
    public static final JavaToken LINE_COMMENT = new JavaToken("LINE_COMMENT", 108);
    public static final JavaToken BLOCK_COMMENT = new JavaToken("BLOCK_COMMENT", 109);
    public static final JavaToken IDENTIFIER = new JavaToken("IDENTIFIER", 110);
    public static final JavaToken WHITESPACE = new JavaToken("WHITESPACE", 111);
    public static final JavaToken BAD_CHARACTER = new JavaToken("BAD_CHARACTER", 112);
    public static final JavaToken EOF = new JavaToken("EOF", 113);

    private static final JavaToken[] $values() {
        return new JavaToken[]{LONG_LITERAL, INTEGER_LITERAL, FLOAT_LITERAL, DOUBLE_LITERAL, ABSTRACT, ASSERT, BREAK, CASE, CATCH, CLASS, CONST, CONTINUE, DEFAULT, DO, ELSE, ENUM, EXTENDS, FINAL, FINALLY, FOR, GOTO, IF, IMPLEMENTS, IMPORT, INSTANCEOF, INTERFACE, NATIVE, NEW, PACKAGE, PRIVATE, PROTECTED, PUBLIC, STATIC, STRICTFP, SUPER, SWITCH, SYNCHRONIZED, THIS, THROW, THROWS, TRANSIENT, TRY, VOID, VOLATILE, WHILE, RETURN, BOOLEAN, BYTE, CHAR, DOUBLE, FLOAT, INT, LONG, SHORT, TRUE, FALSE, NULL, EQEQ, NOTEQ, OROR, PLUSPLUS, MINUSMINUS, LT, LTLT, LTEQ, LTLTEQ, GT, GTGT, GTGTGT, GTEQ, GTGTEQ, AND, ANDAND, PLUSEQ, MINUSEQ, MULTEQ, DIVEQ, ANDEQ, OREQ, XOREQ, MODEQ, LPAREN, RPAREN, LBRACE, RBRACE, LBRACK, RBRACK, SEMICOLON, COMMA, DOT, ELLIPSIS, EQ, NOT, TILDE, QUEST, COLON, PLUS, MINUS, MULT, DIV, OR, XOR, MOD, DOUBLE_COLON, ARROW, ANNOTATION, DOUBLE_QUOTED_STRING, SINGLE_QUOTED_STRING, LINE_COMMENT, BLOCK_COMMENT, IDENTIFIER, WHITESPACE, BAD_CHARACTER, EOF};
    }

    static {
        JavaToken[] $values = $values();
        $VALUES = $values;
        $ENTRIES = c.c($values);
    }

    private JavaToken(String str, int i10) {
    }

    @NotNull
    public static a<JavaToken> getEntries() {
        return $ENTRIES;
    }

    public static JavaToken valueOf(String str) {
        return (JavaToken) Enum.valueOf(JavaToken.class, str);
    }

    public static JavaToken[] values() {
        return (JavaToken[]) $VALUES.clone();
    }
}
