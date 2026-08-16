package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5049Dl0 extends AbstractC7015e0 {

    public final Iterator f39635d;

    public final C5107El0 f39636e;

    public C5049Dl0(C5107El0 c5107El0) {
        this.f39636e = c5107El0;
        this.f39635d = c5107El0.f40010b.iterator();
    }

    @Override
    public final Object a() {
        while (this.f39635d.hasNext()) {
            Object next = this.f39635d.next();
            if (!this.f39636e.f40011c.contains(next)) {
                return next;
            }
        }
        this.f47569b = 3;
        return null;
    }
}
