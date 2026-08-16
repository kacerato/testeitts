package com.github.javaparser;

import com.github.javaparser.utils.CodeGenerationUtils;
import com.github.javaparser.utils.LineSeparator;
import com.github.javaparser.utils.Utils;
import fd.C13208a;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import org.apache.commons.lang3.StringUtils;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class JavaToken {
    public static final JavaToken INVALID = new JavaToken();
    private int kind;
    private JavaToken nextToken;
    private JavaToken previousToken;
    private Range range;
    private String text;

    public enum Category {
        WHITESPACE_NO_EOL,
        EOL,
        COMMENT,
        IDENTIFIER,
        KEYWORD,
        LITERAL,
        SEPARATOR,
        OPERATOR;

        public boolean isComment() {
            return this == COMMENT;
        }

        public boolean isEndOfLine() {
            return this == EOL;
        }

        public boolean isIdentifier() {
            return this == IDENTIFIER;
        }

        public boolean isKeyword() {
            return this == KEYWORD;
        }

        public boolean isLiteral() {
            return this == LITERAL;
        }

        public boolean isOperator() {
            return this == OPERATOR;
        }

        public boolean isSeparator() {
            return this == SEPARATOR;
        }

        public boolean isWhitespace() {
            return this == WHITESPACE_NO_EOL || this == EOL;
        }

        public boolean isWhitespaceButNotEndOfLine() {
            return this == WHITESPACE_NO_EOL;
        }

        public boolean isWhitespaceOrComment() {
            return isWhitespace() || this == COMMENT;
        }
    }

    public enum Kind {
        EOF(0),
        SPACE(1),
        WINDOWS_EOL(2),
        UNIX_EOL(3),
        OLD_MAC_EOL(4),
        SINGLE_LINE_COMMENT(5),
        ENTER_JAVADOC_COMMENT(6),
        ENTER_MULTILINE_COMMENT(7),
        JAVADOC_COMMENT(8),
        MULTI_LINE_COMMENT(9),
        COMMENT_CONTENT(10),
        ABSTRACT(11),
        ASSERT(12),
        BOOLEAN(13),
        BREAK(14),
        BYTE(15),
        CASE(16),
        CATCH(17),
        CHAR(18),
        CLASS(19),
        CONST(20),
        CONTINUE(21),
        _DEFAULT(22),
        DO(23),
        DOUBLE(24),
        ELSE(25),
        ENUM(26),
        EXTENDS(27),
        FALSE(28),
        FINAL(29),
        FINALLY(30),
        FLOAT(31),
        FOR(32),
        GOTO(33),
        IF(34),
        IMPLEMENTS(35),
        IMPORT(36),
        INSTANCEOF(37),
        INT(38),
        INTERFACE(39),
        LONG(40),
        NATIVE(41),
        NEW(42),
        NON_SEALED(43),
        NULL(44),
        PACKAGE(45),
        PERMITS(46),
        PRIVATE(47),
        PROTECTED(48),
        PUBLIC(49),
        RECORD(50),
        RETURN(51),
        SEALED(52),
        SHORT(53),
        STATIC(54),
        STRICTFP(55),
        SUPER(56),
        SWITCH(57),
        SYNCHRONIZED(58),
        THIS(59),
        THROW(60),
        THROWS(61),
        TRANSIENT(62),
        TRUE(63),
        TRY(64),
        VOID(65),
        VOLATILE(66),
        WHILE(67),
        YIELD(68),
        REQUIRES(69),
        TO(70),
        WITH(71),
        OPEN(72),
        OPENS(73),
        USES(74),
        MODULE(75),
        EXPORTS(76),
        PROVIDES(77),
        TRANSITIVE(78),
        WHEN(79),
        LONG_LITERAL(80),
        INTEGER_LITERAL(81),
        DECIMAL_LITERAL(82),
        HEX_LITERAL(83),
        OCTAL_LITERAL(84),
        BINARY_LITERAL(85),
        FLOATING_POINT_LITERAL(86),
        DECIMAL_FLOATING_POINT_LITERAL(87),
        DECIMAL_EXPONENT(88),
        HEXADECIMAL_FLOATING_POINT_LITERAL(89),
        HEXADECIMAL_EXPONENT(90),
        HEX_DIGITS(91),
        UNICODE_ESCAPE(92),
        CHARACTER_LITERAL(93),
        STRING_LITERAL(94),
        ENTER_TEXT_BLOCK(95),
        TEXT_BLOCK_LITERAL(96),
        TEXT_BLOCK_CONTENT(97),
        IDENTIFIER(98),
        LETTER(99),
        PART_LETTER(100),
        LPAREN(101),
        RPAREN(102),
        LBRACE(103),
        RBRACE(104),
        LBRACKET(105),
        RBRACKET(106),
        SEMICOLON(107),
        COMMA(108),
        DOT(109),
        ELLIPSIS(110),
        AT(111),
        DOUBLECOLON(112),
        ASSIGN(113),
        LT(114),
        BANG(115),
        TILDE(116),
        HOOK(117),
        COLON(118),
        ARROW(119),
        EQ(120),
        GE(121),
        LE(122),
        NE(123),
        SC_AND(124),
        SC_OR(125),
        INCR(126),
        DECR(127),
        PLUS(128),
        MINUS(129),
        STAR(130),
        SLASH(131),
        BIT_AND(132),
        BIT_OR(133),
        XOR(134),
        REM(135),
        LSHIFT(136),
        PLUSASSIGN(137),
        MINUSASSIGN(138),
        STARASSIGN(139),
        SLASHASSIGN(140),
        ANDASSIGN(141),
        ORASSIGN(142),
        XORASSIGN(143),
        REMASSIGN(144),
        LSHIFTASSIGN(145),
        RSIGNEDSHIFTASSIGN(146),
        RUNSIGNEDSHIFTASSIGN(147),
        RUNSIGNEDSHIFT(148),
        RSIGNEDSHIFT(149),
        GT(150),
        CTRL_Z(151);

        private final int kind;

        Kind(int kind) {
            this.kind = kind;
        }

        public int getKind() {
            return this.kind;
        }

        public boolean isPrimitive() {
            return this == BYTE || this == CHAR || this == SHORT || this == INT || this == LONG || this == FLOAT || this == DOUBLE;
        }

        public static Kind valueOf(int kind) {
            switch (kind) {
                case 0:
                    return EOF;
                case 1:
                    return SPACE;
                case 2:
                    return WINDOWS_EOL;
                case 3:
                    return UNIX_EOL;
                case 4:
                    return OLD_MAC_EOL;
                case 5:
                    return SINGLE_LINE_COMMENT;
                case 6:
                    return ENTER_JAVADOC_COMMENT;
                case 7:
                    return ENTER_MULTILINE_COMMENT;
                case 8:
                    return JAVADOC_COMMENT;
                case 9:
                    return MULTI_LINE_COMMENT;
                case 10:
                    return COMMENT_CONTENT;
                case 11:
                    return ABSTRACT;
                case 12:
                    return ASSERT;
                case 13:
                    return BOOLEAN;
                case 14:
                    return BREAK;
                case 15:
                    return BYTE;
                case 16:
                    return CASE;
                case 17:
                    return CATCH;
                case 18:
                    return CHAR;
                case 19:
                    return CLASS;
                case 20:
                    return CONST;
                case 21:
                    return CONTINUE;
                case 22:
                    return _DEFAULT;
                case 23:
                    return DO;
                case 24:
                    return DOUBLE;
                case 25:
                    return ELSE;
                case 26:
                    return ENUM;
                case 27:
                    return EXTENDS;
                case 28:
                    return FALSE;
                case 29:
                    return FINAL;
                case 30:
                    return FINALLY;
                case 31:
                    return FLOAT;
                case 32:
                    return FOR;
                case 33:
                    return GOTO;
                case 34:
                    return IF;
                case 35:
                    return IMPLEMENTS;
                case 36:
                    return IMPORT;
                case 37:
                    return INSTANCEOF;
                case 38:
                    return INT;
                case 39:
                    return INTERFACE;
                case 40:
                    return LONG;
                case 41:
                    return NATIVE;
                case 42:
                    return NEW;
                case 43:
                    return NON_SEALED;
                case 44:
                    return NULL;
                case 45:
                    return PACKAGE;
                case 46:
                    return PERMITS;
                case 47:
                    return PRIVATE;
                case 48:
                    return PROTECTED;
                case 49:
                    return PUBLIC;
                case 50:
                    return RECORD;
                case 51:
                    return RETURN;
                case 52:
                    return SEALED;
                case 53:
                    return SHORT;
                case 54:
                    return STATIC;
                case 55:
                    return STRICTFP;
                case 56:
                    return SUPER;
                case 57:
                    return SWITCH;
                case 58:
                    return SYNCHRONIZED;
                case 59:
                    return THIS;
                case 60:
                    return THROW;
                case 61:
                    return THROWS;
                case 62:
                    return TRANSIENT;
                case 63:
                    return TRUE;
                case 64:
                    return TRY;
                case 65:
                    return VOID;
                case 66:
                    return VOLATILE;
                case 67:
                    return WHILE;
                case 68:
                    return YIELD;
                case 69:
                    return REQUIRES;
                case 70:
                    return TO;
                case 71:
                    return WITH;
                case 72:
                    return OPEN;
                case 73:
                    return OPENS;
                case 74:
                    return USES;
                case 75:
                    return MODULE;
                case 76:
                    return EXPORTS;
                case 77:
                    return PROVIDES;
                case 78:
                    return TRANSITIVE;
                case 79:
                    return WHEN;
                case 80:
                    return LONG_LITERAL;
                case 81:
                    return INTEGER_LITERAL;
                case 82:
                    return DECIMAL_LITERAL;
                case 83:
                    return HEX_LITERAL;
                case 84:
                    return OCTAL_LITERAL;
                case 85:
                    return BINARY_LITERAL;
                case 86:
                    return FLOATING_POINT_LITERAL;
                case 87:
                    return DECIMAL_FLOATING_POINT_LITERAL;
                case 88:
                    return DECIMAL_EXPONENT;
                case 89:
                    return HEXADECIMAL_FLOATING_POINT_LITERAL;
                case 90:
                    return HEXADECIMAL_EXPONENT;
                case 91:
                    return HEX_DIGITS;
                case 92:
                    return UNICODE_ESCAPE;
                case 93:
                    return CHARACTER_LITERAL;
                case 94:
                    return STRING_LITERAL;
                case 95:
                    return ENTER_TEXT_BLOCK;
                case 96:
                    return TEXT_BLOCK_LITERAL;
                case 97:
                    return TEXT_BLOCK_CONTENT;
                case 98:
                    return IDENTIFIER;
                case 99:
                    return LETTER;
                case 100:
                    return PART_LETTER;
                case 101:
                    return LPAREN;
                case 102:
                    return RPAREN;
                case 103:
                    return LBRACE;
                case 104:
                    return RBRACE;
                case 105:
                    return LBRACKET;
                case 106:
                    return RBRACKET;
                case 107:
                    return SEMICOLON;
                case 108:
                    return COMMA;
                case 109:
                    return DOT;
                case 110:
                    return ELLIPSIS;
                case 111:
                    return AT;
                case 112:
                    return DOUBLECOLON;
                case 113:
                    return ASSIGN;
                case 114:
                    return LT;
                case 115:
                    return BANG;
                case 116:
                    return TILDE;
                case 117:
                    return HOOK;
                case 118:
                    return COLON;
                case 119:
                    return ARROW;
                case 120:
                    return EQ;
                case 121:
                    return GE;
                case 122:
                    return LE;
                case 123:
                    return NE;
                case 124:
                    return SC_AND;
                case 125:
                    return SC_OR;
                case 126:
                    return INCR;
                case 127:
                    return DECR;
                case 128:
                    return PLUS;
                case 129:
                    return MINUS;
                case 130:
                    return STAR;
                case 131:
                    return SLASH;
                case 132:
                    return BIT_AND;
                case 133:
                    return BIT_OR;
                case 134:
                    return XOR;
                case 135:
                    return REM;
                case 136:
                    return LSHIFT;
                case 137:
                    return PLUSASSIGN;
                case 138:
                    return MINUSASSIGN;
                case 139:
                    return STARASSIGN;
                case 140:
                    return SLASHASSIGN;
                case 141:
                    return ANDASSIGN;
                case 142:
                    return ORASSIGN;
                case 143:
                    return XORASSIGN;
                case 144:
                    return REMASSIGN;
                case 145:
                    return LSHIFTASSIGN;
                case 146:
                    return RSIGNEDSHIFTASSIGN;
                case 147:
                    return RUNSIGNEDSHIFTASSIGN;
                case 148:
                    return RUNSIGNEDSHIFT;
                case 149:
                    return RSIGNEDSHIFT;
                case 150:
                    return GT;
                case 151:
                    return CTRL_Z;
                default:
                    throw new IllegalArgumentException(CodeGenerationUtils.f("Token kind %i is unknown.", Integer.valueOf(kind)));
            }
        }
    }

    private JavaToken() {
        this(null, 0, "INVALID", null, null);
    }

    public static void lambda$deleteToken$2(final Optional nextToken, JavaToken p10) {
        p10.nextToken = (JavaToken) nextToken.orElse(null);
    }

    public static void lambda$deleteToken$3(final Optional previousToken, JavaToken n10) {
        n10.previousToken = (JavaToken) previousToken.orElse(null);
    }

    public static void lambda$insert$0(final JavaToken newToken, JavaToken p10) {
        p10.nextToken = newToken;
        newToken.previousToken = p10;
    }

    public static void lambda$insertAfter$1(final JavaToken newToken, JavaToken n10) {
        n10.previousToken = newToken;
        newToken.nextToken = n10;
    }

    public static void lambda$replaceToken$4(final JavaToken newToken, JavaToken p10) {
        p10.nextToken = newToken;
        newToken.previousToken = p10;
    }

    public static void lambda$replaceToken$5(final JavaToken newToken, JavaToken n10) {
        n10.previousToken = newToken;
        newToken.nextToken = n10;
    }

    public String asString() {
        return this.text;
    }

    public void deleteToken() {
        final Optional<JavaToken> nextToken = getNextToken();
        final Optional<JavaToken> previousToken = getPreviousToken();
        previousToken.ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavaToken.lambda$deleteToken$2(Optional.this, (JavaToken) obj);
            }
        });
        nextToken.ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavaToken.lambda$deleteToken$3(Optional.this, (JavaToken) obj);
            }
        });
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        JavaToken javaToken = (JavaToken) o10;
        return this.kind == javaToken.kind && this.text.equals(javaToken.text);
    }

    public JavaToken findFirstToken() {
        JavaToken javaToken = this;
        while (javaToken.getPreviousToken().isPresent()) {
            javaToken = javaToken.getPreviousToken().get();
        }
        return javaToken;
    }

    public JavaToken findLastToken() {
        JavaToken javaToken = this;
        while (javaToken.getNextToken().isPresent()) {
            javaToken = javaToken.getNextToken().get();
        }
        return javaToken;
    }

    public Category getCategory() {
        return TokenTypes.getCategory(this.kind);
    }

    public int getKind() {
        return this.kind;
    }

    public Optional<JavaToken> getNextToken() {
        return Optional.ofNullable(this.nextToken);
    }

    public Optional<JavaToken> getPreviousToken() {
        return Optional.ofNullable(this.previousToken);
    }

    public Optional<Range> getRange() {
        return Optional.ofNullable(this.range);
    }

    public String getText() {
        return this.text;
    }

    public boolean hasRange() {
        return getRange().isPresent();
    }

    public int hashCode() {
        return (this.kind * 31) + this.text.hashCode();
    }

    public void insert(final JavaToken newToken) {
        Utils.assertNotNull(newToken);
        getPreviousToken().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavaToken.lambda$insert$0(JavaToken.this, (JavaToken) obj);
            }
        });
        this.previousToken = newToken;
        newToken.nextToken = this;
    }

    public void insertAfter(final JavaToken newToken) {
        Utils.assertNotNull(newToken);
        getNextToken().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavaToken.lambda$insertAfter$1(JavaToken.this, (JavaToken) obj);
            }
        });
        this.nextToken = newToken;
        newToken.previousToken = this;
    }

    public boolean invalid() {
        return this == INVALID;
    }

    public void replaceToken(final JavaToken newToken) {
        Utils.assertNotNull(newToken);
        getPreviousToken().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavaToken.lambda$replaceToken$4(JavaToken.this, (JavaToken) obj);
            }
        });
        getNextToken().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavaToken.lambda$replaceToken$5(JavaToken.this, (JavaToken) obj);
            }
        });
    }

    public void setKind(int kind) {
        this.kind = kind;
    }

    public void setRange(Range range) {
        this.range = range;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String toString() {
        return CodeGenerationUtils.f("\"%s\"   <%s>   %s", getText().replace("\n", "\\n").replace(StringUtils.CR, "\\r").replace(C13208a.f86201f, "\\r\\n").replace("\t", "\\t"), Integer.valueOf(getKind()), getRange().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Range) obj).toString();
            }
        }).orElse("(?)-(?)"));
    }

    public TokenRange toTokenRange() {
        return new TokenRange(findFirstToken(), findLastToken());
    }

    public boolean valid() {
        return !invalid();
    }

    public JavaToken(int kind, String text) {
        this(null, kind, text, null, null);
    }

    public JavaToken(Token token, List<JavaToken> tokens) {
        this.previousToken = null;
        this.nextToken = null;
        Range range = Range.range(token.beginLine, token.beginColumn, token.endLine, token.endColumn);
        String str = token.image;
        int i10 = token.kind;
        if (i10 == 150) {
            int i11 = token.beginLine;
            int i12 = token.beginColumn;
            range = Range.range(i11, i12, token.endLine, i12);
            str = ">";
        } else if (i10 == 149) {
            int i13 = token.beginLine;
            int i14 = token.beginColumn;
            range = Range.range(i13, i14, token.endLine, i14 + 1);
            str = ">>";
        }
        this.range = range;
        this.kind = token.kind;
        this.text = str;
        if (!tokens.isEmpty()) {
            JavaToken javaToken = tokens.get(tokens.size() - 1);
            this.previousToken = javaToken;
            javaToken.nextToken = this;
            return;
        }
        this.previousToken = null;
    }

    public JavaToken(int kind) {
        this.previousToken = null;
        this.nextToken = null;
        String str = GeneratedJavaParserConstants.tokenImage[kind];
        str = str.startsWith(JavadocConstants.ANCHOR_PREFIX_END) ? str.substring(1, str.length() - 1) : str;
        if (TokenTypes.isEndOfLineToken(kind)) {
            str = LineSeparator.SYSTEM.asRawString();
        } else if (TokenTypes.isWhitespace(kind)) {
            str = " ";
        }
        this.kind = kind;
        this.text = str;
    }

    public JavaToken(Range range, int kind, String text, JavaToken previousToken, JavaToken nextToken) {
        this.previousToken = null;
        this.nextToken = null;
        Utils.assertNotNull(text);
        this.range = range;
        this.kind = kind;
        this.text = text;
        this.previousToken = previousToken;
        this.nextToken = nextToken;
    }
}
