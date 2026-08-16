package com.android.dx.cf.code;

import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.android.dx.util.LabeledItem;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaElement;

public final class ByteBlock implements LabeledItem {
    private final ByteCatchList catches;
    private final int end;
    private final int label;
    private final int start;
    private final IntList successors;

    public ByteBlock(int i10, int i11, int i12, IntList intList, ByteCatchList byteCatchList) {
        if (i10 < 0) {
            throw new IllegalArgumentException("label < 0");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (i12 <= i11) {
            throw new IllegalArgumentException("end <= start");
        }
        if (intList == null) {
            throw new NullPointerException("targets == null");
        }
        int size = intList.size();
        for (int i13 = 0; i13 < size; i13++) {
            if (intList.get(i13) < 0) {
                throw new IllegalArgumentException("successors[" + i13 + "] == " + intList.get(i13));
            }
        }
        if (byteCatchList == null) {
            throw new NullPointerException("catches == null");
        }
        this.label = i10;
        this.start = i11;
        this.end = i12;
        this.successors = intList;
        this.catches = byteCatchList;
    }

    public ByteCatchList getCatches() {
        return this.catches;
    }

    public int getEnd() {
        return this.end;
    }

    @Override
    public int getLabel() {
        return this.label;
    }

    public int getStart() {
        return this.start;
    }

    public IntList getSuccessors() {
        return this.successors;
    }

    public String toString() {
        return JavaElement.JEM_COMPILATIONUNIT + Hex.u2(this.label) + ": " + Hex.u2(this.start) + ClasspathEntry.DOT_DOT + Hex.u2(this.end) + JavaElement.JEM_ANNOTATION;
    }
}
