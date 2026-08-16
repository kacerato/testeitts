package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C9949vd0 extends C1 {

    public final C4856Ad0 f53160b;

    public C9949vd0(C4856Ad0 c4856Ad0) {
        this.f53160b = c4856Ad0;
    }

    @Override
    public final void clear() {
        this.f53160b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f53160b.containsKey(obj);
    }

    @Override
    public final A30 iterator() {
        return new C9782ud0(this.f53160b);
    }

    @Override
    public final boolean remove(Object obj) {
        C4856Ad0 c4856Ad0 = this.f53160b;
        int i10 = c4856Ad0.f38652h;
        c4856Ad0.c(obj);
        return this.f53160b.f38652h != i10;
    }

    @Override
    public final int size() {
        return this.f53160b.f38652h;
    }

    @Override
    public final Iterator iterator() {
        return new C9782ud0(this.f53160b);
    }
}
