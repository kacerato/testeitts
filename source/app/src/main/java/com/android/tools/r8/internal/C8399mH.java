package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C8399mH extends AbstractC10355y1 {

    public final C9400sH f50252b;

    public C8399mH(C9400sH c9400sH) {
        this.f50252b = c9400sH;
    }

    @Override
    public final void clear() {
        this.f50252b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f50252b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C9233rH(this.f50252b);
    }

    @Override
    public final int size() {
        return this.f50252b.size();
    }

    @Override
    public final Iterator iterator() {
        return new C9233rH(this.f50252b);
    }
}
