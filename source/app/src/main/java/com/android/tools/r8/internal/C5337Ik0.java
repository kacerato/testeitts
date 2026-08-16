package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5337Ik0 implements Iterator {

    public final C5279Hk0 f41196b;

    public DT f41197c;

    public int f41198d;

    public C5337Ik0(C5395Jk0 c5395Jk0) {
        C5279Hk0 c5279Hk0 = new C5279Hk0(c5395Jk0);
        this.f41196b = c5279Hk0;
        this.f41197c = new DT(c5279Hk0.next());
        this.f41198d = c5395Jk0.f41490d;
    }

    @Override
    public final boolean hasNext() {
        return this.f41198d > 0;
    }

    @Override
    public final Object next() {
        if (!this.f41197c.hasNext()) {
            this.f41197c = new DT(this.f41196b.next());
        }
        this.f41198d--;
        return Byte.valueOf(this.f41197c.a());
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
