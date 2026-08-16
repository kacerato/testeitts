package org.google.googlejavaformat;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.C12534j2;
import com.google.common.collect.W;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavaElement;
import org.google.googlejavaformat.Input;

public abstract class InputOutput {
    protected static final C12534j2<Integer> EMPTY_RANGE = C12534j2.g(-1, -1);
    private static final W<Integer> INTEGERS = W.c();
    private AbstractC12521g1<String> lines = AbstractC12521g1.x();
    protected final List<C12534j2<Integer>> ranges = new ArrayList();

    private static void addToRanges(List<C12534j2<Integer>> ranges, int i10, int k10) {
        while (ranges.size() <= i10) {
            ranges.add(EMPTY_RANGE);
        }
        C12534j2<Integer> c12534j2 = ranges.get(i10);
        ranges.set(i10, C12534j2.g(Integer.valueOf(c12534j2.v() ? k10 : c12534j2.z().intValue()), Integer.valueOf(k10 + 1)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Map<Integer, C12534j2<Integer>> makeKToIJ(InputOutput put) {
        HashMap hashMap = new HashMap();
        int lineCount = put.getLineCount();
        for (int i10 = 0; i10 <= lineCount; i10++) {
            C12534j2<Integer> e10 = put.getRanges(i10).e(INTEGERS);
            for (int intValue = e10.z().intValue(); intValue < e10.L().intValue(); intValue++) {
                if (hashMap.containsKey(Integer.valueOf(intValue))) {
                    hashMap.put(Integer.valueOf(intValue), C12534j2.g((Integer) ((C12534j2) hashMap.get(Integer.valueOf(intValue))).z(), Integer.valueOf(i10 + 1)));
                } else {
                    hashMap.put(Integer.valueOf(intValue), C12534j2.g(Integer.valueOf(i10), Integer.valueOf(i10 + 1)));
                }
            }
        }
        return hashMap;
    }

    public final void computeRanges(List<? extends Input.Tok> toks) {
        int i10 = 0;
        for (Input.Tok tok : toks) {
            int count = Newlines.count(tok.getOriginalText()) + i10;
            int index = tok.getIndex();
            if (index >= 0) {
                while (i10 <= count) {
                    addToRanges(this.ranges, i10, index);
                    i10++;
                }
            }
            i10 = count;
        }
    }

    public final String getLine(int lineI) {
        return this.lines.get(lineI);
    }

    public final int getLineCount() {
        return this.lines.size();
    }

    public final C12534j2<Integer> getRanges(int lineI) {
        return (lineI < 0 || lineI >= this.ranges.size()) ? EMPTY_RANGE : this.ranges.get(lineI);
    }

    public final void setLines(AbstractC12521g1<String> lines) {
        this.lines = lines;
    }

    public String toString() {
        return "InputOutput{lines=" + ((Object) this.lines) + ", ranges=" + ((Object) this.ranges) + JavaElement.JEM_ANNOTATION;
    }
}
