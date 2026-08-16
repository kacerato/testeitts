package org.openjdk.tools.javac.parser;

import android.provider.CallLog;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b3.s;
import java.lang.constant.ConstantDescs;
import java.util.Iterator;
import java.util.Locale;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.api.Formattable;
import org.openjdk.tools.javac.api.Messages;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import ve.j;

public class Tokens {
    private final TokenKind[] key;
    private final Names names;
    public static final Context.Key<Tokens> tokensKey = new Context.Key<>();
    public static final Token DUMMY = new Token(TokenKind.ERROR, 0, 0, null);
    private int maxKey = 0;
    private Name[] tokenName = new Name[TokenKind.values().length];

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind;

        static {
            int[] iArr = new int[TokenKind.values().length];
            $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind = iArr;
            try {
                iArr[TokenKind.IDENTIFIER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.CHARLITERAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.STRINGLITERAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.INTLITERAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.LONGLITERAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.FLOATLITERAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.DOUBLELITERAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.EOF.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.DOT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.COMMA.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.SEMI.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.LPAREN.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.RPAREN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.LBRACKET.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.RBRACKET.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.LBRACE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[TokenKind.RBRACE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public interface Comment {

        public enum CommentStyle {
            LINE,
            BLOCK,
            JAVADOC
        }

        int getSourcePos(int i10);

        CommentStyle getStyle();

        String getText();

        boolean isDeprecated();
    }

    public static final class NamedToken extends Token {
        public final Name name;

        public NamedToken(TokenKind tokenKind, int i10, int i11, Name name, List<Comment> list) {
            super(tokenKind, i10, i11, list);
            this.name = name;
        }

        @Override
        public void checkKind() {
            Token.Tag tag = this.kind.tag;
            Token.Tag tag2 = Token.Tag.NAMED;
            if (tag == tag2) {
                return;
            }
            throw new AssertionError((Object) ("Bad token kind - expected " + ((Object) tag2)));
        }

        @Override
        public Name name() {
            return this.name;
        }
    }

    public static final class NumericToken extends StringToken {
        public final int radix;

        public NumericToken(TokenKind tokenKind, int i10, int i11, String str, int i12, List<Comment> list) {
            super(tokenKind, i10, i11, str, list);
            this.radix = i12;
        }

        @Override
        public void checkKind() {
            Token.Tag tag = this.kind.tag;
            Token.Tag tag2 = Token.Tag.NUMERIC;
            if (tag == tag2) {
                return;
            }
            throw new AssertionError((Object) ("Bad token kind - expected " + ((Object) tag2)));
        }

        @Override
        public int radix() {
            return this.radix;
        }
    }

    public static class StringToken extends Token {
        public final String stringVal;

        public StringToken(TokenKind tokenKind, int i10, int i11, String str, List<Comment> list) {
            super(tokenKind, i10, i11, list);
            this.stringVal = str;
        }

        @Override
        public void checkKind() {
            Token.Tag tag = this.kind.tag;
            Token.Tag tag2 = Token.Tag.STRING;
            if (tag == tag2) {
                return;
            }
            throw new AssertionError((Object) ("Bad token kind - expected " + ((Object) tag2)));
        }

        @Override
        public String stringVal() {
            return this.stringVal;
        }
    }

    public static class Token {
        public final List<Comment> comments;
        public final int endPos;
        public final TokenKind kind;
        public final int pos;

        public enum Tag {
            DEFAULT,
            NAMED,
            STRING,
            NUMERIC
        }

        public Token(TokenKind tokenKind, int i10, int i11, List<Comment> list) {
            this.kind = tokenKind;
            this.pos = i10;
            this.endPos = i11;
            this.comments = list;
            checkKind();
        }

        private List<Comment> getComments(Comment.CommentStyle commentStyle) {
            if (this.comments == null) {
                return List.nil();
            }
            ListBuffer listBuffer = new ListBuffer();
            Iterator<Comment> it = this.comments.iterator();
            while (it.hasNext()) {
                Comment next = it.next();
                if (next.getStyle() == commentStyle) {
                    listBuffer.add(next);
                }
            }
            return listBuffer.toList();
        }

        public void checkKind() {
            if (this.kind.tag == Tag.DEFAULT) {
                return;
            }
            throw new AssertionError((Object) ("Bad token kind - expected " + ((Object) Tag.STRING)));
        }

        public Comment comment(Comment.CommentStyle commentStyle) {
            List<Comment> comments = getComments(Comment.CommentStyle.JAVADOC);
            if (comments.isEmpty()) {
                return null;
            }
            return comments.head;
        }

        public boolean deprecatedFlag() {
            Iterator<Comment> it = getComments(Comment.CommentStyle.JAVADOC).iterator();
            while (it.hasNext()) {
                if (it.next().isDeprecated()) {
                    return true;
                }
            }
            return false;
        }

        public Name name() {
            throw new UnsupportedOperationException();
        }

        public int radix() {
            throw new UnsupportedOperationException();
        }

        public Token[] split(Tokens tokens) {
            if (this.kind.name.length() >= 2) {
                TokenKind tokenKind = this.kind;
                if (tokenKind.tag == Tag.DEFAULT) {
                    TokenKind lookupKind = tokens.lookupKind(tokenKind.name.substring(0, 1));
                    TokenKind lookupKind2 = tokens.lookupKind(this.kind.name.substring(1));
                    if (lookupKind == null || lookupKind2 == null) {
                        throw new AssertionError((Object) "Cant split - bad subtokens");
                    }
                    int i10 = this.pos;
                    return new Token[]{new Token(lookupKind, i10, lookupKind.name.length() + i10, this.comments), new Token(lookupKind2, this.pos + lookupKind.name.length(), this.endPos, null)};
                }
            }
            throw new AssertionError((Object) ("Cant split" + ((Object) this.kind)));
        }

        public String stringVal() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'IDENTIFIER' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class TokenKind implements Formattable, Filter<TokenKind> {
        private static final TokenKind[] $VALUES;
        public static final TokenKind ABSTRACT;
        public static final TokenKind AMP;
        public static final TokenKind AMPAMP;
        public static final TokenKind AMPEQ;
        public static final TokenKind ARROW;
        public static final TokenKind ASSERT;
        public static final TokenKind BANG;
        public static final TokenKind BANGEQ;
        public static final TokenKind BAR;
        public static final TokenKind BARBAR;
        public static final TokenKind BAREQ;
        public static final TokenKind BOOLEAN;
        public static final TokenKind BREAK;
        public static final TokenKind BYTE;
        public static final TokenKind CARET;
        public static final TokenKind CARETEQ;
        public static final TokenKind CASE;
        public static final TokenKind CATCH;
        public static final TokenKind CHAR;
        public static final TokenKind CHARLITERAL;
        public static final TokenKind CLASS;
        public static final TokenKind COLCOL;
        public static final TokenKind COLON;
        public static final TokenKind COMMA;
        public static final TokenKind CONST;
        public static final TokenKind CONTINUE;
        public static final TokenKind CUSTOM;
        public static final TokenKind DEFAULT;
        public static final TokenKind DO;
        public static final TokenKind DOT;
        public static final TokenKind DOUBLE;
        public static final TokenKind DOUBLELITERAL;
        public static final TokenKind ELLIPSIS;
        public static final TokenKind ELSE;
        public static final TokenKind ENUM;
        public static final TokenKind EOF;
        public static final TokenKind EQ;
        public static final TokenKind EQEQ;
        public static final TokenKind ERROR;
        public static final TokenKind EXTENDS;
        public static final TokenKind FALSE;
        public static final TokenKind FINAL;
        public static final TokenKind FINALLY;
        public static final TokenKind FLOAT;
        public static final TokenKind FLOATLITERAL;
        public static final TokenKind FOR;
        public static final TokenKind GOTO;
        public static final TokenKind GT;
        public static final TokenKind GTEQ;
        public static final TokenKind GTGT;
        public static final TokenKind GTGTEQ;
        public static final TokenKind GTGTGT;
        public static final TokenKind GTGTGTEQ;
        public static final TokenKind IDENTIFIER;
        public static final TokenKind IF;
        public static final TokenKind IMPLEMENTS;
        public static final TokenKind IMPORT;
        public static final TokenKind INSTANCEOF;
        public static final TokenKind INT;
        public static final TokenKind INTERFACE;
        public static final TokenKind INTLITERAL;
        public static final TokenKind LBRACE;
        public static final TokenKind LBRACKET;
        public static final TokenKind LONG;
        public static final TokenKind LONGLITERAL;
        public static final TokenKind LPAREN;
        public static final TokenKind LT;
        public static final TokenKind LTEQ;
        public static final TokenKind LTLT;
        public static final TokenKind LTLTEQ;
        public static final TokenKind MONKEYS_AT;
        public static final TokenKind NATIVE;
        public static final TokenKind NEW;
        public static final TokenKind NULL;
        public static final TokenKind PACKAGE;
        public static final TokenKind PERCENT;
        public static final TokenKind PERCENTEQ;
        public static final TokenKind PLUS;
        public static final TokenKind PLUSEQ;
        public static final TokenKind PLUSPLUS;
        public static final TokenKind PRIVATE;
        public static final TokenKind PROTECTED;
        public static final TokenKind PUBLIC;
        public static final TokenKind QUES;
        public static final TokenKind RBRACE;
        public static final TokenKind RBRACKET;
        public static final TokenKind RETURN;
        public static final TokenKind RPAREN;
        public static final TokenKind SEMI;
        public static final TokenKind SHORT;
        public static final TokenKind SLASH;
        public static final TokenKind SLASHEQ;
        public static final TokenKind STAR;
        public static final TokenKind STAREQ;
        public static final TokenKind STATIC;
        public static final TokenKind STRICTFP;
        public static final TokenKind STRINGLITERAL;
        public static final TokenKind SUB;
        public static final TokenKind SUBEQ;
        public static final TokenKind SUBSUB;
        public static final TokenKind SUPER;
        public static final TokenKind SWITCH;
        public static final TokenKind SYNCHRONIZED;
        public static final TokenKind THIS;
        public static final TokenKind THROW;
        public static final TokenKind THROWS;
        public static final TokenKind TILDE;
        public static final TokenKind TRANSIENT;
        public static final TokenKind TRUE;
        public static final TokenKind TRY;
        public static final TokenKind UNDERSCORE;
        public static final TokenKind VOID;
        public static final TokenKind VOLATILE;
        public static final TokenKind WHILE;
        public final String name;
        public final Token.Tag tag;

        static {
            TokenKind tokenKind = new TokenKind("EOF", 0);
            EOF = tokenKind;
            TokenKind tokenKind2 = new TokenKind("ERROR", 1);
            ERROR = tokenKind2;
            Token.Tag tag = Token.Tag.NAMED;
            TokenKind tokenKind3 = new TokenKind("IDENTIFIER", 2, tag);
            IDENTIFIER = tokenKind3;
            TokenKind tokenKind4 = new TokenKind("ABSTRACT", 3, "abstract");
            ABSTRACT = tokenKind4;
            TokenKind tokenKind5 = new TokenKind("ASSERT", 4, "assert", tag);
            ASSERT = tokenKind5;
            TokenKind tokenKind6 = new TokenKind("BOOLEAN", 5, TypedValues.Custom.S_BOOLEAN, tag);
            BOOLEAN = tokenKind6;
            TokenKind tokenKind7 = new TokenKind("BREAK", 6, "break");
            BREAK = tokenKind7;
            TokenKind tokenKind8 = new TokenKind("BYTE", 7, "byte", tag);
            BYTE = tokenKind8;
            TokenKind tokenKind9 = new TokenKind("CASE", 8, "case");
            CASE = tokenKind9;
            TokenKind tokenKind10 = new TokenKind("CATCH", 9, "catch");
            CATCH = tokenKind10;
            TokenKind tokenKind11 = new TokenKind("CHAR", 10, "char", tag);
            CHAR = tokenKind11;
            TokenKind tokenKind12 = new TokenKind(SuffixConstants.EXTENSION_CLASS, 11, "class");
            CLASS = tokenKind12;
            TokenKind tokenKind13 = new TokenKind("CONST", 12, "const");
            CONST = tokenKind13;
            TokenKind tokenKind14 = new TokenKind("CONTINUE", 13, "continue");
            CONTINUE = tokenKind14;
            TokenKind tokenKind15 = new TokenKind("DEFAULT", 14, "default");
            DEFAULT = tokenKind15;
            TokenKind tokenKind16 = new TokenKind("DO", 15, "do");
            DO = tokenKind16;
            TokenKind tokenKind17 = new TokenKind("DOUBLE", 16, "double", tag);
            DOUBLE = tokenKind17;
            TokenKind tokenKind18 = new TokenKind("ELSE", 17, "else");
            ELSE = tokenKind18;
            TokenKind tokenKind19 = new TokenKind("ENUM", 18, "enum", tag);
            ENUM = tokenKind19;
            TokenKind tokenKind20 = new TokenKind("EXTENDS", 19, "extends");
            EXTENDS = tokenKind20;
            TokenKind tokenKind21 = new TokenKind("FINAL", 20, "final");
            FINAL = tokenKind21;
            TokenKind tokenKind22 = new TokenKind("FINALLY", 21, "finally");
            FINALLY = tokenKind22;
            TokenKind tokenKind23 = new TokenKind("FLOAT", 22, TypedValues.Custom.S_FLOAT, tag);
            FLOAT = tokenKind23;
            TokenKind tokenKind24 = new TokenKind("FOR", 23, "for");
            FOR = tokenKind24;
            TokenKind tokenKind25 = new TokenKind("GOTO", 24, "goto");
            GOTO = tokenKind25;
            TokenKind tokenKind26 = new TokenKind("IF", 25, "if");
            IF = tokenKind26;
            TokenKind tokenKind27 = new TokenKind("IMPLEMENTS", 26, "implements");
            IMPLEMENTS = tokenKind27;
            TokenKind tokenKind28 = new TokenKind("IMPORT", 27, "import");
            IMPORT = tokenKind28;
            TokenKind tokenKind29 = new TokenKind("INSTANCEOF", 28, "instanceof");
            INSTANCEOF = tokenKind29;
            TokenKind tokenKind30 = new TokenKind("INT", 29, "int", tag);
            INT = tokenKind30;
            TokenKind tokenKind31 = new TokenKind("INTERFACE", 30, "interface");
            INTERFACE = tokenKind31;
            TokenKind tokenKind32 = new TokenKind("LONG", 31, "long", tag);
            LONG = tokenKind32;
            TokenKind tokenKind33 = new TokenKind("NATIVE", 32, "native");
            NATIVE = tokenKind33;
            TokenKind tokenKind34 = new TokenKind("NEW", 33, CallLog.Calls.NEW);
            NEW = tokenKind34;
            TokenKind tokenKind35 = new TokenKind("PACKAGE", 34, Telephony.Sms.Intents.EXTRA_PACKAGE_NAME);
            PACKAGE = tokenKind35;
            TokenKind tokenKind36 = new TokenKind("PRIVATE", 35, "private");
            PRIVATE = tokenKind36;
            TokenKind tokenKind37 = new TokenKind("PROTECTED", 36, "protected");
            PROTECTED = tokenKind37;
            TokenKind tokenKind38 = new TokenKind("PUBLIC", 37, "public");
            PUBLIC = tokenKind38;
            TokenKind tokenKind39 = new TokenKind("RETURN", 38, "return");
            RETURN = tokenKind39;
            TokenKind tokenKind40 = new TokenKind("SHORT", 39, "short", tag);
            SHORT = tokenKind40;
            TokenKind tokenKind41 = new TokenKind("STATIC", 40, "static");
            STATIC = tokenKind41;
            TokenKind tokenKind42 = new TokenKind("STRICTFP", 41, "strictfp");
            STRICTFP = tokenKind42;
            TokenKind tokenKind43 = new TokenKind("SUPER", 42, "super", tag);
            SUPER = tokenKind43;
            TokenKind tokenKind44 = new TokenKind("SWITCH", 43, "switch");
            SWITCH = tokenKind44;
            TokenKind tokenKind45 = new TokenKind("SYNCHRONIZED", 44, "synchronized");
            SYNCHRONIZED = tokenKind45;
            TokenKind tokenKind46 = new TokenKind("THIS", 45, "this", tag);
            THIS = tokenKind46;
            TokenKind tokenKind47 = new TokenKind("THROW", 46, "throw");
            THROW = tokenKind47;
            TokenKind tokenKind48 = new TokenKind("THROWS", 47, "throws");
            THROWS = tokenKind48;
            TokenKind tokenKind49 = new TokenKind("TRANSIENT", 48, "transient");
            TRANSIENT = tokenKind49;
            TokenKind tokenKind50 = new TokenKind("TRY", 49, "try");
            TRY = tokenKind50;
            TokenKind tokenKind51 = new TokenKind("VOID", 50, "void", tag);
            VOID = tokenKind51;
            TokenKind tokenKind52 = new TokenKind("VOLATILE", 51, "volatile");
            VOLATILE = tokenKind52;
            TokenKind tokenKind53 = new TokenKind("WHILE", 52, "while");
            WHILE = tokenKind53;
            Token.Tag tag2 = Token.Tag.NUMERIC;
            TokenKind tokenKind54 = new TokenKind("INTLITERAL", 53, tag2);
            INTLITERAL = tokenKind54;
            TokenKind tokenKind55 = new TokenKind("LONGLITERAL", 54, tag2);
            LONGLITERAL = tokenKind55;
            TokenKind tokenKind56 = new TokenKind("FLOATLITERAL", 55, tag2);
            FLOATLITERAL = tokenKind56;
            TokenKind tokenKind57 = new TokenKind("DOUBLELITERAL", 56, tag2);
            DOUBLELITERAL = tokenKind57;
            TokenKind tokenKind58 = new TokenKind("CHARLITERAL", 57, tag2);
            CHARLITERAL = tokenKind58;
            TokenKind tokenKind59 = new TokenKind("STRINGLITERAL", 58, Token.Tag.STRING);
            STRINGLITERAL = tokenKind59;
            TokenKind tokenKind60 = new TokenKind("TRUE", 59, "true", tag);
            TRUE = tokenKind60;
            TokenKind tokenKind61 = new TokenKind("FALSE", 60, "false", tag);
            FALSE = tokenKind61;
            TokenKind tokenKind62 = new TokenKind("NULL", 61, "null", tag);
            NULL = tokenKind62;
            TokenKind tokenKind63 = new TokenKind("UNDERSCORE", 62, ConstantDescs.DEFAULT_NAME, tag);
            UNDERSCORE = tokenKind63;
            TokenKind tokenKind64 = new TokenKind("ARROW", 63, "->");
            ARROW = tokenKind64;
            TokenKind tokenKind65 = new TokenKind("COLCOL", 64, "::");
            COLCOL = tokenKind65;
            TokenKind tokenKind66 = new TokenKind("LPAREN", 65, "(");
            LPAREN = tokenKind66;
            TokenKind tokenKind67 = new TokenKind("RPAREN", 66, ")");
            RPAREN = tokenKind67;
            TokenKind tokenKind68 = new TokenKind("LBRACE", 67, "{");
            LBRACE = tokenKind68;
            TokenKind tokenKind69 = new TokenKind("RBRACE", 68, VectorFormat.DEFAULT_SUFFIX);
            RBRACE = tokenKind69;
            TokenKind tokenKind70 = new TokenKind("LBRACKET", 69, "[");
            LBRACKET = tokenKind70;
            TokenKind tokenKind71 = new TokenKind("RBRACKET", 70, "]");
            RBRACKET = tokenKind71;
            TokenKind tokenKind72 = new TokenKind("SEMI", 71, ";");
            SEMI = tokenKind72;
            TokenKind tokenKind73 = new TokenKind("COMMA", 72, DocLint.SEPARATOR);
            COMMA = tokenKind73;
            TokenKind tokenKind74 = new TokenKind("DOT", 73, ".");
            DOT = tokenKind74;
            TokenKind tokenKind75 = new TokenKind("ELLIPSIS", 74, "...");
            ELLIPSIS = tokenKind75;
            TokenKind tokenKind76 = new TokenKind("EQ", 75, "=");
            EQ = tokenKind76;
            TokenKind tokenKind77 = new TokenKind("GT", 76, ">");
            GT = tokenKind77;
            TokenKind tokenKind78 = new TokenKind("LT", 77, "<");
            LT = tokenKind78;
            TokenKind tokenKind79 = new TokenKind("BANG", 78, "!");
            BANG = tokenKind79;
            TokenKind tokenKind80 = new TokenKind("TILDE", 79, "~");
            TILDE = tokenKind80;
            TokenKind tokenKind81 = new TokenKind("QUES", 80, "?");
            QUES = tokenKind81;
            TokenKind tokenKind82 = new TokenKind("COLON", 81, s.f32937c);
            COLON = tokenKind82;
            TokenKind tokenKind83 = new TokenKind("EQEQ", 82, "==");
            EQEQ = tokenKind83;
            TokenKind tokenKind84 = new TokenKind("LTEQ", 83, "<=");
            LTEQ = tokenKind84;
            TokenKind tokenKind85 = new TokenKind("GTEQ", 84, ">=");
            GTEQ = tokenKind85;
            TokenKind tokenKind86 = new TokenKind("BANGEQ", 85, "!=");
            BANGEQ = tokenKind86;
            TokenKind tokenKind87 = new TokenKind("AMPAMP", 86, "&&");
            AMPAMP = tokenKind87;
            TokenKind tokenKind88 = new TokenKind("BARBAR", 87, "||");
            BARBAR = tokenKind88;
            TokenKind tokenKind89 = new TokenKind("PLUSPLUS", 88, "++");
            PLUSPLUS = tokenKind89;
            TokenKind tokenKind90 = new TokenKind("SUBSUB", 89, "--");
            SUBSUB = tokenKind90;
            TokenKind tokenKind91 = new TokenKind("PLUS", 90, "+");
            PLUS = tokenKind91;
            TokenKind tokenKind92 = new TokenKind("SUB", 91, "-");
            SUB = tokenKind92;
            TokenKind tokenKind93 = new TokenKind("STAR", 92, "*");
            STAR = tokenKind93;
            TokenKind tokenKind94 = new TokenKind("SLASH", 93, "/");
            SLASH = tokenKind94;
            TokenKind tokenKind95 = new TokenKind("AMP", 94, "&");
            AMP = tokenKind95;
            TokenKind tokenKind96 = new TokenKind("BAR", 95, "|");
            BAR = tokenKind96;
            TokenKind tokenKind97 = new TokenKind("CARET", 96, "^");
            CARET = tokenKind97;
            TokenKind tokenKind98 = new TokenKind("PERCENT", 97, j.f121589a);
            PERCENT = tokenKind98;
            TokenKind tokenKind99 = new TokenKind("LTLT", 98, "<<");
            LTLT = tokenKind99;
            TokenKind tokenKind100 = new TokenKind("GTGT", 99, ">>");
            GTGT = tokenKind100;
            TokenKind tokenKind101 = new TokenKind("GTGTGT", 100, ">>>");
            GTGTGT = tokenKind101;
            TokenKind tokenKind102 = new TokenKind("PLUSEQ", 101, "+=");
            PLUSEQ = tokenKind102;
            TokenKind tokenKind103 = new TokenKind("SUBEQ", 102, "-=");
            SUBEQ = tokenKind103;
            TokenKind tokenKind104 = new TokenKind("STAREQ", 103, "*=");
            STAREQ = tokenKind104;
            TokenKind tokenKind105 = new TokenKind("SLASHEQ", 104, "/=");
            SLASHEQ = tokenKind105;
            TokenKind tokenKind106 = new TokenKind("AMPEQ", 105, "&=");
            AMPEQ = tokenKind106;
            TokenKind tokenKind107 = new TokenKind("BAREQ", 106, "|=");
            BAREQ = tokenKind107;
            TokenKind tokenKind108 = new TokenKind("CARETEQ", 107, "^=");
            CARETEQ = tokenKind108;
            TokenKind tokenKind109 = new TokenKind("PERCENTEQ", 108, "%=");
            PERCENTEQ = tokenKind109;
            TokenKind tokenKind110 = new TokenKind("LTLTEQ", 109, "<<=");
            LTLTEQ = tokenKind110;
            TokenKind tokenKind111 = new TokenKind("GTGTEQ", 110, ">>=");
            GTGTEQ = tokenKind111;
            TokenKind tokenKind112 = new TokenKind("GTGTGTEQ", 111, ">>>=");
            GTGTGTEQ = tokenKind112;
            TokenKind tokenKind113 = new TokenKind("MONKEYS_AT", 112, "@");
            MONKEYS_AT = tokenKind113;
            TokenKind tokenKind114 = new TokenKind("CUSTOM", 113);
            CUSTOM = tokenKind114;
            $VALUES = new TokenKind[]{tokenKind, tokenKind2, tokenKind3, tokenKind4, tokenKind5, tokenKind6, tokenKind7, tokenKind8, tokenKind9, tokenKind10, tokenKind11, tokenKind12, tokenKind13, tokenKind14, tokenKind15, tokenKind16, tokenKind17, tokenKind18, tokenKind19, tokenKind20, tokenKind21, tokenKind22, tokenKind23, tokenKind24, tokenKind25, tokenKind26, tokenKind27, tokenKind28, tokenKind29, tokenKind30, tokenKind31, tokenKind32, tokenKind33, tokenKind34, tokenKind35, tokenKind36, tokenKind37, tokenKind38, tokenKind39, tokenKind40, tokenKind41, tokenKind42, tokenKind43, tokenKind44, tokenKind45, tokenKind46, tokenKind47, tokenKind48, tokenKind49, tokenKind50, tokenKind51, tokenKind52, tokenKind53, tokenKind54, tokenKind55, tokenKind56, tokenKind57, tokenKind58, tokenKind59, tokenKind60, tokenKind61, tokenKind62, tokenKind63, tokenKind64, tokenKind65, tokenKind66, tokenKind67, tokenKind68, tokenKind69, tokenKind70, tokenKind71, tokenKind72, tokenKind73, tokenKind74, tokenKind75, tokenKind76, tokenKind77, tokenKind78, tokenKind79, tokenKind80, tokenKind81, tokenKind82, tokenKind83, tokenKind84, tokenKind85, tokenKind86, tokenKind87, tokenKind88, tokenKind89, tokenKind90, tokenKind91, tokenKind92, tokenKind93, tokenKind94, tokenKind95, tokenKind96, tokenKind97, tokenKind98, tokenKind99, tokenKind100, tokenKind101, tokenKind102, tokenKind103, tokenKind104, tokenKind105, tokenKind106, tokenKind107, tokenKind108, tokenKind109, tokenKind110, tokenKind111, tokenKind112, tokenKind113, tokenKind114};
        }

        private TokenKind(String str, int i10) {
            this(str, i10, null, Token.Tag.DEFAULT);
        }

        public static TokenKind valueOf(String str) {
            return (TokenKind) Enum.valueOf(TokenKind.class, str);
        }

        public static TokenKind[] values() {
            return (TokenKind[]) $VALUES.clone();
        }

        @Override
        public boolean accepts(TokenKind tokenKind) {
            return this == tokenKind;
        }

        @Override
        public String getKind() {
            return "Token";
        }

        @Override
        public String toString() {
            switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[ordinal()]) {
                case 1:
                    return "token.identifier";
                case 2:
                    return "token.character";
                case 3:
                    return "token.string";
                case 4:
                    return "token.integer";
                case 5:
                    return "token.long-integer";
                case 6:
                    return "token.float";
                case 7:
                    return "token.double";
                case 8:
                    return "token.bad-symbol";
                case 9:
                    return "token.end-of-input";
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                    return "'" + this.name + "'";
                default:
                    return this.name;
            }
        }

        private TokenKind(String str, int i10, String str2) {
            this(str, i10, str2, Token.Tag.DEFAULT);
        }

        private TokenKind(String str, int i10, Token.Tag tag) {
            this(str, i10, null, tag);
        }

        private TokenKind(String str, int i10, String str2, Token.Tag tag) {
            this.name = str2;
            this.tag = tag;
        }

        @Override
        public String toString(Locale locale, Messages messages) {
            if (this.name != null) {
                return toString();
            }
            return messages.getLocalizedString(locale, "compiler.misc." + toString(), new Object[0]);
        }
    }

    public Tokens(Context context) {
        context.put((Context.Key<Context.Key<Tokens>>) tokensKey, (Context.Key<Tokens>) this);
        this.names = Names.instance(context);
        for (TokenKind tokenKind : TokenKind.values()) {
            String str = tokenKind.name;
            if (str != null) {
                enterKeyword(str, tokenKind);
            } else {
                this.tokenName[tokenKind.ordinal()] = null;
            }
        }
        this.key = new TokenKind[this.maxKey + 1];
        for (int i10 = 0; i10 <= this.maxKey; i10++) {
            this.key[i10] = TokenKind.IDENTIFIER;
        }
        for (TokenKind tokenKind2 : TokenKind.values()) {
            if (tokenKind2.name != null) {
                this.key[this.tokenName[tokenKind2.ordinal()].getIndex()] = tokenKind2;
            }
        }
    }

    private void enterKeyword(String str, TokenKind tokenKind) {
        Name fromString = this.names.fromString(str);
        this.tokenName[tokenKind.ordinal()] = fromString;
        if (fromString.getIndex() > this.maxKey) {
            this.maxKey = fromString.getIndex();
        }
    }

    public static Tokens instance(Context context) {
        Tokens tokens = (Tokens) context.get(tokensKey);
        return tokens == null ? new Tokens(context) : tokens;
    }

    public TokenKind lookupKind(Name name) {
        return name.getIndex() > this.maxKey ? TokenKind.IDENTIFIER : this.key[name.getIndex()];
    }

    public TokenKind lookupKind(String str) {
        return lookupKind(this.names.fromString(str));
    }
}
