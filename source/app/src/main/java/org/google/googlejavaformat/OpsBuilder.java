package org.google.googlejavaformat;

import android.content.Context;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.C12566s;
import com.google.common.collect.D1;
import com.google.common.collect.e3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.google.googlejavaformat.Doc;
import org.google.googlejavaformat.Indent;
import org.google.googlejavaformat.Input;
import org.google.googlejavaformat.Output;
import w2.C;
import w2.z;

public final class OpsBuilder {
    private final Input input;
    private final Output output;
    private static final Indent.Const ZERO = Indent.Const.ZERO;
    private static final Doc.Space SPACE = Doc.Space.make();
    private final List<Op> ops = new ArrayList();
    private int tokenI = 0;
    private int inputPosition = Integer.MIN_VALUE;
    int depth = 0;
    private int lastPartialFormatBoundary = -1;

    public static abstract class BlankLineWanted {
        public static final BlankLineWanted YES = new SimpleBlankLine(C.f(Boolean.TRUE));
        public static final BlankLineWanted NO = new SimpleBlankLine(C.f(Boolean.FALSE));
        public static final BlankLineWanted PRESERVE = new SimpleBlankLine(C.a());

        public static final class ConditionalBlankLine extends BlankLineWanted {
            private final AbstractC12521g1<Output.BreakTag> tags;

            public ConditionalBlankLine(Iterable<Output.BreakTag> tags) {
                this.tags = AbstractC12521g1.p(tags);
            }

            @Override
            public BlankLineWanted merge(BlankLineWanted other) {
                return !(other instanceof ConditionalBlankLine) ? other : new ConditionalBlankLine(D1.f(this.tags, ((ConditionalBlankLine) other).tags));
            }

            @Override
            public C<Boolean> wanted() {
                e3<Output.BreakTag> it = this.tags.iterator();
                while (it.hasNext()) {
                    if (it.next().wasBreakTaken()) {
                        return C.f(Boolean.TRUE);
                    }
                }
                return C.a();
            }
        }

        public static final class SimpleBlankLine extends BlankLineWanted {
            private final C<Boolean> wanted;

            public SimpleBlankLine(C<Boolean> wanted) {
                this.wanted = wanted;
            }

            @Override
            public BlankLineWanted merge(BlankLineWanted other) {
                return this;
            }

            @Override
            public C<Boolean> wanted() {
                return this.wanted;
            }
        }

        public static BlankLineWanted conditional(Output.BreakTag breakTag) {
            return new ConditionalBlankLine(AbstractC12521g1.y(breakTag));
        }

        public abstract BlankLineWanted merge(BlankLineWanted wanted);

        public abstract C<Boolean> wanted();
    }

    public OpsBuilder(Input input, Output output) {
        this.input = input;
        this.output = output;
    }

    private void add(Op op) {
        if (op instanceof OpenOp) {
            this.depth++;
        } else if (op instanceof CloseOp) {
            int i10 = this.depth - 1;
            this.depth = i10;
            if (i10 < 0) {
                throw new AssertionError();
            }
        }
        this.ops.add(op);
    }

    private static int getI(Input.Token token) {
        e3<? extends Input.Tok> it = token.getToksBefore().iterator();
        while (it.hasNext()) {
            Input.Tok next = it.next();
            if (next.getIndex() >= 0) {
                return next.getIndex();
            }
        }
        return token.getTok().getIndex();
    }

    private static boolean isForcedBreak(Op op) {
        return (op instanceof Doc.Break) && ((Doc.Break) op).isForced();
    }

    private static List<Op> makeComment(Input.Tok comment) {
        return comment.isSlashStarComment() ? AbstractC12521g1.y(Doc.Tok.make(comment)) : AbstractC12521g1.z(Doc.Tok.make(comment), Doc.Break.makeForced());
    }

    public int actualSize(int position, int length) {
        Input.Token j10 = this.input.getPositionTokenMap().j(Integer.valueOf(position));
        int position2 = j10.getTok().getPosition();
        e3<? extends Input.Tok> it = j10.getToksBefore().iterator();
        while (it.hasNext()) {
            Input.Tok next = it.next();
            if (next.isComment()) {
                position2 = Math.min(position2, next.getPosition());
            }
        }
        Input.Token j11 = this.input.getPositionTokenMap().j(Integer.valueOf((position + length) - 1));
        int position3 = j11.getTok().getPosition() + j11.getTok().length();
        e3<? extends Input.Tok> it2 = j11.getToksAfter().iterator();
        while (it2.hasNext()) {
            Input.Tok next2 = it2.next();
            if (next2.isComment()) {
                position3 = Math.max(position3, next2.getPosition() + next2.length());
            }
        }
        return position3 - position2;
    }

    public Integer actualStartColumn(int position) {
        Input.Token j10 = this.input.getPositionTokenMap().j(Integer.valueOf(position));
        int position2 = j10.getTok().getPosition();
        int lineNumber = this.input.getLineNumber(position2);
        e3<? extends Input.Tok> it = j10.getToksBefore().iterator();
        while (it.hasNext()) {
            Input.Tok next = it.next();
            if (lineNumber != this.input.getLineNumber(next.getPosition())) {
                return Integer.valueOf(position2);
            }
            if (next.isComment()) {
                position2 = Math.min(position2, next.getPosition());
            }
        }
        return Integer.valueOf(position2);
    }

    public final void addAll(List<Op> ops) {
        Iterator<Op> it = ops.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public final void blankLineWanted(BlankLineWanted wanted) {
        this.output.blankLine(getI(this.input.getTokens().get(this.tokenI)), wanted);
    }

    public final void breakOp() {
        breakOp(Doc.FillMode.UNIFIED, "", ZERO);
    }

    public final void breakToFill() {
        breakOp(Doc.FillMode.INDEPENDENT, "", ZERO);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AbstractC12521g1<Op> build() {
        markForPartialFormat();
        C12566s M10 = C12566s.M();
        int size = this.ops.size();
        for (int i10 = 0; i10 < size; i10++) {
            Op op = this.ops.get(i10);
            if (op instanceof Doc.Token) {
                Doc.Token token = (Doc.Token) op;
                Input.Token token2 = token.getToken();
                int i11 = i10;
                while (i11 > 0 && (this.ops.get(i11 - 1) instanceof OpenOp)) {
                    i11--;
                }
                int i12 = i10;
                do {
                    i12++;
                    if (i12 >= size) {
                        break;
                    }
                } while (this.ops.get(i12) instanceof CloseOp);
                if (token.realOrImaginary().isReal()) {
                    e3<? extends Input.Tok> it = token2.getToksBefore().iterator();
                    boolean z10 = false;
                    int i13 = 0;
                    boolean z11 = false;
                    boolean z12 = false;
                    while (it.hasNext()) {
                        Input.Tok next = it.next();
                        if (next.isNewline()) {
                            i13++;
                        } else if (next.isComment()) {
                            M10.put(Integer.valueOf(i11), Doc.Break.make(next.isSlashSlashComment() ? Doc.FillMode.FORCED : Doc.FillMode.UNIFIED, "", token.getPlusIndentCommentsBefore()));
                            M10.Z(Integer.valueOf(i11), makeComment(next));
                            z12 = next.isSlashStarComment();
                            if (next.isJavadocComment()) {
                                M10.put(Integer.valueOf(i11), Doc.Break.makeForced());
                            }
                            z10 = next.isSlashSlashComment() || (next.isSlashStarComment() && !next.isJavadocComment());
                            z11 = true;
                            i13 = 0;
                        }
                    }
                    if (z10 && i13 > 1) {
                        this.output.blankLine(token2.getTok().getIndex(), BlankLineWanted.YES);
                    }
                    if (z11 && i13 > 0) {
                        M10.put(Integer.valueOf(i11), Doc.Break.makeForced());
                    } else if (z12) {
                        M10.put(Integer.valueOf(i11), SPACE);
                    }
                    e3<? extends Input.Tok> it2 = token2.getToksAfter().iterator();
                    while (it2.hasNext()) {
                        Input.Tok next2 = it2.next();
                        if (next2.isComment()) {
                            boolean z13 = next2.isJavadocComment() || (next2.isSlashStarComment() && token.breakAndIndentTrailingComment().e());
                            if (z13) {
                                M10.put(Integer.valueOf(i12), Doc.Break.make(Doc.FillMode.FORCED, "", token.breakAndIndentTrailingComment().g(Indent.Const.ZERO)));
                            } else {
                                M10.put(Integer.valueOf(i12), SPACE);
                            }
                            M10.Z(Integer.valueOf(i12), makeComment(next2));
                            if (z13) {
                                M10.put(Integer.valueOf(i12), Doc.Break.make(Doc.FillMode.FORCED, "", ZERO));
                            }
                        }
                    }
                } else {
                    e3<? extends Input.Tok> it3 = token2.getToksBefore().iterator();
                    int i14 = 0;
                    boolean z14 = false;
                    while (it3.hasNext()) {
                        Input.Tok next3 = it3.next();
                        if (next3.isNewline()) {
                            i14++;
                        } else if (next3.isComment()) {
                            z14 = next3.isComment();
                            i14 = 0;
                        }
                        if (z14 && i14 > 0) {
                            M10.put(Integer.valueOf(i11), Doc.Break.makeForced());
                        }
                        M10.put(Integer.valueOf(i11), Doc.Tok.make(next3));
                    }
                    e3<? extends Input.Tok> it4 = token2.getToksAfter().iterator();
                    while (it4.hasNext()) {
                        M10.put(Integer.valueOf(i12), Doc.Tok.make(it4.next()));
                    }
                }
            }
        }
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        boolean z15 = false;
        for (int i15 = 0; i15 < size; i15++) {
            for (V v10 : M10.y((C12566s) Integer.valueOf(i15))) {
                if (!z15 || !(v10 instanceof Doc.Space)) {
                    m10.a(v10);
                    z15 = isForcedBreak(v10);
                }
            }
            Op op2 = this.ops.get(i15);
            if (!z15 || (!(op2 instanceof Doc.Space) && (!(op2 instanceof Doc.Break) || ((Doc.Break) op2).getPlusIndent() != 0 || !" ".equals(((Doc) op2).getFlat())))) {
                m10.a(op2);
                if (!(op2 instanceof OpenOp)) {
                    z15 = isForcedBreak(op2);
                }
            }
        }
        for (V v11 : M10.y((C12566s) Integer.valueOf(size))) {
            if (!z15 || !(v11 instanceof Doc.Space)) {
                m10.a(v11);
                z15 = isForcedBreak(v11);
            }
        }
        return m10.e();
    }

    public void checkClosed(int previous) {
        if (this.depth != previous) {
            throw new FormattingError(diagnostic(String.format("saw %d unclosed ops", Integer.valueOf(this.depth))));
        }
    }

    public final void close() {
        add(CloseOp.make());
    }

    public int depth() {
        return this.depth;
    }

    public FormatterDiagnostic diagnostic(String message) {
        return this.input.createDiagnostic(this.inputPosition, message);
    }

    public final void drain() {
        int length = this.input.getText().length() + 1;
        if (length > this.inputPosition) {
            AbstractC12521g1<? extends Input.Token> tokens = this.input.getTokens();
            int size = tokens.size();
            while (true) {
                int i10 = this.tokenI;
                if (i10 >= size || length <= tokens.get(i10).getTok().getPosition()) {
                    break;
                }
                int i11 = this.tokenI;
                this.tokenI = i11 + 1;
                add(Doc.Token.make(tokens.get(i11), Doc.Token.RealOrImaginary.IMAGINARY, ZERO, C.a()));
            }
        }
        this.inputPosition = length;
        checkClosed(0);
    }

    public final void forcedBreak() {
        breakOp(Doc.FillMode.FORCED, "", ZERO);
    }

    public final Input getInput() {
        return this.input;
    }

    public final void guessToken(String token) {
        token(token, Doc.Token.RealOrImaginary.IMAGINARY, ZERO, C.a());
    }

    public void markForPartialFormat() {
        int i10 = this.lastPartialFormatBoundary;
        if (i10 == -1) {
            this.lastPartialFormatBoundary = this.tokenI;
        } else {
            if (this.tokenI == i10) {
                return;
            }
            this.output.markForPartialFormat(this.input.getTokens().get(this.lastPartialFormatBoundary), this.input.getTokens().get(this.tokenI - 1));
            this.lastPartialFormatBoundary = this.tokenI;
        }
    }

    public final void op(String op) {
        int length = op.length();
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            token(op.substring(i10, i11), Doc.Token.RealOrImaginary.REAL, ZERO, C.a());
            i10 = i11;
        }
    }

    public final void open(Indent plusIndent) {
        add(OpenOp.make(plusIndent));
    }

    public final C<String> peekToken() {
        return peekToken(0);
    }

    public final void space() {
        add(Doc.Space.make());
    }

    public final void sync(int inputPosition) {
        if (inputPosition > this.inputPosition) {
            AbstractC12521g1<? extends Input.Token> tokens = this.input.getTokens();
            int size = tokens.size();
            this.inputPosition = inputPosition;
            int i10 = this.tokenI;
            if (i10 >= size || inputPosition <= tokens.get(i10).getTok().getPosition()) {
                return;
            }
            int i11 = this.tokenI;
            this.tokenI = i11 + 1;
            throw new FormattingError(diagnostic(String.format("did not generate token \"%s\"", tokens.get(i11).getTok().getText())));
        }
    }

    public final String toString() {
        return z.c(this).f(Context.INPUT_SERVICE, this.input).f("ops", this.ops).f("output", this.output).d("tokenI", this.tokenI).d("inputPosition", this.inputPosition).toString();
    }

    public final void token(String token, Doc.Token.RealOrImaginary realOrImaginary, Indent plusIndentCommentsBefore, C<Indent> breakAndIndentTrailingComment) {
        AbstractC12521g1<? extends Input.Token> tokens = this.input.getTokens();
        if (!token.equals(peekToken().j())) {
            if (realOrImaginary.isReal()) {
                throw new FormattingError(diagnostic(String.format("expected token: '%s'; generated %s instead", peekToken().j(), token)));
            }
        } else {
            int i10 = this.tokenI;
            this.tokenI = i10 + 1;
            add(Doc.Token.make(tokens.get(i10), Doc.Token.RealOrImaginary.REAL, plusIndentCommentsBefore, breakAndIndentTrailingComment));
        }
    }

    public final void breakOp(Indent plusIndent) {
        breakOp(Doc.FillMode.UNIFIED, "", plusIndent);
    }

    public final void breakToFill(String flat) {
        breakOp(Doc.FillMode.INDEPENDENT, flat, ZERO);
    }

    public final void forcedBreak(Indent plusIndent) {
        breakOp(Doc.FillMode.FORCED, "", plusIndent);
    }

    public final C<String> peekToken(int skip) {
        AbstractC12521g1<? extends Input.Token> tokens = this.input.getTokens();
        int i10 = this.tokenI + skip;
        if (i10 < tokens.size()) {
            return C.f(tokens.get(i10).getTok().getOriginalText());
        }
        return C.a();
    }

    public final void breakOp(String flat) {
        breakOp(Doc.FillMode.UNIFIED, flat, ZERO);
    }

    public final void breakOp(Doc.FillMode fillMode, String flat, Indent plusIndent) {
        breakOp(fillMode, flat, plusIndent, C.a());
    }

    public final void breakOp(Doc.FillMode fillMode, String flat, Indent plusIndent, C<Output.BreakTag> optionalTag) {
        add(Doc.Break.make(fillMode, flat, plusIndent, optionalTag));
    }
}
