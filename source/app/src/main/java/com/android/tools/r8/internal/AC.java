package com.android.tools.r8.internal;

import java.util.Objects;

public final class AC extends AbstractC4895Av0 {

    public int f38565b;

    public Object f38566c;

    public final AbstractC4895Av0 f38567d;

    public AC(AbstractC4895Av0 abstractC4895Av0) {
        this.f38567d = abstractC4895Av0;
    }

    @Override
    public final boolean hasNext() {
        return this.f38565b > 0 || this.f38567d.hasNext();
    }

    @Override
    public final Object next() {
        if (this.f38565b <= 0) {
            MY my = (MY) this.f38567d.next();
            this.f38566c = my.b();
            this.f38565b = my.a();
        }
        this.f38565b--;
        Object obj = this.f38566c;
        Objects.requireNonNull(obj);
        return obj;
    }
}
