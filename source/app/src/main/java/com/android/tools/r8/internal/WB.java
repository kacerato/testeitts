package com.android.tools.r8.internal;

import java.util.Iterator;

public abstract class WB {
    public static int a(int i10, int i11) {
        if (i11 < 0) {
            throw new AssertionError((Object) "cannot store more than MAX_VALUE elements");
        }
        int i12 = i10 + (i10 >> 1) + 1;
        if (i12 < i11) {
            i12 = Integer.highestOneBit(i11 - 1) << 1;
        }
        if (i12 < 0) {
            return Integer.MAX_VALUE;
        }
        return i12;
    }

    public abstract WB a(Object obj);

    public final void a(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }
}
