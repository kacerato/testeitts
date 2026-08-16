package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5722Pc0 extends C1 {

    public final C6012Uc0 f43282b;

    public C5722Pc0(C6012Uc0 c6012Uc0) {
        this.f43282b = c6012Uc0;
    }

    @Override
    public final void clear() {
        this.f43282b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f43282b.containsKey(obj);
    }

    @Override
    public final A30 iterator() {
        return new C5664Oc0(this.f43282b);
    }

    @Override
    public final boolean remove(Object obj) {
        C6012Uc0 c6012Uc0 = this.f43282b;
        int i10 = c6012Uc0.f44806h;
        c6012Uc0.b(obj);
        return this.f43282b.f44806h != i10;
    }

    @Override
    public final int size() {
        return this.f43282b.f44806h;
    }

    @Override
    public final Iterator iterator() {
        return new C5664Oc0(this.f43282b);
    }
}
