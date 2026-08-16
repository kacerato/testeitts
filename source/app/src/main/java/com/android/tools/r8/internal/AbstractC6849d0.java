package com.android.tools.r8.internal;

import java.util.SortedSet;

public abstract class AbstractC6849d0 extends AbstractC6682c0 implements InterfaceC9069qI {
    @Override
    public final Object first() {
        return Integer.valueOf(K());
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return e(((Integer) obj).intValue());
    }

    @Override
    public final Object last() {
        return Integer.valueOf(p());
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        return d(((Integer) obj).intValue(), ((Integer) obj2).intValue());
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return a(((Integer) obj).intValue());
    }
}
