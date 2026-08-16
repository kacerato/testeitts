package com.android.tools.r8.internal;

import java.util.Iterator;

public abstract class DS implements Iterator {

    public ES f39524b;

    public ES f39525c = null;

    public int f39526d;

    public final FS f39527e;

    public DS(FS fs) {
        this.f39527e = fs;
        this.f39524b = fs.f40207g.f39867e;
        this.f39526d = fs.f40206f;
    }

    @Override
    public final boolean hasNext() {
        return this.f39524b != this.f39527e.f40207g;
    }

    @Override
    public final void remove() {
        ES es = this.f39525c;
        if (es == null) {
            throw new IllegalStateException();
        }
        this.f39527e.b(es, true);
        this.f39525c = null;
        this.f39526d = this.f39527e.f40206f;
    }
}
