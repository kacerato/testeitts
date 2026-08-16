package com.android.tools.r8.internal;

import java.util.Set;

public abstract class C1 extends AbstractC10355y1 implements Cloneable, InterfaceC6015Ud0 {
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
        A30 it = iterator();
        int i10 = 0;
        while (true) {
            int i11 = size - 1;
            if (size == 0) {
                return i10;
            }
            i10 += System.identityHashCode(it.next());
            size = i11;
        }
    }
}
