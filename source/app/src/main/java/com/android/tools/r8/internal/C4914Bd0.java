package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C4914Bd0 extends AbstractC10355y1 {

    public final C5378Jd0 f38955b;

    public C4914Bd0(C5378Jd0 c5378Jd0) {
        this.f38955b = c5378Jd0;
    }

    @Override
    public final void clear() {
        this.f38955b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f38955b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C5320Id0(this.f38955b);
    }

    @Override
    public final int size() {
        return this.f38955b.f41442h;
    }

    @Override
    public final Iterator iterator() {
        return new C5320Id0(this.f38955b);
    }
}
