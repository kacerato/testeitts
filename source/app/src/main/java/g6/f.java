package G6;

import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class f {
    private static final Cf.a $ENTRIES;
    private static final f[] $VALUES;
    public static final f LONG_LITERAL = new f("LONG_LITERAL", 0);
    public static final f INTEGER_LITERAL = new f("INTEGER_LITERAL", 1);
    public static final f FLOAT_LITERAL = new f("FLOAT_LITERAL", 2);
    public static final f DOUBLE_LITERAL = new f("DOUBLE_LITERAL", 3);
    public static final f ABSTRACT = new f("ABSTRACT", 4);
    public static final f BREAK = new f("BREAK", 5);
    public static final f CASE = new f("CASE", 6);
    public static final f CLASS = new f(SuffixConstants.EXTENSION_CLASS, 7);
    public static final f CONST = new f("CONST", 8);
    public static final f CONTINUE = new f("CONTINUE", 9);
    public static final f DEFAULT = new f("DEFAULT", 10);
    public static final f DO = new f("DO", 11);
    public static final f ELSE = new f("ELSE", 12);
    public static final f FINAL = new f("FINAL", 13);
    public static final f FINALLY = new f("FINALLY", 14);
    public static final f FOR = new f("FOR", 15);
    public static final f IF = new f("IF", 16);
    public static final f SWITCH = new f("SWITCH", 17);
    public static final f TRY = new f("TRY", 18);
    public static final f VOID = new f("VOID", 19);
    public static final f WHILE = new f("WHILE", 20);
    public static final f RETURN = new f("RETURN", 21);
    public static final f BOOLEAN = new f("BOOLEAN", 22);
    public static final f FLOAT = new f("FLOAT", 23);
    public static final f INT = new f("INT", 24);
    public static final f TRUE = new f("TRUE", 25);
    public static final f FALSE = new f("FALSE", 26);
    public static final f EQEQ = new f("EQEQ", 27);
    public static final f NOTEQ = new f("NOTEQ", 28);
    public static final f OROR = new f("OROR", 29);
    public static final f PLUSPLUS = new f("PLUSPLUS", 30);
    public static final f MINUSMINUS = new f("MINUSMINUS", 31);
    public static final f LT = new f("LT", 32);
    public static final f LTLT = new f("LTLT", 33);
    public static final f LTEQ = new f("LTEQ", 34);
    public static final f LTLTEQ = new f("LTLTEQ", 35);
    public static final f GT = new f("GT", 36);
    public static final f GTGT = new f("GTGT", 37);
    public static final f GTGTGT = new f("GTGTGT", 38);
    public static final f GTEQ = new f("GTEQ", 39);
    public static final f GTGTEQ = new f("GTGTEQ", 40);
    public static final f AND = new f("AND", 41);
    public static final f ANDAND = new f("ANDAND", 42);
    public static final f PLUSEQ = new f("PLUSEQ", 43);
    public static final f MINUSEQ = new f("MINUSEQ", 44);
    public static final f MULTEQ = new f("MULTEQ", 45);
    public static final f DIVEQ = new f("DIVEQ", 46);
    public static final f ANDEQ = new f("ANDEQ", 47);
    public static final f OREQ = new f("OREQ", 48);
    public static final f XOREQ = new f("XOREQ", 49);
    public static final f MODEQ = new f("MODEQ", 50);
    public static final f LPAREN = new f("LPAREN", 51);
    public static final f RPAREN = new f("RPAREN", 52);
    public static final f LBRACE = new f("LBRACE", 53);
    public static final f RBRACE = new f("RBRACE", 54);
    public static final f LBRACK = new f("LBRACK", 55);
    public static final f RBRACK = new f("RBRACK", 56);
    public static final f SEMICOLON = new f("SEMICOLON", 57);
    public static final f COMMA = new f("COMMA", 58);
    public static final f DOT = new f("DOT", 59);
    public static final f ELLIPSIS = new f("ELLIPSIS", 60);
    public static final f EQ = new f("EQ", 61);
    public static final f NOT = new f("NOT", 62);
    public static final f TILDE = new f("TILDE", 63);
    public static final f QUEST = new f("QUEST", 64);
    public static final f COLON = new f("COLON", 65);
    public static final f PLUS = new f("PLUS", 66);
    public static final f MINUS = new f("MINUS", 67);
    public static final f MULT = new f("MULT", 68);
    public static final f DIV = new f("DIV", 69);
    public static final f OR = new f("OR", 70);
    public static final f XOR = new f("XOR", 71);
    public static final f MOD = new f("MOD", 72);
    public static final f DOUBLE_COLON = new f("DOUBLE_COLON", 73);
    public static final f ARROW = new f("ARROW", 74);
    public static final f DOUBLE_QUOTED_STRING = new f("DOUBLE_QUOTED_STRING", 75);
    public static final f SINGLE_QUOTED_STRING = new f("SINGLE_QUOTED_STRING", 76);
    public static final f LINE_COMMENT = new f("LINE_COMMENT", 77);
    public static final f BLOCK_COMMENT = new f("BLOCK_COMMENT", 78);
    public static final f IDENTIFIER = new f("IDENTIFIER", 79);
    public static final f WHITESPACE = new f("WHITESPACE", 80);
    public static final f BAD_CHARACTER = new f("BAD_CHARACTER", 81);
    public static final f EOF = new f("EOF", 82);
    public static final f UNIFORM = new f("UNIFORM", 83);
    public static final f VERSION = new f("VERSION", 84);
    public static final f PRECISION = new f("PRECISION", 85);
    public static final f IN = new f("IN", 86);
    public static final f OUT = new f("OUT", 87);

    static {
        f[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public f(String str, int i10) {
    }

    public static final f[] a() {
        return new f[]{LONG_LITERAL, INTEGER_LITERAL, FLOAT_LITERAL, DOUBLE_LITERAL, ABSTRACT, BREAK, CASE, CLASS, CONST, CONTINUE, DEFAULT, DO, ELSE, FINAL, FINALLY, FOR, IF, SWITCH, TRY, VOID, WHILE, RETURN, BOOLEAN, FLOAT, INT, TRUE, FALSE, EQEQ, NOTEQ, OROR, PLUSPLUS, MINUSMINUS, LT, LTLT, LTEQ, LTLTEQ, GT, GTGT, GTGTGT, GTEQ, GTGTEQ, AND, ANDAND, PLUSEQ, MINUSEQ, MULTEQ, DIVEQ, ANDEQ, OREQ, XOREQ, MODEQ, LPAREN, RPAREN, LBRACE, RBRACE, LBRACK, RBRACK, SEMICOLON, COMMA, DOT, ELLIPSIS, EQ, NOT, TILDE, QUEST, COLON, PLUS, MINUS, MULT, DIV, OR, XOR, MOD, DOUBLE_COLON, ARROW, DOUBLE_QUOTED_STRING, SINGLE_QUOTED_STRING, LINE_COMMENT, BLOCK_COMMENT, IDENTIFIER, WHITESPACE, BAD_CHARACTER, EOF, UNIFORM, VERSION, PRECISION, IN, OUT};
    }

    @NotNull
    public static Cf.a<f> b() {
        return $ENTRIES;
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) $VALUES.clone();
    }
}
