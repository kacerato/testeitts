package com.android.tools.r8.internal;

import java.util.Set;

public abstract class AbstractC7519h1 extends AbstractC6519b1 implements Cloneable, I30 {
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
        int size = size();
        A30 it = iterator();
        int i10 = 0;
        while (true) {
            int i11 = size - 1;
            if (size == 0) {
                return i10;
            }
            Object next = it.next();
            i10 += next == null ? 0 : next.hashCode();
            size = i11;
        }
    }
}
