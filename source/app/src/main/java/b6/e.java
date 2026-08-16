package B6;

import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class e {
    private static final Cf.a $ENTRIES;
    private static final e[] $VALUES;
    public static final e LONG_LITERAL = new e("LONG_LITERAL", 0);
    public static final e INTEGER_LITERAL = new e("INTEGER_LITERAL", 1);
    public static final e FLOAT_LITERAL = new e("FLOAT_LITERAL", 2);
    public static final e DOUBLE_LITERAL = new e("DOUBLE_LITERAL", 3);
    public static final e ABSTRACT = new e("ABSTRACT", 4);
    public static final e BREAK = new e("BREAK", 5);
    public static final e CASE = new e("CASE", 6);
    public static final e CLASS = new e(SuffixConstants.EXTENSION_CLASS, 7);
    public static final e CONST = new e("CONST", 8);
    public static final e CONTINUE = new e("CONTINUE", 9);
    public static final e DEFAULT = new e("DEFAULT", 10);
    public static final e DO = new e("DO", 11);
    public static final e ELSE = new e("ELSE", 12);
    public static final e FINAL = new e("FINAL", 13);
    public static final e FINALLY = new e("FINALLY", 14);
    public static final e FOR = new e("FOR", 15);
    public static final e IF = new e("IF", 16);
    public static final e SWITCH = new e("SWITCH", 17);
    public static final e TRY = new e("TRY", 18);
    public static final e VOID = new e("VOID", 19);
    public static final e WHILE = new e("WHILE", 20);
    public static final e RETURN = new e("RETURN", 21);
    public static final e BOOLEAN = new e("BOOLEAN", 22);
    public static final e FLOAT = new e("FLOAT", 23);
    public static final e INT = new e("INT", 24);
    public static final e TRUE = new e("TRUE", 25);
    public static final e FALSE = new e("FALSE", 26);
    public static final e EQEQ = new e("EQEQ", 27);
    public static final e NOTEQ = new e("NOTEQ", 28);
    public static final e OROR = new e("OROR", 29);
    public static final e PLUSPLUS = new e("PLUSPLUS", 30);
    public static final e MINUSMINUS = new e("MINUSMINUS", 31);
    public static final e LT = new e("LT", 32);
    public static final e LTLT = new e("LTLT", 33);
    public static final e LTEQ = new e("LTEQ", 34);
    public static final e LTLTEQ = new e("LTLTEQ", 35);
    public static final e GT = new e("GT", 36);
    public static final e GTGT = new e("GTGT", 37);
    public static final e GTGTGT = new e("GTGTGT", 38);
    public static final e GTEQ = new e("GTEQ", 39);
    public static final e GTGTEQ = new e("GTGTEQ", 40);
    public static final e AND = new e("AND", 41);
    public static final e ANDAND = new e("ANDAND", 42);
    public static final e PLUSEQ = new e("PLUSEQ", 43);
    public static final e MINUSEQ = new e("MINUSEQ", 44);
    public static final e MULTEQ = new e("MULTEQ", 45);
    public static final e DIVEQ = new e("DIVEQ", 46);
    public static final e ANDEQ = new e("ANDEQ", 47);
    public static final e OREQ = new e("OREQ", 48);
    public static final e XOREQ = new e("XOREQ", 49);
    public static final e MODEQ = new e("MODEQ", 50);
    public static final e LPAREN = new e("LPAREN", 51);
    public static final e RPAREN = new e("RPAREN", 52);
    public static final e LBRACE = new e("LBRACE", 53);
    public static final e RBRACE = new e("RBRACE", 54);
    public static final e LBRACK = new e("LBRACK", 55);
    public static final e RBRACK = new e("RBRACK", 56);
    public static final e SEMICOLON = new e("SEMICOLON", 57);
    public static final e COMMA = new e("COMMA", 58);
    public static final e DOT = new e("DOT", 59);
    public static final e ELLIPSIS = new e("ELLIPSIS", 60);
    public static final e EQ = new e("EQ", 61);
    public static final e NOT = new e("NOT", 62);
    public static final e TILDE = new e("TILDE", 63);
    public static final e QUEST = new e("QUEST", 64);
    public static final e COLON = new e("COLON", 65);
    public static final e PLUS = new e("PLUS", 66);
    public static final e MINUS = new e("MINUS", 67);
    public static final e MULT = new e("MULT", 68);
    public static final e DIV = new e("DIV", 69);
    public static final e OR = new e("OR", 70);
    public static final e XOR = new e("XOR", 71);
    public static final e MOD = new e("MOD", 72);
    public static final e DOUBLE_COLON = new e("DOUBLE_COLON", 73);
    public static final e ARROW = new e("ARROW", 74);
    public static final e DOUBLE_QUOTED_STRING = new e("DOUBLE_QUOTED_STRING", 75);
    public static final e SINGLE_QUOTED_STRING = new e("SINGLE_QUOTED_STRING", 76);
    public static final e LINE_COMMENT = new e("LINE_COMMENT", 77);
    public static final e BLOCK_COMMENT = new e("BLOCK_COMMENT", 78);
    public static final e IDENTIFIER = new e("IDENTIFIER", 79);
    public static final e WHITESPACE = new e("WHITESPACE", 80);
    public static final e BAD_CHARACTER = new e("BAD_CHARACTER", 81);
    public static final e EOF = new e("EOF", 82);
    public static final e UNIFORM = new e("UNIFORM", 83);
    public static final e VERSION = new e("VERSION", 84);
    public static final e PRECISION = new e("PRECISION", 85);
    public static final e IN = new e("IN", 86);
    public static final e OUT = new e("OUT", 87);

    static {
        e[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public e(String str, int i10) {
    }

    public static final e[] a() {
        return new e[]{LONG_LITERAL, INTEGER_LITERAL, FLOAT_LITERAL, DOUBLE_LITERAL, ABSTRACT, BREAK, CASE, CLASS, CONST, CONTINUE, DEFAULT, DO, ELSE, FINAL, FINALLY, FOR, IF, SWITCH, TRY, VOID, WHILE, RETURN, BOOLEAN, FLOAT, INT, TRUE, FALSE, EQEQ, NOTEQ, OROR, PLUSPLUS, MINUSMINUS, LT, LTLT, LTEQ, LTLTEQ, GT, GTGT, GTGTGT, GTEQ, GTGTEQ, AND, ANDAND, PLUSEQ, MINUSEQ, MULTEQ, DIVEQ, ANDEQ, OREQ, XOREQ, MODEQ, LPAREN, RPAREN, LBRACE, RBRACE, LBRACK, RBRACK, SEMICOLON, COMMA, DOT, ELLIPSIS, EQ, NOT, TILDE, QUEST, COLON, PLUS, MINUS, MULT, DIV, OR, XOR, MOD, DOUBLE_COLON, ARROW, DOUBLE_QUOTED_STRING, SINGLE_QUOTED_STRING, LINE_COMMENT, BLOCK_COMMENT, IDENTIFIER, WHITESPACE, BAD_CHARACTER, EOF, UNIFORM, VERSION, PRECISION, IN, OUT};
    }

    @NotNull
    public static Cf.a<e> b() {
        return $ENTRIES;
    }

    public static e valueOf(String str) {
        return (e) Enum.valueOf(e.class, str);
    }

    public static e[] values() {
        return (e[]) $VALUES.clone();
    }
}
