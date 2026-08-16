package G6;

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
import org.jetbrains.annotations.NotNull;

public final class e implements LanguageStyler {

    @NotNull
    public static final String f7659b = "TXTLStyler";

    @NotNull
    public static final a f7658a = new a(null);

    public static final Pattern f7660c = Pattern.compile("(?<=(void)) (\\w+)");

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public static final class b {

        public static final int[] f7661a;

        static {
            int[] iArr = new int[f.values().length];
            try {
                iArr[f.LONG_LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[f.INTEGER_LITERAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[f.FLOAT_LITERAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[f.DOUBLE_LITERAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[f.EQEQ.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[f.NOTEQ.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[f.OROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[f.PLUSPLUS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[f.MINUSMINUS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[f.LT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[f.LTLT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[f.LTEQ.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[f.LTLTEQ.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[f.GT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[f.GTGT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[f.GTGTGT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[f.GTEQ.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[f.GTGTEQ.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[f.AND.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[f.ANDAND.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[f.PLUSEQ.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[f.MINUSEQ.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[f.MULTEQ.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[f.DIVEQ.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[f.ANDEQ.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[f.OREQ.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[f.XOREQ.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[f.MODEQ.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[f.LPAREN.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[f.RPAREN.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[f.LBRACE.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[f.RBRACE.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[f.LBRACK.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[f.RBRACK.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[f.EQ.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[f.NOT.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[f.TILDE.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[f.QUEST.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[f.COLON.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[f.PLUS.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[f.MINUS.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[f.MULT.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[f.DIV.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[f.OR.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[f.XOR.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[f.MOD.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[f.ELLIPSIS.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[f.DOUBLE_COLON.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[f.ARROW.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[f.SEMICOLON.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr[f.COMMA.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr[f.DOT.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr[f.ABSTRACT.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr[f.BREAK.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr[f.CASE.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr[f.CONST.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr[f.CONTINUE.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr[f.DEFAULT.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr[f.DO.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr[f.ELSE.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr[f.FINAL.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr[f.FINALLY.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr[f.FOR.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr[f.IF.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr[f.SWITCH.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr[f.TRY.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr[f.VOID.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr[f.UNIFORM.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr[f.IN.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr[f.OUT.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr[f.VERSION.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr[f.PRECISION.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                iArr[f.WHILE.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                iArr[f.RETURN.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                iArr[f.BOOLEAN.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                iArr[f.FLOAT.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                iArr[f.INT.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                iArr[f.TRUE.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                iArr[f.FALSE.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                iArr[f.CLASS.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                iArr[f.DOUBLE_QUOTED_STRING.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                iArr[f.SINGLE_QUOTED_STRING.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                iArr[f.LINE_COMMENT.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                iArr[f.BLOCK_COMMENT.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                iArr[f.IDENTIFIER.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                iArr[f.WHITESPACE.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                iArr[f.BAD_CHARACTER.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                iArr[f.EOF.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            f7661a = iArr;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x005b. Please report as an issue. */
    @Override
    @NotNull
    public List<SyntaxHighlightSpan> execute(@NotNull String source, @NotNull ColorScheme scheme) {
        M.p(source, "source");
        M.p(scheme, "scheme");
        ArrayList arrayList = new ArrayList();
        G6.b bVar = new G6.b(new StringReader(source));
        Matcher matcher = f7660c.matcher(source);
        matcher.region(0, source.length());
        while (matcher.find()) {
            arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getMethodColor(), false, false, false, false, 30, null), matcher.start(), matcher.end()));
        }
        while (true) {
            try {
                switch (b.f7661a[bVar.a().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getNumberColor(), false, false, false, false, 30, null), bVar.c(), bVar.b()));
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
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getOperatorColor(), false, false, false, false, 30, null), bVar.c(), bVar.b()));
                    case 50:
                    case 51:
                    case 52:
                    case 85:
                    case 86:
                    case 87:
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
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getKeywordColor(), false, false, false, false, 30, null), bVar.c(), bVar.b()));
                    case 75:
                    case 76:
                    case 77:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getTypeColor(), false, false, false, false, 30, null), bVar.c(), bVar.b()));
                    case 78:
                    case 79:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getLangConstColor(), false, false, false, false, 30, null), bVar.c(), bVar.b()));
                    case 80:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getLangConstColor(), false, false, false, false, 30, null), bVar.c(), bVar.b()));
                    case 81:
                    case 82:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getStringColor(), false, false, false, false, 30, null), bVar.c(), bVar.b()));
                    case 83:
                    case 84:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getCommentColor(), false, false, false, false, 30, null), bVar.c(), bVar.b()));
                    case 88:
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            } catch (IOException e10) {
                Log.e(f7659b, e10.getMessage(), e10);
            }
        }
        return arrayList;
    }
}
