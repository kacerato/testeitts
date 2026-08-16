package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class W extends AbstractCollection implements JH {
    public int[] a(int[] iArr) {
        if (iArr == null || iArr.length < size()) {
            iArr = new int[size()];
        }
        SH.a(iterator(), iArr);
        return iArr;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        return h(((Integer) obj).intValue());
    }

    public boolean j(int i10) {
        PH it = iterator();
        while (it.hasNext()) {
            if (i10 == it.r()) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean remove(Object obj) {
        if (obj == null) {
            return false;
        }
        return j(((Integer) obj).intValue());
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        PH it = iterator();
        int size = size();
        boolean z10 = true;
        while (true) {
            int i10 = size - 1;
            if (size == 0) {
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
                return sb2.toString();
            }
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(String.valueOf(it.r()));
            size = i10;
        }
    }

    public boolean add(int i10) {
        throw new UnsupportedOperationException();
    }

    public boolean a(JH jh2) {
        PH it = jh2.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add(it.r())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean add(Integer num) {
        return add(num.intValue());
    }

    public boolean a(TH th2) {
        PH it = th2.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (j(it.r())) {
                z10 = true;
            }
        }
        return z10;
    }
}
