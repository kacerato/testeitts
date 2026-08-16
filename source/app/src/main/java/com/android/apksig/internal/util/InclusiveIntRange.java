package com.android.apksig.internal.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class InclusiveIntRange {
    private final int max;
    private final int min;

    private InclusiveIntRange(int i10, int i11) {
        this.min = i10;
        this.max = i11;
    }

    public static InclusiveIntRange from(int i10) {
        return new InclusiveIntRange(i10, Integer.MAX_VALUE);
    }

    public static InclusiveIntRange fromTo(int i10, int i11) {
        return new InclusiveIntRange(i10, i11);
    }

    public int getMax() {
        return this.max;
    }

    public int getMin() {
        return this.min;
    }

    public List<InclusiveIntRange> getValuesNotIn(List<InclusiveIntRange> list) {
        if (list.isEmpty()) {
            return Collections.singletonList(this);
        }
        int i10 = this.min;
        ArrayList arrayList = null;
        for (InclusiveIntRange inclusiveIntRange : list) {
            int i11 = inclusiveIntRange.max;
            if (i10 <= i11) {
                int i12 = inclusiveIntRange.min;
                if (i10 < i12) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fromTo(i10, i12 - 1));
                }
                if (i11 >= this.max) {
                    return arrayList != null ? arrayList : Collections.emptyList();
                }
                i10 = i11 + 1;
            }
        }
        if (i10 <= this.max) {
            if (arrayList == null) {
                arrayList = new ArrayList(1);
            }
            arrayList.add(fromTo(i10, this.max));
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        sb2.append(this.min);
        sb2.append(", ");
        if (this.max < Integer.MAX_VALUE) {
            str = this.max + "]";
        } else {
            str = "\u221e)";
        }
        sb2.append(str);
        return sb2.toString();
    }
}
