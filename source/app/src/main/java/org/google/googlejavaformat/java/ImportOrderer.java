package org.google.googlejavaformat.java;

import com.android.tools.r8.kotlin.C10789h1;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.AbstractC12588x1;
import com.google.common.collect.D1;
import com.google.common.collect.e3;
import java.util.ArrayList;
import java.util.function.Predicate;
import org.google.googlejavaformat.Newlines;
import org.google.googlejavaformat.java.JavaInput;
import org.openjdk.tools.javac.parser.Tokens;
import w2.AbstractC15885e;
import w2.C;
import w2.C15883c;
import w2.H;

public class ImportOrderer {
    private static final AbstractC12564r1<Tokens.TokenKind> CLASS_START = AbstractC12564r1.C(Tokens.TokenKind.CLASS, Tokens.TokenKind.INTERFACE, Tokens.TokenKind.ENUM);
    private static final AbstractC12564r1<String> IMPORT_OR_CLASS_START = AbstractC12564r1.D("import", "class", "interface", "enum");
    private final String lineSeparator;
    private final String text;
    private final AbstractC12521g1<JavaInput.Tok> toks;

    public class Import implements Comparable<Import> {
        final String imported;
        final boolean isStatic;
        final String trailing;

        public Import(String imported, String trailing, boolean isStatic) {
            this.imported = imported;
            this.trailing = trailing.trim();
            this.isStatic = isStatic;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("import ");
            if (this.isStatic) {
                sb2.append("static ");
            }
            sb2.append(this.imported);
            sb2.append(';');
            if (!this.trailing.isEmpty()) {
                sb2.append(C15883c.f126249O);
                sb2.append(this.trailing);
            }
            sb2.append(ImportOrderer.this.lineSeparator);
            return sb2.toString();
        }

        @Override
        public int compareTo(Import that) {
            boolean z10 = this.isStatic;
            if (z10 != that.isStatic) {
                return z10 ? -1 : 1;
            }
            return this.imported.compareTo(that.imported);
        }
    }

    public static class ImportsAndIndex {
        final AbstractC12588x1<Import> imports;
        final int index;

        public ImportsAndIndex(AbstractC12588x1<Import> imports, int index) {
            this.imports = imports;
            this.index = index;
        }
    }

    public static class StringAndIndex {
        private final int index;
        private final String string;

        public StringAndIndex(String string, int index) {
            this.string = string;
            this.index = index;
        }
    }

    private ImportOrderer(String text, AbstractC12521g1<JavaInput.Tok> toks) throws FormatterException {
        this.text = text;
        this.toks = toks;
        this.lineSeparator = Newlines.guessLineSeparator(text);
    }

    private C<Integer> findIdentifier(int start, AbstractC12564r1<String> identifiers) {
        while (start < this.toks.size()) {
            if (isIdentifierToken(start) && identifiers.contains(tokenAt(start))) {
                return C.f(Integer.valueOf(start));
            }
            start++;
        }
        return C.a();
    }

    private boolean isIdentifierToken(int i10) {
        String str = tokenAt(i10);
        return !str.isEmpty() && Character.isJavaIdentifierStart(str.codePointAt(0));
    }

    private boolean isNewlineToken(int i10) {
        return this.toks.get(i10).isNewline();
    }

    private boolean isSlashSlashCommentToken(int i10) {
        return this.toks.get(i10).isSlashSlashComment();
    }

    private boolean isSpaceToken(int i10) {
        String str = tokenAt(i10);
        return !str.isEmpty() && " \t\f".indexOf(str.codePointAt(0)) >= 0;
    }

    public static boolean lambda$reorderImports$0(String str) {
        return !str.isEmpty();
    }

    public static String reorderImports(String text) throws FormatterException {
        return new ImportOrderer(text, JavaInput.buildToks(text, CLASS_START)).reorderImports();
    }

    private String reorderedImportsString(AbstractC12588x1<Import> imports) {
        H.e(!imports.isEmpty(), "imports");
        boolean z10 = imports.iterator().next().isStatic;
        StringBuilder sb2 = new StringBuilder();
        e3<Import> it = imports.iterator();
        while (it.hasNext()) {
            Import next = it.next();
            if (z10 && !next.isStatic) {
                sb2.append(this.lineSeparator);
            }
            z10 = next.isStatic;
            sb2.append((Object) next);
        }
        return sb2.toString();
    }

    private StringAndIndex scanImported(int start) throws FormatterException {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            H.g0(isIdentifierToken(start));
            sb2.append(tokenAt(start));
            int i10 = start + 1;
            if (!tokenAt(i10).equals(".")) {
                return new StringAndIndex(sb2.toString(), i10);
            }
            sb2.append('.');
            int i11 = start + 2;
            if (tokenAt(i11).equals("*")) {
                sb2.append('*');
                return new StringAndIndex(sb2.toString(), start + 3);
            }
            if (!isIdentifierToken(i11)) {
                throw new FormatterException("Could not parse imported name, at: " + tokenAt(i11));
            }
            start = i11;
        }
    }

    private ImportsAndIndex scanImports(int i10) throws FormatterException {
        AbstractC12588x1.a g02 = AbstractC12588x1.g0();
        int i11 = i10;
        while (i10 < this.toks.size() && tokenAt(i10).equals("import")) {
            int i12 = i10 + 1;
            if (isSpaceToken(i12)) {
                i12 = i10 + 2;
            }
            boolean equals = tokenAt(i12).equals("static");
            if (equals) {
                int i13 = i12 + 1;
                i12 = isSpaceToken(i13) ? i12 + 2 : i13;
            }
            if (!isIdentifierToken(i12)) {
                throw new FormatterException("Unexpected token after import: " + tokenAt(i12));
            }
            StringAndIndex scanImported = scanImported(i12);
            String str = scanImported.string;
            i11 = scanImported.index;
            if (isSpaceToken(i11)) {
                i11++;
            }
            if (!tokenAt(i11).equals(";")) {
                throw new FormatterException("Expected ; after import");
            }
            while (tokenAt(i11).equals(";")) {
                i11++;
            }
            StringBuilder sb2 = new StringBuilder();
            if (isSpaceToken(i11)) {
                sb2.append(tokenAt(i11));
                i11++;
            }
            if (isSlashSlashCommentToken(i11)) {
                sb2.append(tokenAt(i11));
                i11++;
            }
            if (isNewlineToken(i11)) {
                sb2.append(tokenAt(i11));
                i11++;
            }
            g02.g(new Import(str, sb2.toString(), equals));
            i10 = i11;
            while (true) {
                if (isNewlineToken(i10) || isSpaceToken(i10)) {
                    i10++;
                }
            }
        }
        return new ImportsAndIndex(g02.e(), i11);
    }

    private String tokString(int start, int end) {
        StringBuilder sb2 = new StringBuilder();
        while (start < end) {
            sb2.append(this.toks.get(start).getOriginalText());
            start++;
        }
        return sb2.toString();
    }

    private String tokenAt(int i10) {
        return this.toks.get(i10).getOriginalText();
    }

    private int unindent(int i10) {
        if (i10 > 0) {
            int i11 = i10 - 1;
            if (isSpaceToken(i11)) {
                return i11;
            }
        }
        return i10;
    }

    private String reorderImports() throws FormatterException {
        AbstractC12564r1<String> abstractC12564r1 = IMPORT_OR_CLASS_START;
        C<Integer> findIdentifier = findIdentifier(0, abstractC12564r1);
        if (findIdentifier.e() && tokenAt(findIdentifier.d().intValue()).equals("import")) {
            int intValue = findIdentifier.d().intValue();
            int unindent = unindent(intValue);
            ImportsAndIndex scanImports = scanImports(intValue);
            int i10 = scanImports.index;
            C<Integer> findIdentifier2 = findIdentifier(i10, abstractC12564r1);
            if (findIdentifier2.e() && tokenAt(findIdentifier2.d().intValue()).equals("import")) {
                throw new FormatterException("Imports not contiguous (perhaps a comment separates them?)");
            }
            StringBuilder sb2 = new StringBuilder();
            String str = tokString(0, unindent);
            sb2.append(str);
            if (!str.isEmpty() && Newlines.getLineEnding(str) == null) {
                sb2.append(this.lineSeparator);
                sb2.append(this.lineSeparator);
            }
            sb2.append(reorderedImportsString(scanImports.imports));
            ArrayList arrayList = new ArrayList();
            arrayList.add(AbstractC15885e.X().V(tokString(i10, this.toks.size())));
            if (!this.toks.isEmpty()) {
                JavaInput.Tok tok = (JavaInput.Tok) D1.w(this.toks);
                arrayList.add(this.text.substring(tok.getPosition() + tok.length()));
            }
            if (arrayList.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$reorderImports$0;
                    lambda$reorderImports$0 = ImportOrderer.lambda$reorderImports$0((String) obj);
                    return lambda$reorderImports$0;
                }
            })) {
                sb2.append(this.lineSeparator);
                arrayList.forEach(new C10789h1(sb2));
            }
            return sb2.toString();
        }
        return this.text;
    }
}
