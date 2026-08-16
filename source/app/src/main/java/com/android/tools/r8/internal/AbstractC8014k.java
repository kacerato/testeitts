package com.android.tools.r8.internal;

import java.util.Set;

public abstract class AbstractC8014k extends AbstractC7515h implements Cloneable, Set {
    @Override
    public final boolean c(boolean z10) {
        return d(z10);
    }

    public abstract boolean d(boolean z10);

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
        InterfaceC6370a7 it = iterator();
        int i10 = 0;
        while (true) {
            int i11 = size - 1;
            if (size == 0) {
                return i10;
            }
            i10 += it.q() ? 1231 : 1237;
            size = i11;
        }
    }
}
