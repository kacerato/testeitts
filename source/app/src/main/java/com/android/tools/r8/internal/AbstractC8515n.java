package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class AbstractC8515n extends AbstractCollection implements Cloneable, Collection, Iterable, Set {
    @Override
    public final boolean add(Object obj) {
        return ((C5544Mb) this).a(((Character) obj).charValue());
    }

    @Override
    public final boolean contains(Object obj) {
        int i10;
        if (obj == null) {
            return false;
        }
        char charValue = ((Character) obj).charValue();
        C5544Mb c5544Mb = (C5544Mb) this;
        int i11 = c5544Mb.f42326c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                i10 = -1;
                break;
            }
            if (c5544Mb.f42325b[i10] == charValue) {
                break;
            }
            i11 = i10;
        }
        return i10 != -1;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != size()) {
            return false;
        }
        return containsAll(set);
    }

    @Override
    public final int hashCode() {
        C5544Mb c5544Mb = (C5544Mb) this;
        int i10 = c5544Mb.f42326c;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = i10 - 1;
            if (i10 == 0) {
                return i11;
            }
            if (i12 >= c5544Mb.f42326c) {
                throw new NoSuchElementException();
            }
            i11 += c5544Mb.f42325b[i12];
            i10 = i13;
            i12++;
        }
    }

    @Override
    public final boolean remove(Object obj) {
        int i10;
        if (obj == null) {
            return false;
        }
        char charValue = ((Character) obj).charValue();
        C5544Mb c5544Mb = (C5544Mb) this;
        int i11 = c5544Mb.f42326c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                i10 = -1;
                break;
            }
            if (c5544Mb.f42325b[i10] == charValue) {
                break;
            }
            i11 = i10;
        }
        if (i10 == -1) {
            return false;
        }
        int i12 = (c5544Mb.f42326c - i10) - 1;
        for (int i13 = 0; i13 < i12; i13++) {
            char[] cArr = c5544Mb.f42325b;
            int i14 = i10 + i13;
            cArr[i14] = cArr[i14 + 1];
        }
        c5544Mb.f42326c--;
        return true;
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        C5544Mb c5544Mb = (C5544Mb) this;
        int i10 = c5544Mb.f42326c;
        boolean z10 = true;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 == 0) {
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
                return sb2.toString();
            }
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            if (i11 >= c5544Mb.f42326c) {
                throw new NoSuchElementException();
            }
            sb2.append(String.valueOf(c5544Mb.f42325b[i11]));
            i10 = i12;
            i11++;
        }
    }
}
