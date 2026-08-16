package org.google.googlejavaformat.java;

import com.google.common.collect.AbstractC12505c1;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.C12534j2;
import com.google.common.collect.C12557p1;
import com.google.common.collect.D1;
import com.google.common.collect.E1;
import com.google.common.collect.InterfaceC12546m2;
import com.google.common.collect.W;
import com.google.common.collect.c3;
import com.google.common.collect.e3;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import org.apache.commons.lang3.StringUtils;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.google.googlejavaformat.Input;
import org.google.googlejavaformat.InputOutput;
import org.google.googlejavaformat.Newlines;
import org.google.googlejavaformat.java.JavacTokens;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.DiagnosticCollector;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.SimpleJavaFileObject;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.Log;
import w2.H;
import w2.z;

public final class JavaInput extends Input {
    private int kN;
    private final Token[] kToToken;
    private final AbstractC12529i1<Integer, Integer> positionToColumnMap;
    private final C12557p1<Integer, Token> positionTokenMap;
    private final String text;
    private final AbstractC12521g1<Token> tokens;
    private JCTree.JCCompilationUnit unit;

    public static final class Tok implements Input.Tok {
        private final int columnI;
        private final int index;
        private final boolean isToken;
        private final Tokens.TokenKind kind;
        private final String originalText;
        private final int position;
        private final String text;

        public Tok(int index, String originalText, String text, int position, int columnI, boolean isToken, Tokens.TokenKind kind) {
            this.index = index;
            this.originalText = originalText;
            this.text = text;
            this.position = position;
            this.columnI = columnI;
            this.isToken = isToken;
            this.kind = kind;
        }

        @Override
        public int getColumn() {
            return this.columnI;
        }

        @Override
        public int getIndex() {
            return this.index;
        }

        @Override
        public String getOriginalText() {
            return this.originalText;
        }

        @Override
        public int getPosition() {
            return this.position;
        }

        @Override
        public String getText() {
            return this.text;
        }

        @Override
        public boolean isComment() {
            return isSlashSlashComment() || isSlashStarComment();
        }

        @Override
        public boolean isJavadocComment() {
            return this.text.startsWith("/**") && this.text.length() > 4;
        }

        @Override
        public boolean isNewline() {
            return Newlines.isNewline(this.text);
        }

        @Override
        public boolean isSlashSlashComment() {
            return this.text.startsWith("//");
        }

        @Override
        public boolean isSlashStarComment() {
            return this.text.startsWith("/*");
        }

        public boolean isToken() {
            return this.isToken;
        }

        public Tokens.TokenKind kind() {
            return this.kind;
        }

        @Override
        public int length() {
            return this.originalText.length();
        }

        public String toString() {
            return z.c(this).d(FirebaseAnalytics.d.f67690b0, this.index).f("text", this.text).d("position", this.position).d("columnI", this.columnI).g("isToken", this.isToken).toString();
        }
    }

    public static final class Token implements Input.Token {
        private final Tok tok;
        private final AbstractC12521g1<Tok> toksAfter;
        private final AbstractC12521g1<Tok> toksBefore;

        public Token(List<Tok> toksBefore, Tok tok, List<Tok> toksAfter) {
            this.toksBefore = AbstractC12521g1.r(toksBefore);
            this.tok = tok;
            this.toksAfter = AbstractC12521g1.r(toksAfter);
        }

        @Override
        public AbstractC12521g1<? extends Input.Tok> getToksAfter() {
            return this.toksAfter;
        }

        @Override
        public AbstractC12521g1<? extends Input.Tok> getToksBefore() {
            return this.toksBefore;
        }

        public String toString() {
            return z.c(this).f("tok", this.tok).f("toksBefore", this.toksBefore).f("toksAfter", this.toksAfter).toString();
        }

        @Override
        public Tok getTok() {
            return this.tok;
        }
    }

    public JavaInput(String text) throws FormatterException {
        this.text = (String) H.E(text);
        setLines(AbstractC12521g1.s(Newlines.lineIterator(text)));
        AbstractC12521g1<Tok> buildToks = buildToks(text);
        this.positionToColumnMap = makePositionToColumnMap(buildToks);
        AbstractC12521g1<Token> buildTokens = buildTokens(buildToks);
        this.tokens = buildTokens;
        C12557p1.c n10 = C12557p1.n();
        e3<Token> it = buildTokens.iterator();
        while (it.hasNext()) {
            Token next = it.next();
            Input.Tok endTok = JavaOutput.endTok(next);
            int position = endTok.getPosition();
            if (!endTok.getText().isEmpty()) {
                position += endTok.length() - 1;
            }
            n10.c(C12534j2.f(Integer.valueOf(JavaOutput.startTok(next).getPosition()), Integer.valueOf(position)), next);
        }
        this.positionTokenMap = n10.a();
        this.kToToken = new Token[this.kN + 1];
        e3<Token> it2 = this.tokens.iterator();
        while (it2.hasNext()) {
            Token next2 = it2.next();
            e3<? extends Input.Tok> it3 = next2.getToksBefore().iterator();
            while (it3.hasNext()) {
                Input.Tok next3 = it3.next();
                if (next3.getIndex() >= 0) {
                    this.kToToken[next3.getIndex()] = next2;
                }
            }
            this.kToToken[next2.getTok().getIndex()] = next2;
            e3<? extends Input.Tok> it4 = next2.getToksAfter().iterator();
            while (it4.hasNext()) {
                Input.Tok next4 = it4.next();
                if (next4.getIndex() >= 0) {
                    this.kToToken[next4.getIndex()] = next2;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0094, code lost:
    
        switch(r9) {
            case 0: goto L53;
            case 1: goto L53;
            case 2: goto L53;
            default: goto L34;
        };
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static AbstractC12521g1<Token> buildTokens(List<Tok> toks) {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        int size = toks.size();
        AbstractC12521g1.a m11 = AbstractC12521g1.m();
        int i10 = 0;
        while (i10 < size) {
            while (!toks.get(i10).isToken()) {
                int i11 = i10 + 1;
                Tok tok = toks.get(i10);
                m11.a(tok);
                if (isParamComment(tok)) {
                    while (toks.get(i11).isNewline()) {
                        i11++;
                    }
                }
                i10 = i11;
            }
            int i12 = i10 + 1;
            Tok tok2 = toks.get(i10);
            AbstractC12521g1.a m12 = AbstractC12521g1.m();
            while (true) {
                if (i12 < size && !toks.get(i12).isToken()) {
                    if (toks.get(i12).isSlashStarComment()) {
                        String text = tok2.getText();
                        text.hashCode();
                        char c10 = '\uffff';
                        switch (text.hashCode()) {
                            case 40:
                                if (text.equals("(")) {
                                    c10 = 0;
                                    break;
                                }
                                break;
                            case 46:
                                if (text.equals(".")) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case 60:
                                if (text.equals("<")) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                        }
                    }
                    if (toks.get(i12).isJavadocComment()) {
                        String text2 = tok2.getText();
                        text2.hashCode();
                        if (text2.equals(";")) {
                        }
                    }
                    if (isParamComment(toks.get(i12))) {
                        m10.a(new Token(m11.e(), tok2, m12.e()));
                        i10 = i12 + 1;
                        m11 = AbstractC12521g1.m().a(toks.get(i12));
                        while (toks.get(i10).isNewline()) {
                            i10++;
                        }
                    } else {
                        int i13 = i12 + 1;
                        Tok tok3 = toks.get(i12);
                        m12.a(tok3);
                        if (Newlines.containsBreaks(tok3.getText())) {
                            i12 = i13;
                        } else {
                            i12 = i13;
                        }
                    }
                }
            }
            m10.a(new Token(m11.e(), tok2, m12.e()));
            m11 = AbstractC12521g1.m();
            i10 = i12;
        }
        return m10.e();
    }

    private AbstractC12521g1<Tok> buildToks(String text) throws FormatterException {
        AbstractC12521g1<Tok> buildToks = buildToks(text, AbstractC12564r1.z());
        this.kN = ((Tok) D1.w(buildToks)).getIndex();
        computeRanges(buildToks);
        return buildToks;
    }

    private static boolean isParamComment(Tok tok) {
        return tok.isSlashStarComment() && tok.getText().matches("\\/\\*[A-Za-z0-9\\s_\\-]+=\\s*\\*\\/");
    }

    public static boolean lambda$buildToks$0(JCDiagnostic jCDiagnostic) {
        return jCDiagnostic.getKind() == Diagnostic.Kind.ERROR;
    }

    private static AbstractC12529i1<Integer, Integer> makePositionToColumnMap(List<Tok> toks) {
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        for (Tok tok : toks) {
            i10.i(Integer.valueOf(tok.getPosition()), Integer.valueOf(tok.getColumn()));
        }
        return i10.a();
    }

    private static int updateColumn(int columnI, String originalTokText) {
        Integer num = (Integer) E1.H(Newlines.lineOffsetIterator(originalTokText));
        return num.intValue() > 0 ? originalTokText.length() - num.intValue() : columnI + originalTokText.length();
    }

    public C12534j2<Integer> characterRangeToTokenRange(int offset, int length) throws FormatterException {
        int i10 = offset + length;
        if (i10 > this.text.length()) {
            throw new FormatterException(String.format("error: invalid length %d, offset + length (%d) is outside the file", Integer.valueOf(length), Integer.valueOf(i10)));
        }
        if (length < 0) {
            return InputOutput.EMPTY_RANGE;
        }
        if (length == 0) {
            length = 1;
        }
        AbstractC12505c1<Token> values = getPositionTokenMap().d(C12534j2.g(Integer.valueOf(offset), Integer.valueOf(offset + length))).e().values();
        return values.isEmpty() ? InputOutput.EMPTY_RANGE : C12534j2.g(Integer.valueOf(values.iterator().next().getTok().getIndex()), Integer.valueOf(((Token) D1.w(values)).getTok().getIndex() + 1));
    }

    public InterfaceC12546m2<Integer> characterRangesToTokenRanges(Collection<C12534j2<Integer>> characterRanges) throws FormatterException {
        c3 r10 = c3.r();
        Iterator<C12534j2<Integer>> it = characterRanges.iterator();
        while (it.hasNext()) {
            C12534j2<Integer> e10 = it.next().e(W.c());
            r10.o(characterRangeToTokenRange(e10.z().intValue(), e10.L().intValue() - e10.z().intValue()));
        }
        return r10;
    }

    @Override
    public int getColumnNumber(int inputPosition) {
        w2.W.z(this.unit, "Expected compilation unit to be set.", new Object[0]);
        return this.unit.getLineMap().getColumnNumber(inputPosition);
    }

    @Override
    public int getLineNumber(int inputPosition) {
        w2.W.z(this.unit, "Expected compilation unit to be set.", new Object[0]);
        return this.unit.getLineMap().getLineNumber(inputPosition);
    }

    @Override
    public AbstractC12529i1<Integer, Integer> getPositionToColumnMap() {
        return this.positionToColumnMap;
    }

    @Override
    public C12557p1<Integer, Token> getPositionTokenMap() {
        return this.positionTokenMap;
    }

    @Override
    public String getText() {
        return this.text;
    }

    public Token getToken(int k10) {
        return this.kToToken[k10];
    }

    @Override
    public AbstractC12521g1<? extends Input.Token> getTokens() {
        return this.tokens;
    }

    public int getkN() {
        return this.kN;
    }

    public void setCompilationUnit(JCTree.JCCompilationUnit unit) {
        this.unit = unit;
    }

    @Override
    public String toString() {
        return z.c(this).f("tokens", this.tokens).f("super", super.toString()).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AbstractC12521g1<Tok> buildToks(final String str, AbstractC12564r1<Tokens.TokenKind> abstractC12564r1) throws FormatterException {
        int i10;
        String str2;
        String str3;
        String str4;
        String str5;
        boolean z10;
        boolean z11;
        int i11;
        int i12;
        int i13;
        AbstractC12564r1 e10 = AbstractC12564r1.m().c(abstractC12564r1).g(Tokens.TokenKind.EOF).e();
        Context context = new Context();
        new JavacFileManager(context, true, StandardCharsets.UTF_8);
        context.put((Class<Class>) DiagnosticListener.class, (Class) new DiagnosticCollector());
        Log instance = Log.instance(context);
        instance.useSource(new SimpleJavaFileObject(URI.create("Source.java"), JavaFileObject.Kind.SOURCE) {
            @Override
            public CharSequence getCharContent(boolean ignoreEncodingErrors) throws IOException {
                return str;
            }
        });
        Log.DeferredDiagnosticHandler deferredDiagnosticHandler = new Log.DeferredDiagnosticHandler(instance);
        AbstractC12521g1<JavacTokens.RawTok> tokens = JavacTokens.getTokens(str, context, e10);
        if (deferredDiagnosticHandler.getDiagnostics().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$buildToks$0;
                lambda$buildToks$0 = JavaInput.lambda$buildToks$0((JCDiagnostic) obj);
                return lambda$buildToks$0;
            }
        })) {
            return AbstractC12521g1.y(new Tok(0, "", "", 0, 0, true, null));
        }
        ArrayList arrayList = new ArrayList();
        e3<JavacTokens.RawTok> it = tokens.iterator();
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (it.hasNext()) {
            JavacTokens.RawTok next = it.next();
            if (e10.contains(next.kind())) {
                break;
            }
            String substring = str.substring(next.pos(), next.endPos());
            String stringVal = next.kind() == Tokens.TokenKind.STRINGLITERAL ? next.stringVal() : substring;
            char charAt = stringVal.charAt(i14);
            ArrayList<String> arrayList2 = new ArrayList();
            if (Character.isWhitespace(charAt)) {
                Iterator<String> lineIterator = Newlines.lineIterator(substring);
                while (lineIterator.hasNext()) {
                    String next2 = lineIterator.next();
                    String lineEnding = Newlines.getLineEnding(next2);
                    if (lineEnding != null) {
                        String substring2 = next2.substring(i14, next2.length() - lineEnding.length());
                        if (!substring2.isEmpty()) {
                            arrayList2.add(substring2);
                        }
                        arrayList2.add(lineEnding);
                    } else if (!next2.isEmpty()) {
                        arrayList2.add(next2);
                    }
                }
                i10 = i14;
            } else {
                if (!stringVal.startsWith("'") && !stringVal.startsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
                    if (!stringVal.startsWith("//") && !stringVal.startsWith("/*")) {
                        if (!Character.isJavaIdentifierStart(charAt) && !Character.isDigit(charAt) && (charAt != '.' || stringVal.length() <= 1 || !Character.isDigit(stringVal.charAt(1)))) {
                            char[] charArray = stringVal.toCharArray();
                            int length = charArray.length;
                            for (int i18 = i14; i18 < length; i18++) {
                                arrayList2.add(String.valueOf(charArray[i18]));
                            }
                        } else {
                            arrayList2.add(stringVal);
                        }
                    } else {
                        if (stringVal.startsWith("//") && (substring.endsWith("\n") || substring.endsWith(StringUtils.CR))) {
                            str2 = Newlines.getLineEnding(substring);
                            stringVal = stringVal.substring(i14, stringVal.length() - str2.length());
                            substring = substring.substring(i14, substring.length() - str2.length());
                        } else {
                            str2 = null;
                        }
                        arrayList2.add(substring);
                        str3 = substring;
                        str4 = stringVal;
                        str5 = str2;
                        z10 = i14;
                        z11 = true;
                        if (arrayList2.size() != 1) {
                            if (z11) {
                                i13 = i16;
                                i16++;
                            } else {
                                i13 = -1;
                            }
                            String str6 = str3;
                            arrayList.add(new Tok(i13, str3, str4, i17, i15, z10, next.kind()));
                            i17 += str6.length();
                            i11 = updateColumn(i15, str6);
                        } else {
                            String str7 = str3;
                            if (arrayList2.size() != 1 && !str4.equals(str7)) {
                                throw new FormatterException("Unicode escapes not allowed in whitespace or multi-character operators");
                            }
                            for (String str8 : arrayList2) {
                                if (z11) {
                                    i12 = i16;
                                    i16++;
                                } else {
                                    i12 = -1;
                                }
                                arrayList.add(new Tok(i12, str8, str8, i17, i15, z10, null));
                                i17 += str8.length();
                                i15 = updateColumn(i15, str7);
                            }
                            i11 = i15;
                        }
                        if (str5 == null) {
                            arrayList.add(new Tok(-1, str5, str5, i17, i11, false, null));
                            i17 += str5.length();
                            i15 = 0;
                        } else {
                            i15 = i11;
                        }
                        i14 = 0;
                    }
                } else {
                    arrayList2.add(substring);
                }
                i10 = 1;
            }
            str3 = substring;
            str4 = stringVal;
            str5 = null;
            z11 = i10 == true ? 1 : 0;
            z10 = i10;
            if (arrayList2.size() != 1) {
            }
            if (str5 == null) {
            }
            i14 = 0;
        }
        arrayList.add(new Tok(i16, "", "", i17, i15, true, null));
        return AbstractC12521g1.r(arrayList);
    }
}
