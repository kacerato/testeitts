package C6;

import android.util.Log;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.blacksquircle.ui.language.base.span.StyleSpan;
import org.blacksquircle.ui.language.base.span.SyntaxHighlightSpan;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;
import org.blacksquircle.ui.language.java.lexer.JavaLexer;
import org.blacksquircle.ui.language.java.lexer.JavaToken;
import org.jetbrains.annotations.NotNull;

public final class g implements LanguageStyler {

    @NotNull
    public static final String f2441b = "JavaStyler";

    @NotNull
    public static final a f2440a = new a(null);

    public static final Pattern f2442c = Pattern.compile("(?<=(void)) (\\w+)");

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public static final class b {

        public static final int[] f2443a;

        static {
            int[] iArr = new int[JavaToken.values().length];
            try {
                iArr[JavaToken.LONG_LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JavaToken.INTEGER_LITERAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[JavaToken.FLOAT_LITERAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[JavaToken.DOUBLE_LITERAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[JavaToken.EQEQ.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[JavaToken.NOTEQ.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[JavaToken.OROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[JavaToken.PLUSPLUS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[JavaToken.MINUSMINUS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[JavaToken.LT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[JavaToken.LTLT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[JavaToken.LTEQ.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[JavaToken.LTLTEQ.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[JavaToken.GT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[JavaToken.GTGT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[JavaToken.GTGTGT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[JavaToken.GTEQ.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[JavaToken.GTGTEQ.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[JavaToken.AND.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[JavaToken.ANDAND.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[JavaToken.PLUSEQ.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[JavaToken.MINUSEQ.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[JavaToken.MULTEQ.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[JavaToken.DIVEQ.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[JavaToken.ANDEQ.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[JavaToken.OREQ.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[JavaToken.XOREQ.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[JavaToken.MODEQ.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[JavaToken.LPAREN.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[JavaToken.RPAREN.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[JavaToken.LBRACE.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[JavaToken.RBRACE.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[JavaToken.LBRACK.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[JavaToken.RBRACK.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[JavaToken.EQ.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[JavaToken.NOT.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[JavaToken.TILDE.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[JavaToken.QUEST.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[JavaToken.COLON.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[JavaToken.PLUS.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[JavaToken.MINUS.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[JavaToken.MULT.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[JavaToken.DIV.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[JavaToken.OR.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[JavaToken.XOR.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[JavaToken.MOD.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[JavaToken.ELLIPSIS.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[JavaToken.DOUBLE_COLON.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[JavaToken.ARROW.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[JavaToken.SEMICOLON.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr[JavaToken.COMMA.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr[JavaToken.DOT.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr[JavaToken.ABSTRACT.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr[JavaToken.ASSERT.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr[JavaToken.BREAK.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr[JavaToken.CASE.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr[JavaToken.CATCH.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr[JavaToken.CLASS.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr[JavaToken.CONST.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr[JavaToken.CONTINUE.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr[JavaToken.DEFAULT.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr[JavaToken.DO.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr[JavaToken.ELSE.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr[JavaToken.ENUM.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr[JavaToken.EXTENDS.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr[JavaToken.FINAL.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr[JavaToken.FINALLY.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr[JavaToken.FOR.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr[JavaToken.GOTO.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr[JavaToken.IF.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr[JavaToken.IMPLEMENTS.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr[JavaToken.IMPORT.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                iArr[JavaToken.INSTANCEOF.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                iArr[JavaToken.INTERFACE.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                iArr[JavaToken.NATIVE.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                iArr[JavaToken.NEW.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                iArr[JavaToken.PACKAGE.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                iArr[JavaToken.PRIVATE.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                iArr[JavaToken.PROTECTED.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                iArr[JavaToken.PUBLIC.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                iArr[JavaToken.STATIC.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                iArr[JavaToken.STRICTFP.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                iArr[JavaToken.SUPER.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                iArr[JavaToken.SWITCH.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                iArr[JavaToken.SYNCHRONIZED.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                iArr[JavaToken.THIS.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                iArr[JavaToken.THROW.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                iArr[JavaToken.THROWS.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                iArr[JavaToken.TRANSIENT.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                iArr[JavaToken.TRY.ordinal()] = 90;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                iArr[JavaToken.VOID.ordinal()] = 91;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                iArr[JavaToken.VOLATILE.ordinal()] = 92;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                iArr[JavaToken.WHILE.ordinal()] = 93;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                iArr[JavaToken.RETURN.ordinal()] = 94;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                iArr[JavaToken.BOOLEAN.ordinal()] = 95;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                iArr[JavaToken.CHAR.ordinal()] = 96;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                iArr[JavaToken.BYTE.ordinal()] = 97;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                iArr[JavaToken.DOUBLE.ordinal()] = 98;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                iArr[JavaToken.FLOAT.ordinal()] = 99;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                iArr[JavaToken.INT.ordinal()] = 100;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                iArr[JavaToken.LONG.ordinal()] = 101;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                iArr[JavaToken.SHORT.ordinal()] = 102;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                iArr[JavaToken.TRUE.ordinal()] = 103;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                iArr[JavaToken.FALSE.ordinal()] = 104;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                iArr[JavaToken.NULL.ordinal()] = 105;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                iArr[JavaToken.ANNOTATION.ordinal()] = 106;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                iArr[JavaToken.DOUBLE_QUOTED_STRING.ordinal()] = 107;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                iArr[JavaToken.SINGLE_QUOTED_STRING.ordinal()] = 108;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                iArr[JavaToken.LINE_COMMENT.ordinal()] = 109;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                iArr[JavaToken.BLOCK_COMMENT.ordinal()] = 110;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                iArr[JavaToken.IDENTIFIER.ordinal()] = 111;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                iArr[JavaToken.WHITESPACE.ordinal()] = 112;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                iArr[JavaToken.BAD_CHARACTER.ordinal()] = 113;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                iArr[JavaToken.EOF.ordinal()] = 114;
            } catch (NoSuchFieldError unused114) {
            }
            f2443a = iArr;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x005b. Please report as an issue. */
    @Override
    @NotNull
    public List<SyntaxHighlightSpan> execute(@NotNull String source, @NotNull ColorScheme scheme) {
        M.p(source, "source");
        M.p(scheme, "scheme");
        ArrayList arrayList = new ArrayList();
        JavaLexer javaLexer = new JavaLexer(new StringReader(source));
        Matcher matcher = f2442c.matcher(source);
        matcher.region(0, source.length());
        while (matcher.find()) {
            arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getMethodColor(), false, false, false, false, 30, null), matcher.start(), matcher.end()));
        }
        while (true) {
            try {
                switch (b.f2443a[javaLexer.advance().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getNumberColor(), false, false, false, false, 30, null), javaLexer.getTokenStart(), javaLexer.getTokenEnd()));
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getOperatorColor(), false, false, false, false, 30, null), javaLexer.getTokenStart(), javaLexer.getTokenEnd()));
                    case 50:
                    case 51:
                    case 52:
                    case 111:
                    case 112:
                    case 113:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                    case 69:
                    case 70:
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                    case 80:
                    case 81:
                    case 82:
                    case 83:
                    case 84:
                    case 85:
                    case 86:
                    case 87:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    case 93:
                    case 94:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getKeywordColor(), false, false, false, false, 30, null), javaLexer.getTokenStart(), javaLexer.getTokenEnd()));
                    case 95:
                    case 96:
                    case 97:
                    case 98:
                    case 99:
                    case 100:
                    case 101:
                    case 102:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getTypeColor(), false, false, false, false, 30, null), javaLexer.getTokenStart(), javaLexer.getTokenEnd()));
                    case 103:
                    case 104:
                    case 105:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getLangConstColor(), false, false, false, false, 30, null), javaLexer.getTokenStart(), javaLexer.getTokenEnd()));
                    case 106:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getPreprocessorColor(), false, false, false, false, 30, null), javaLexer.getTokenStart(), javaLexer.getTokenEnd()));
                    case 107:
                    case 108:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getStringColor(), false, false, false, false, 30, null), javaLexer.getTokenStart(), javaLexer.getTokenEnd()));
                    case 109:
                    case 110:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getCommentColor(), false, false, false, false, 30, null), javaLexer.getTokenStart(), javaLexer.getTokenEnd()));
                    case 114:
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            } catch (IOException e10) {
                Log.e(f2441b, e10.getMessage(), e10);
            }
        }
        return arrayList;
    }
}
