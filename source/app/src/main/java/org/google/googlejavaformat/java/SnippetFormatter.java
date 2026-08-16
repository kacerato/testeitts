package org.google.googlejavaformat.java;

import com.google.common.collect.C12534j2;
import com.google.common.collect.W;
import com.google.common.collect.c3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;
import w2.AbstractC15885e;
import w2.C15883c;
import w2.H;

public class SnippetFormatter {
    private static final int INDENTATION_SIZE = 2;
    private static final AbstractC15885e NOT_WHITESPACE = AbstractC15885e.X().F();
    private final Formatter formatter = new Formatter();

    public enum SnippetKind {
        COMPILATION_UNIT,
        CLASS_BODY_DECLARATIONS,
        STATEMENTS,
        EXPRESSION
    }

    public class SnippetWrapper {
        final StringBuilder contents;
        int offset;

        private SnippetWrapper() {
            this.contents = new StringBuilder();
        }

        public SnippetWrapper append(String str) {
            this.contents.append(str);
            return this;
        }

        public SnippetWrapper appendSource(String source) {
            this.offset = this.contents.length();
            this.contents.append(source);
            return this;
        }

        public void closeBraces(int initialIndent) {
            while (true) {
                initialIndent--;
                if (initialIndent < 0) {
                    return;
                }
                StringBuilder sb2 = this.contents;
                sb2.append("\n");
                sb2.append(SnippetFormatter.this.createIndentationString(initialIndent));
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
            }
        }
    }

    private static C12534j2<Integer> offsetRange(C12534j2<Integer> range, int offset) {
        C12534j2<Integer> e10 = range.e(W.c());
        return C12534j2.g(Integer.valueOf(e10.z().intValue() + offset), Integer.valueOf(e10.L().intValue() + offset));
    }

    private static List<C12534j2<Integer>> offsetRanges(List<C12534j2<Integer>> ranges, int offset) {
        ArrayList arrayList = new ArrayList();
        Iterator<C12534j2<Integer>> it = ranges.iterator();
        while (it.hasNext()) {
            arrayList.add(offsetRange(it.next(), offset));
        }
        return arrayList;
    }

    private SnippetWrapper snippetWrapper(SnippetKind kind, String source, int initialIndent) {
        int ordinal = kind.ordinal();
        int i10 = 1;
        if (ordinal == 0) {
            SnippetWrapper snippetWrapper = new SnippetWrapper();
            while (i10 <= initialIndent) {
                snippetWrapper.append("class Dummy {\n").append(createIndentationString(i10));
                i10++;
            }
            snippetWrapper.appendSource(source);
            snippetWrapper.closeBraces(initialIndent);
            return snippetWrapper;
        }
        if (ordinal == 1) {
            SnippetWrapper snippetWrapper2 = new SnippetWrapper();
            while (i10 <= initialIndent) {
                snippetWrapper2.append("class Dummy {\n").append(createIndentationString(i10));
                i10++;
            }
            snippetWrapper2.appendSource(source);
            snippetWrapper2.closeBraces(initialIndent);
            return snippetWrapper2;
        }
        int i11 = 2;
        if (ordinal == 2) {
            SnippetWrapper snippetWrapper3 = new SnippetWrapper();
            snippetWrapper3.append("class Dummy {\n").append(createIndentationString(1));
            while (i11 <= initialIndent) {
                snippetWrapper3.append("{\n").append(createIndentationString(i11));
                i11++;
            }
            snippetWrapper3.appendSource(source);
            snippetWrapper3.closeBraces(initialIndent);
            return snippetWrapper3;
        }
        if (ordinal != 3) {
            throw new IllegalArgumentException("Unknown snippet kind: " + ((Object) kind));
        }
        SnippetWrapper snippetWrapper4 = new SnippetWrapper();
        snippetWrapper4.append("class Dummy {\n").append(createIndentationString(1));
        while (i11 <= initialIndent) {
            snippetWrapper4.append("{\n").append(createIndentationString(i11));
            i11++;
        }
        snippetWrapper4.append("Object o = ");
        snippetWrapper4.appendSource(source);
        snippetWrapper4.append(";");
        snippetWrapper4.closeBraces(initialIndent);
        return snippetWrapper4;
    }

    private static List<Replacement> toReplacements(String source, String replacement) {
        AbstractC15885e abstractC15885e = NOT_WHITESPACE;
        if (!abstractC15885e.P(source).equals(abstractC15885e.P(replacement))) {
            throw new IllegalArgumentException("source = \"" + source + "\", replacement = \"" + replacement + JavadocConstants.ANCHOR_PREFIX_END);
        }
        ArrayList arrayList = new ArrayList();
        int n10 = abstractC15885e.n(source);
        int n11 = abstractC15885e.n(replacement);
        if (n10 != 0 || n11 != 0) {
            arrayList.add(Replacement.create(C12534j2.g(0, Integer.valueOf(n10)), replacement.substring(0, n11)));
        }
        while (n10 != -1 && n11 != -1) {
            AbstractC15885e abstractC15885e2 = NOT_WHITESPACE;
            int i10 = n10 + 1;
            int o10 = abstractC15885e2.o(source, i10);
            int i11 = n11 + 1;
            int o11 = abstractC15885e2.o(replacement, i11);
            if (o10 == -1 || o11 == -1) {
                break;
            }
            if (o10 - n10 != o11 - n11 || !source.substring(i10, o10).equals(replacement.substring(i11, o11))) {
                arrayList.add(Replacement.create(C12534j2.g(Integer.valueOf(i10), Integer.valueOf(o10)), replacement.substring(i11, o11)));
            }
            n11 = o11;
            n10 = o10;
        }
        return arrayList;
    }

    public String createIndentationString(int indentationLevel) {
        H.k(indentationLevel >= 0, "Indentation level cannot be less than zero. Given: %s", indentationLevel);
        int i10 = indentationLevel * 2;
        StringBuilder sb2 = new StringBuilder(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(C15883c.f126249O);
        }
        return sb2.toString();
    }

    public List<Replacement> format(SnippetKind kind, String source, List<C12534j2<Integer>> ranges, int initialIndent, boolean includeComments) throws FormatterException {
        c3 r10 = c3.r();
        Iterator<C12534j2<Integer>> it = ranges.iterator();
        while (it.hasNext()) {
            r10.o(it.next());
        }
        if (includeComments) {
            if (kind == SnippetKind.COMPILATION_UNIT) {
                return this.formatter.getFormatReplacements(source, ranges);
            }
            throw new IllegalArgumentException("comment formatting is only supported for compilation units");
        }
        SnippetWrapper snippetWrapper = snippetWrapper(kind, source, initialIndent);
        String formatSource = this.formatter.formatSource(snippetWrapper.contents.toString(), offsetRanges(ranges, snippetWrapper.offset));
        List<Replacement> replacements = toReplacements(source, formatSource.substring(snippetWrapper.offset, formatSource.length() - ((snippetWrapper.contents.length() - snippetWrapper.offset) - source.length())));
        ArrayList arrayList = new ArrayList();
        for (Replacement replacement : replacements) {
            if (r10.i(replacement.getReplaceRange())) {
                arrayList.add(replacement);
            }
        }
        return arrayList;
    }
}
