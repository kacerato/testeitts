package com.android.tools.r8.internal;

import java.util.AbstractSequentialList;
import java.util.ListIterator;

public final class C8755oS extends AbstractSequentialList {

    public final Object f51248b;

    public final C10090wS f51249c;

    public C8755oS(C10090wS c10090wS, Object obj) {
        this.f51249c = c10090wS;
        this.f51248b = obj;
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new C9923vS(this.f51249c, this.f51248b, i10);
    }

    @Override
    public final int size() {
        C9422sS c9422sS = (C9422sS) this.f51249c.f53507h.get(this.f51248b);
        if (c9422sS == null) {
            return 0;
        }
        return c9422sS.f52362c;
    }
}
