package D6;

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
import org.blacksquircle.ui.language.lua.lexer.LuaLexer;
import org.blacksquircle.ui.language.lua.lexer.LuaToken;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class e implements LanguageStyler {

    @NotNull
    public static final a f4849a = new a(null);

    public static final Pattern f4850b = Pattern.compile("(?<=(function)) (\\w+)");

    public static final Pattern f4851c = Pattern.compile("public\\s+");

    @NotNull
    public static final String f4852d = "LuaStyler";

    @Nullable
    public static e f4853e;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final e a() {
            e eVar = e.f4853e;
            if (eVar != null) {
                return eVar;
            }
            e eVar2 = new e();
            a aVar = e.f4849a;
            e.f4853e = eVar2;
            return eVar2;
        }

        public a() {
        }
    }

    public static final class b {

        public static final int[] f4854a;

        static {
            int[] iArr = new int[LuaToken.values().length];
            try {
                iArr[LuaToken.LONG_LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LuaToken.INTEGER_LITERAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LuaToken.FLOAT_LITERAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LuaToken.DOUBLE_LITERAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LuaToken.LT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LuaToken.GT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[LuaToken.LTEQ.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[LuaToken.GTEQ.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[LuaToken.EQEQ.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[LuaToken.TILDEEQ.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[LuaToken.CONCAT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[LuaToken.EQ.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[LuaToken.NOT_OPERATOR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[LuaToken.TILDE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[LuaToken.COLON.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[LuaToken.PLUS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[LuaToken.MINUS.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[LuaToken.MULT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[LuaToken.DIV.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[LuaToken.OR_OPERATOR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[LuaToken.XOR.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[LuaToken.MOD.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[LuaToken.QUEST.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[LuaToken.LPAREN.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[LuaToken.RPAREN.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[LuaToken.LBRACE.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[LuaToken.RBRACE.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[LuaToken.LBRACK.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[LuaToken.RBRACK.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[LuaToken.SEMICOLON.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[LuaToken.COMMA.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[LuaToken.DOT.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[LuaToken.BREAK.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[LuaToken.DO.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[LuaToken.ELSE.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[LuaToken.ELSEIF.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[LuaToken.END.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[LuaToken.FOR.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[LuaToken.FUNCTION.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[LuaToken.GOTO.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[LuaToken.IF.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[LuaToken.IN.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[LuaToken.LOCAL.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[LuaToken.NIL.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[LuaToken.REPEAT.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[LuaToken.RETURN.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[LuaToken.THEN.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[LuaToken.UNTIL.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[LuaToken.WHILE.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[LuaToken.AND.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr[LuaToken.OR.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr[LuaToken.NOT.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr[LuaToken._G.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr[LuaToken._VERSION.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr[LuaToken.ASSERT.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr[LuaToken.COLLECTGARBAGE.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr[LuaToken.DOFILE.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr[LuaToken.ERROR.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr[LuaToken.GETFENV.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr[LuaToken.GETMETATABLE.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr[LuaToken.IPAIRS.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr[LuaToken.LOAD.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr[LuaToken.LOADFILE.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr[LuaToken.LOADSTRING.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr[LuaToken.MODULE.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr[LuaToken.NEXT.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr[LuaToken.PAIRS.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr[LuaToken.PCALL.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr[LuaToken.PRINT.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr[LuaToken.RAWEQUAL.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr[LuaToken.RAWGET.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr[LuaToken.RAWSET.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                iArr[LuaToken.REQUIRE.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                iArr[LuaToken.SELECT.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                iArr[LuaToken.SETFENV.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                iArr[LuaToken.SETMETATABLE.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                iArr[LuaToken.TONUMBER.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                iArr[LuaToken.TOSTRING.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                iArr[LuaToken.TYPE.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                iArr[LuaToken.UNPACK.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                iArr[LuaToken.XPCALL.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                iArr[LuaToken.TRUE.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                iArr[LuaToken.FALSE.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                iArr[LuaToken.NULL.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                iArr[LuaToken.DOUBLE_QUOTED_STRING.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                iArr[LuaToken.SINGLE_QUOTED_STRING.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                iArr[LuaToken.LINE_COMMENT.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                iArr[LuaToken.BLOCK_COMMENT.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                iArr[LuaToken.IDENTIFIER.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                iArr[LuaToken.WHITESPACE.ordinal()] = 90;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                iArr[LuaToken.BAD_CHARACTER.ordinal()] = 91;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                iArr[LuaToken.EOF.ordinal()] = 92;
            } catch (NoSuchFieldError unused92) {
            }
            f4854a = iArr;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x005b. Please report as an issue. */
    @Override
    @NotNull
    public List<SyntaxHighlightSpan> execute(@NotNull String source, @NotNull ColorScheme scheme) {
        M.p(source, "source");
        M.p(scheme, "scheme");
        ArrayList arrayList = new ArrayList();
        LuaLexer luaLexer = new LuaLexer(new StringReader(source));
        Matcher matcher = f4850b.matcher(source);
        matcher.region(0, source.length());
        while (matcher.find()) {
            arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getMethodColor(), false, false, false, false, 30, null), luaLexer.getTokenStart(), luaLexer.getTokenEnd()));
        }
        while (true) {
            try {
                switch (b.f4854a[luaLexer.advance().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getNumberColor(), false, false, false, false, 30, null), luaLexer.getTokenStart(), luaLexer.getTokenEnd()));
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
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getOperatorColor(), false, false, false, false, 30, null), luaLexer.getTokenStart(), luaLexer.getTokenEnd()));
                    case 30:
                    case 31:
                    case 32:
                    case 89:
                    case 90:
                    case 91:
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
                    case 50:
                    case 51:
                    case 52:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getKeywordColor(), false, false, false, false, 30, null), luaLexer.getTokenStart(), luaLexer.getTokenEnd()));
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
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getMethodColor(), false, false, false, false, 30, null), luaLexer.getTokenStart(), luaLexer.getTokenEnd()));
                    case 82:
                    case 83:
                    case 84:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getLangConstColor(), false, false, false, false, 30, null), luaLexer.getTokenStart(), luaLexer.getTokenEnd()));
                    case 85:
                    case 86:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getStringColor(), false, false, false, false, 30, null), luaLexer.getTokenStart(), luaLexer.getTokenEnd()));
                    case 87:
                    case 88:
                        arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getCommentColor(), false, false, false, false, 30, null), luaLexer.getTokenStart(), luaLexer.getTokenEnd()));
                    case 92:
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        Matcher matcher2 = f4851c.matcher(source);
        matcher2.region(0, source.length());
        while (matcher2.find()) {
            arrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getVariableColor(), false, false, false, false, 30, null), matcher2.start(), matcher2.end()));
        }
        return arrayList;
    }
}
