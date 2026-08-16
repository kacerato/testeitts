package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5088Ed0 extends C1 {

    public final C5378Jd0 f39957b;

    public C5088Ed0(C5378Jd0 c5378Jd0) {
        this.f39957b = c5378Jd0;
    }

    @Override
    public final void clear() {
        this.f39957b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f39957b.containsKey(obj);
    }

    @Override
    public final A30 iterator() {
        return new C5030Dd0(this.f39957b);
    }

    @Override
    public final boolean remove(Object obj) {
        C5378Jd0 c5378Jd0 = this.f39957b;
        int i10 = c5378Jd0.f41442h;
        c5378Jd0.remove(obj);
        return this.f39957b.f41442h != i10;
    }

    @Override
    public final int size() {
        return this.f39957b.f41442h;
    }

    @Override
    public final Iterator iterator() {
        return new C5030Dd0(this.f39957b);
    }
}
