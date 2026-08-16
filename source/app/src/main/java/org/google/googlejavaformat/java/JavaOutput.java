package org.google.googlejavaformat.java;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.C12534j2;
import com.google.common.collect.InterfaceC12546m2;
import com.google.common.collect.W;
import com.google.common.collect.c3;
import com.google.common.collect.e3;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.google.googlejavaformat.CommentsHelper;
import org.google.googlejavaformat.Input;
import org.google.googlejavaformat.InputOutput;
import org.google.googlejavaformat.Newlines;
import org.google.googlejavaformat.OpsBuilder;
import org.google.googlejavaformat.Output;
import w2.AbstractC15885e;
import w2.C15883c;
import w2.z;

public final class JavaOutput extends Output {
    private final CommentsHelper commentsHelper;
    private final JavaInput javaInput;
    private final int kN;
    private final String lineSeparator;
    private final Map<Integer, OpsBuilder.BlankLineWanted> blankLines = new HashMap();
    private final InterfaceC12546m2<Integer> partialFormatRanges = c3.r();
    private final List<String> mutableLines = new ArrayList();
    private int iLine = 0;
    private int lastK = -1;
    private int spacesPending = 0;
    private int newlinesPending = 0;
    private StringBuilder lineBuilder = new StringBuilder();

    public JavaOutput(String lineSeparator, JavaInput javaInput, CommentsHelper commentsHelper) {
        this.lineSeparator = lineSeparator;
        this.javaInput = javaInput;
        this.commentsHelper = commentsHelper;
        this.kN = javaInput.getkN();
    }

    public static String applyReplacements(String input, List<Replacement> replacements) {
        ArrayList<Replacement> arrayList = new ArrayList(replacements);
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer lambda$applyReplacements$0;
                lambda$applyReplacements$0 = JavaOutput.lambda$applyReplacements$0((Replacement) obj);
                return lambda$applyReplacements$0;
            }
        }).reversed());
        StringBuilder sb2 = new StringBuilder(input);
        for (Replacement replacement : arrayList) {
            sb2.replace(replacement.getReplaceRange().z().intValue(), replacement.getReplaceRange().L().intValue(), replacement.getReplacementString());
        }
        return sb2.toString();
    }

    public static Input.Tok endTok(Input.Token token) {
        for (int size = token.getToksAfter().size() - 1; size >= 0; size--) {
            Input.Tok tok = token.getToksAfter().get(size);
            if (tok.getIndex() >= 0) {
                return tok;
            }
        }
        return token.getTok();
    }

    private C12534j2<Integer> expandToBreakableRegions(C12534j2<Integer> iRange) {
        Integer z10 = iRange.z();
        z10.intValue();
        int intValue = iRange.L().intValue() - 1;
        if (!this.partialFormatRanges.contains(z10) || !this.partialFormatRanges.contains(Integer.valueOf(intValue))) {
            return InputOutput.EMPTY_RANGE;
        }
        Integer z11 = this.partialFormatRanges.h(z10).z();
        z11.intValue();
        return C12534j2.g(z11, Integer.valueOf(this.partialFormatRanges.h(Integer.valueOf(intValue)).L().intValue() + 1));
    }

    private boolean isComment(String text) {
        return text.startsWith("//") || text.startsWith("/*");
    }

    public static Integer lambda$applyReplacements$0(Replacement replacement) {
        return replacement.getReplaceRange().z();
    }

    public static int startPosition(Input.Token token) {
        int position = token.getTok().getPosition();
        e3<? extends Input.Tok> it = token.getToksBefore().iterator();
        while (it.hasNext()) {
            position = Math.min(position, it.next().getPosition());
        }
        return position;
    }

    public static Input.Tok startTok(Input.Token token) {
        e3<? extends Input.Tok> it = token.getToksBefore().iterator();
        while (it.hasNext()) {
            Input.Tok next = it.next();
            if (next.getIndex() >= 0) {
                return next;
            }
        }
        return token.getTok();
    }

    private static C12534j2<Integer> union(C12534j2<Integer> x10, C12534j2<Integer> y10) {
        return x10.v() ? y10 : y10.v() ? x10 : x10.G(y10).e(W.c());
    }

    @Override
    public void append(String text, C12534j2<Integer> range) {
        if (!range.v()) {
            int lineCount = this.javaInput.getLineCount();
            boolean z10 = false;
            while (true) {
                int i10 = this.iLine;
                if (i10 >= lineCount || (!this.javaInput.getRanges(i10).v() && this.javaInput.getRanges(this.iLine).L().intValue() > range.z().intValue())) {
                    break;
                }
                if (this.javaInput.getRanges(this.iLine).v()) {
                    z10 = true;
                }
                this.iLine++;
            }
            OpsBuilder.BlankLineWanted orDefault = this.blankLines.getOrDefault(Integer.valueOf(this.lastK), OpsBuilder.BlankLineWanted.NO);
            if (!isComment(text) ? orDefault.wanted().g(Boolean.valueOf(z10)).booleanValue() : z10) {
                this.newlinesPending++;
            }
        }
        if (Newlines.isNewline(text)) {
            int i11 = this.newlinesPending;
            if (i11 == 0) {
                this.newlinesPending = i11 + 1;
            }
            this.spacesPending = 0;
        } else {
            int length = text.length();
            int i12 = 0;
            boolean z11 = false;
            while (i12 < length) {
                char charAt = text.charAt(i12);
                if (charAt != '\n') {
                    if (charAt != '\r') {
                        if (charAt != ' ') {
                            while (this.newlinesPending > 0) {
                                if (!this.mutableLines.isEmpty() || this.lineBuilder.length() > 0) {
                                    this.mutableLines.add(this.lineBuilder.toString());
                                }
                                this.lineBuilder = new StringBuilder();
                                this.newlinesPending--;
                                z11 = false;
                            }
                            while (this.spacesPending > 0) {
                                this.lineBuilder.append(C15883c.f126249O);
                                this.spacesPending--;
                            }
                            this.lineBuilder.append(charAt);
                            if (!range.v() && !z11) {
                                while (this.ranges.size() <= this.mutableLines.size()) {
                                    this.ranges.add(Formatter.EMPTY_RANGE);
                                }
                                this.ranges.set(this.mutableLines.size(), union(this.ranges.get(this.mutableLines.size()), range));
                                z11 = true;
                            }
                        } else {
                            this.spacesPending++;
                        }
                        i12++;
                    } else {
                        int i13 = i12 + 1;
                        if (i13 < text.length() && text.charAt(i13) == '\n') {
                            i12 = i13;
                        }
                    }
                }
                this.spacesPending = 0;
                this.newlinesPending++;
                i12++;
            }
        }
        if (range.v()) {
            return;
        }
        this.lastK = range.L().intValue();
    }

    @Override
    public void blankLine(int k10, OpsBuilder.BlankLineWanted wanted) {
        if (this.blankLines.containsKey(Integer.valueOf(k10))) {
            this.blankLines.put(Integer.valueOf(k10), this.blankLines.get(Integer.valueOf(k10)).merge(wanted));
        } else {
            this.blankLines.put(Integer.valueOf(k10), wanted);
        }
    }

    public void flush() {
        String sb2 = this.lineBuilder.toString();
        if (!AbstractC15885e.X().C(sb2)) {
            this.mutableLines.add(sb2);
        }
        int size = this.mutableLines.size();
        C12534j2<Integer> g10 = C12534j2.g(Integer.valueOf(this.kN), Integer.valueOf(this.kN + 1));
        while (this.ranges.size() < size) {
            this.ranges.add(Formatter.EMPTY_RANGE);
        }
        this.ranges.add(g10);
        setLines(AbstractC12521g1.r(this.mutableLines));
    }

    @Override
    public CommentsHelper getCommentsHelper() {
        return this.commentsHelper;
    }

    public AbstractC12521g1<Replacement> getFormatReplacements(InterfaceC12546m2<Integer> iRangeSet0) {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        Map<Integer, C12534j2<Integer>> makeKToIJ = InputOutput.makeKToIJ(this);
        c3 r10 = c3.r();
        Iterator<C12534j2<Integer>> it = iRangeSet0.k(C12534j2.f(0, Integer.valueOf(this.javaInput.getkN()))).m().iterator();
        while (it.hasNext()) {
            C12534j2<Integer> expandToBreakableRegions = expandToBreakableRegions(it.next().e(W.c()));
            if (!expandToBreakableRegions.equals(InputOutput.EMPTY_RANGE)) {
                r10.o(expandToBreakableRegions);
            }
        }
        Iterator it2 = r10.m().iterator();
        while (it2.hasNext()) {
            Input.Tok startTok = startTok(this.javaInput.getToken(((Integer) ((C12534j2) it2.next()).z()).intValue()));
            Input.Tok endTok = endTok(this.javaInput.getToken(((Integer) r2.L()).intValue() - 1));
            StringBuilder sb2 = new StringBuilder();
            int position = startTok.getPosition();
            while (position > 0) {
                if (!AbstractC15885e.X().B(this.javaInput.getText().charAt(position - 1))) {
                    break;
                }
                position--;
            }
            int intValue = makeKToIJ.get(Integer.valueOf(startTok.getIndex())).z().intValue();
            while (intValue > 0 && getLine(intValue - 1).isEmpty()) {
                intValue--;
            }
            while (intValue < makeKToIJ.get(Integer.valueOf(endTok.getIndex())).L().intValue()) {
                if (intValue < getLineCount()) {
                    if (intValue > 0) {
                        sb2.append(this.lineSeparator);
                    }
                    sb2.append(getLine(intValue));
                }
                intValue++;
            }
            int min = Math.min(endTok.getPosition() + endTok.length(), this.javaInput.getText().length());
            if (endTok.getIndex() == this.javaInput.getkN() - 1) {
                min = this.javaInput.getText().length();
            }
            int i10 = -1;
            while (min < this.javaInput.getText().length()) {
                if (!AbstractC15885e.X().B(this.javaInput.getText().charAt(min))) {
                    break;
                }
                int hasNewlineAt = Newlines.hasNewlineAt(this.javaInput.getText(), min);
                if (hasNewlineAt != -1) {
                    i10 = min;
                    min = hasNewlineAt + min;
                } else {
                    min++;
                }
            }
            if (i10 != -1) {
                min = i10;
            }
            if (i10 == -1) {
                sb2.append(this.lineSeparator);
            }
            while (true) {
                if (intValue >= getLineCount()) {
                    break;
                }
                String line = getLine(intValue);
                int n10 = AbstractC15885e.X().F().n(line);
                if (n10 == -1) {
                    sb2.append(this.lineSeparator);
                    intValue++;
                } else if (i10 == -1) {
                    sb2.append(line.substring(0, n10));
                }
            }
            m10.a(Replacement.create(position, min, sb2.toString()));
        }
        return m10.e();
    }

    @Override
    public void indent(int indent) {
        this.spacesPending = indent;
    }

    @Override
    public void markForPartialFormat(Input.Token start, Input.Token end) {
        this.partialFormatRanges.o(C12534j2.f(Integer.valueOf(startTok(start).getIndex()), Integer.valueOf(endTok(end).getIndex())));
    }

    @Override
    public String toString() {
        return z.c(this).d("iLine", this.iLine).d("lastK", this.lastK).d("spacesPending", this.spacesPending).d("newlinesPending", this.newlinesPending).f("blankLines", this.blankLines).f("super", super.toString()).toString();
    }
}
