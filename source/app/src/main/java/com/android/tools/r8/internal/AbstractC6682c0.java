package com.android.tools.r8.internal;

import java.util.Set;

public abstract class AbstractC6682c0 extends W implements Cloneable, InterfaceC8568nI {
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
    public int hashCode() {
        int size = size();
        PH it = iterator();
        int i10 = 0;
        while (true) {
            int i11 = size - 1;
            if (size == 0) {
                return i10;
            }
            i10 += it.r();
            size = i11;
        }
    }

    @Override
    public final boolean j(int i10) {
        return remove(i10);
    }

    public boolean remove(int i10) {
        return super.j(i10);
    }
}
