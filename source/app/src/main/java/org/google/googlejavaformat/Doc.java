package org.google.googlejavaformat;

import com.google.common.collect.C12534j2;
import com.google.common.collect.D1;
import com.google.common.collect.E1;
import com.google.common.collect.W;
import f3.C13183b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.transform.OutputKeys;
import org.google.googlejavaformat.Indent;
import org.google.googlejavaformat.Input;
import org.google.googlejavaformat.Output;
import w2.C;
import w2.z;

public abstract class Doc {
    private static final C12534j2<Integer> EMPTY_RANGE = C12534j2.g(-1, -1);
    private static final W<Integer> INTEGERS = W.c();
    private boolean widthComputed = false;
    private float width = 0.0f;
    private boolean flatComputed = false;
    private String flat = "";
    private boolean rangeComputed = false;
    private C12534j2<Integer> range = EMPTY_RANGE;

    public static final class Break extends Doc implements Op {
        boolean broken;
        private final FillMode fillMode;
        private final String flat;
        int newIndent;
        private final C<Output.BreakTag> optTag;
        private final Indent plusIndent;

        private Break(FillMode fillMode, String flat, Indent plusIndent, C<Output.BreakTag> optTag) {
            this.fillMode = fillMode;
            this.flat = flat;
            this.plusIndent = plusIndent;
            this.optTag = optTag;
        }

        public static Break make(FillMode fillMode, String flat, Indent plusIndent) {
            return new Break(fillMode, flat, plusIndent, C.a());
        }

        public static Break makeForced() {
            return make(FillMode.FORCED, "", Indent.Const.ZERO);
        }

        @Override
        public void add(DocBuilder builder) {
            builder.breakDoc(this);
        }

        public State computeBreaks(State state, int lastIndent, boolean broken) {
            if (this.optTag.e()) {
                this.optTag.d().recordBroken(broken);
            }
            if (broken) {
                this.broken = true;
                int max = Math.max(lastIndent + this.plusIndent.eval(), 0);
                this.newIndent = max;
                return state.withColumn(max);
            }
            this.broken = false;
            this.newIndent = -1;
            return state.withColumn(state.column + this.flat.length());
        }

        @Override
        public String computeFlat() {
            return this.flat;
        }

        @Override
        public C12534j2<Integer> computeRange() {
            return Doc.EMPTY_RANGE;
        }

        @Override
        public float computeWidth() {
            if (isForced()) {
                return Float.POSITIVE_INFINITY;
            }
            return this.flat.length();
        }

        public int getPlusIndent() {
            return this.plusIndent.eval();
        }

        public boolean isForced() {
            return this.fillMode == FillMode.FORCED;
        }

        public String toString() {
            return z.c(this).f("fillMode", this.fillMode).f("flat", this.flat).f("plusIndent", this.plusIndent).f("optTag", this.optTag).toString();
        }

        @Override
        public void write(Output output) {
            if (!this.broken) {
                output.append(this.flat, range());
            } else {
                output.append("\n", Doc.EMPTY_RANGE);
                output.indent(this.newIndent);
            }
        }

        public static Break make(FillMode fillMode, String flat, Indent plusIndent, C<Output.BreakTag> optTag) {
            return new Break(fillMode, flat, plusIndent, optTag);
        }

        @Override
        public State computeBreaks(CommentsHelper commentsHelper, int maxWidth, State state) {
            throw new UnsupportedOperationException("Did you mean computeBreaks(State, int, boolean)?");
        }
    }

    public enum FillMode {
        UNIFIED,
        INDEPENDENT,
        FORCED
    }

    public static final class Level extends Doc {
        private final Indent plusIndent;
        private final List<Doc> docs = new ArrayList();
        boolean oneLine = false;
        List<List<Doc>> splits = new ArrayList();
        List<Break> breaks = new ArrayList();

        private Level(Indent plusIndent) {
            this.plusIndent = plusIndent;
        }

        private static State computeBreakAndSplit(CommentsHelper commentsHelper, int maxWidth, State state, C<Break> optBreakDoc, List<Doc> split) {
            float width = optBreakDoc.e() ? optBreakDoc.d().getWidth() : 0.0f;
            float width2 = getWidth(split);
            boolean z10 = (optBreakDoc.e() && optBreakDoc.d().fillMode == FillMode.UNIFIED) || state.mustBreak || (((float) state.column) + width) + width2 > ((float) maxWidth);
            if (optBreakDoc.e()) {
                state = optBreakDoc.d().computeBreaks(state, state.lastIndent, z10);
            }
            boolean z11 = ((float) state.column) + width2 <= ((float) maxWidth);
            State computeSplit = computeSplit(commentsHelper, maxWidth, split, state.withMustBreak(false));
            return !z11 ? computeSplit.withMustBreak(true) : computeSplit;
        }

        private State computeBroken(CommentsHelper commentsHelper, int maxWidth, State state) {
            splitByBreaks(this.docs, this.splits, this.breaks);
            int i10 = 0;
            State computeBreakAndSplit = computeBreakAndSplit(commentsHelper, maxWidth, state, C.a(), this.splits.get(0));
            while (i10 < this.breaks.size()) {
                C f10 = C.f(this.breaks.get(i10));
                i10++;
                computeBreakAndSplit = computeBreakAndSplit(commentsHelper, maxWidth, computeBreakAndSplit, f10, this.splits.get(i10));
            }
            return computeBreakAndSplit;
        }

        private static State computeSplit(CommentsHelper commentsHelper, int maxWidth, List<Doc> docs, State state) {
            Iterator<Doc> it = docs.iterator();
            while (it.hasNext()) {
                state = it.next().computeBreaks(commentsHelper, maxWidth, state);
            }
            return state;
        }

        public static float getWidth(List<Doc> docs) {
            Iterator<Doc> it = docs.iterator();
            float f10 = 0.0f;
            while (it.hasNext()) {
                f10 += it.next().getWidth();
            }
            return f10;
        }

        public static Level make(Indent plusIndent) {
            return new Level(plusIndent);
        }

        private static void splitByBreaks(List<Doc> docs, List<List<Doc>> splits, List<Break> breaks) {
            splits.clear();
            breaks.clear();
            splits.add(new ArrayList());
            for (Doc doc : docs) {
                if (doc instanceof Break) {
                    breaks.add((Break) doc);
                    splits.add(new ArrayList());
                } else {
                    ((List) D1.w(splits)).add(doc);
                }
            }
        }

        private static C12534j2<Integer> union(C12534j2<Integer> x10, C12534j2<Integer> y10) {
            return x10.v() ? y10 : y10.v() ? x10 : x10.G(y10).e(Doc.INTEGERS);
        }

        private void writeFilled(Output output) {
            int i10 = 0;
            Iterator<Doc> it = this.splits.get(0).iterator();
            while (it.hasNext()) {
                it.next().write(output);
            }
            while (i10 < this.breaks.size()) {
                this.breaks.get(i10).write(output);
                i10++;
                Iterator<Doc> it2 = this.splits.get(i10).iterator();
                while (it2.hasNext()) {
                    it2.next().write(output);
                }
            }
        }

        public void add(Doc doc) {
            this.docs.add(doc);
        }

        @Override
        public State computeBreaks(CommentsHelper commentsHelper, int maxWidth, State state) {
            float width = getWidth();
            int i10 = state.column;
            if (i10 + width > maxWidth) {
                return state.withColumn(computeBroken(commentsHelper, maxWidth, new State(state.indent + this.plusIndent.eval(), state.column)).column);
            }
            this.oneLine = true;
            return state.withColumn(i10 + ((int) width));
        }

        @Override
        public String computeFlat() {
            StringBuilder sb2 = new StringBuilder();
            Iterator<Doc> it = this.docs.iterator();
            while (it.hasNext()) {
                sb2.append(it.next().getFlat());
            }
            return sb2.toString();
        }

        @Override
        public C12534j2<Integer> computeRange() {
            C12534j2<Integer> c12534j2 = Doc.EMPTY_RANGE;
            Iterator<Doc> it = this.docs.iterator();
            while (it.hasNext()) {
                c12534j2 = union(c12534j2, it.next().range());
            }
            return c12534j2;
        }

        @Override
        public float computeWidth() {
            Iterator<Doc> it = this.docs.iterator();
            float f10 = 0.0f;
            while (it.hasNext()) {
                f10 += it.next().getWidth();
            }
            return f10;
        }

        public String toString() {
            return z.c(this).f("plusIndent", this.plusIndent).f("docs", this.docs).toString();
        }

        @Override
        public void write(Output output) {
            if (this.oneLine) {
                output.append(getFlat(), range());
            } else {
                writeFilled(output);
            }
        }
    }

    public static final class Space extends Doc implements Op {
        private static final Space SPACE = new Space();

        private Space() {
        }

        public static Space make() {
            return SPACE;
        }

        @Override
        public void add(DocBuilder builder) {
            builder.add(this);
        }

        @Override
        public State computeBreaks(CommentsHelper commentsHelper, int maxWidth, State state) {
            return state.withColumn(state.column + 1);
        }

        @Override
        public String computeFlat() {
            return " ";
        }

        @Override
        public C12534j2<Integer> computeRange() {
            return Doc.EMPTY_RANGE;
        }

        @Override
        public float computeWidth() {
            return 1.0f;
        }

        public String toString() {
            return z.c(this).toString();
        }

        @Override
        public void write(Output output) {
            output.append(" ", range());
        }
    }

    public static final class Tok extends Doc implements Op {
        String text;
        private final Input.Tok tok;

        private Tok(Input.Tok tok) {
            this.tok = tok;
        }

        public static Tok make(Input.Tok tok) {
            return new Tok(tok);
        }

        @Override
        public void add(DocBuilder builder) {
            builder.add(this);
        }

        @Override
        public State computeBreaks(CommentsHelper commentsHelper, int maxWidth, State state) {
            String rewrite = commentsHelper.rewrite(this.tok, maxWidth, state.column);
            this.text = rewrite;
            return state.withColumn(state.column + (rewrite.length() - ((Integer) E1.H(Newlines.lineOffsetIterator(this.text))).intValue()));
        }

        @Override
        public String computeFlat() {
            if (!this.tok.isSlashSlashComment() || this.tok.getOriginalText().startsWith("// ")) {
                return this.tok.getOriginalText();
            }
            return "// " + this.tok.getOriginalText().substring(2);
        }

        @Override
        public C12534j2<Integer> computeRange() {
            return C12534j2.F(Integer.valueOf(this.tok.getIndex())).e(Doc.INTEGERS);
        }

        @Override
        public float computeWidth() {
            int firstBreak = Newlines.firstBreak(this.tok.getOriginalText());
            if (this.tok.isComment()) {
                if (firstBreak > 0) {
                    return firstBreak;
                }
                return (!this.tok.isSlashSlashComment() || this.tok.getOriginalText().startsWith("// ")) ? this.tok.length() : this.tok.length() + 1;
            }
            if (firstBreak != -1) {
                return Float.POSITIVE_INFINITY;
            }
            return this.tok.length();
        }

        public String toString() {
            return z.c(this).f("tok", this.tok).toString();
        }

        @Override
        public void write(Output output) {
            output.append(this.text, range());
        }
    }

    public static final class Token extends Doc implements Op {
        private final C<Indent> breakAndIndentTrailingComment;
        private final Indent plusIndentCommentsBefore;
        private final RealOrImaginary realOrImaginary;
        private final Input.Token token;

        public enum RealOrImaginary {
            REAL,
            IMAGINARY;

            public boolean isReal() {
                return this == REAL;
            }
        }

        private Token(Input.Token token, RealOrImaginary realOrImaginary, Indent plusIndentCommentsBefore, C<Indent> breakAndIndentTrailingComment) {
            this.token = token;
            this.realOrImaginary = realOrImaginary;
            this.plusIndentCommentsBefore = plusIndentCommentsBefore;
            this.breakAndIndentTrailingComment = breakAndIndentTrailingComment;
        }

        public static Op make(Input.Token token, RealOrImaginary realOrImaginary, Indent plusIndentCommentsBefore, C<Indent> breakAndIndentTrailingComment) {
            return new Token(token, realOrImaginary, plusIndentCommentsBefore, breakAndIndentTrailingComment);
        }

        @Override
        public void add(DocBuilder builder) {
            builder.add(this);
        }

        public C<Indent> breakAndIndentTrailingComment() {
            return this.breakAndIndentTrailingComment;
        }

        @Override
        public State computeBreaks(CommentsHelper commentsHelper, int maxWidth, State state) {
            return state.withColumn(state.column + this.token.getTok().getOriginalText().length());
        }

        @Override
        public String computeFlat() {
            return this.token.getTok().getOriginalText();
        }

        @Override
        public C12534j2<Integer> computeRange() {
            return C12534j2.F(Integer.valueOf(this.token.getTok().getIndex())).e(Doc.INTEGERS);
        }

        @Override
        public float computeWidth() {
            return this.token.getTok().length();
        }

        public Indent getPlusIndentCommentsBefore() {
            return this.plusIndentCommentsBefore;
        }

        public Input.Token getToken() {
            return this.token;
        }

        public RealOrImaginary realOrImaginary() {
            return this.realOrImaginary;
        }

        public String toString() {
            return z.c(this).f(C13183b.f85996h, this.token).f("realOrImaginary", this.realOrImaginary).f("plusIndentCommentsBefore", this.plusIndentCommentsBefore).toString();
        }

        @Override
        public void write(Output output) {
            output.append(this.token.getTok().getOriginalText(), range());
        }
    }

    public abstract State computeBreaks(CommentsHelper commentsHelper, int maxWidth, State state);

    public abstract String computeFlat();

    public abstract C12534j2<Integer> computeRange();

    public abstract float computeWidth();

    public final String getFlat() {
        if (!this.flatComputed) {
            this.flat = computeFlat();
            this.flatComputed = true;
        }
        return this.flat;
    }

    public final float getWidth() {
        if (!this.widthComputed) {
            this.width = computeWidth();
            this.widthComputed = true;
        }
        return this.width;
    }

    public final C12534j2<Integer> range() {
        if (!this.rangeComputed) {
            this.range = computeRange();
            this.rangeComputed = true;
        }
        return this.range;
    }

    public abstract void write(Output output);

    public static final class State {
        final int column;
        final int indent;
        final int lastIndent;
        final boolean mustBreak;

        public State(int lastIndent, int indent, int column, boolean mustBreak) {
            this.lastIndent = lastIndent;
            this.indent = indent;
            this.column = column;
            this.mustBreak = mustBreak;
        }

        public String toString() {
            return z.c(this).d("lastIndent", this.lastIndent).d(OutputKeys.INDENT, this.indent).d("column", this.column).g("mustBreak", this.mustBreak).toString();
        }

        public State withColumn(int column) {
            return new State(this.lastIndent, this.indent, column, this.mustBreak);
        }

        public State withMustBreak(boolean mustBreak) {
            return new State(this.lastIndent, this.indent, this.column, mustBreak);
        }

        public State(int indent0, int column0) {
            this(indent0, indent0, column0, false);
        }
    }
}
