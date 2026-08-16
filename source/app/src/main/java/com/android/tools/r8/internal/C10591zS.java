package com.android.tools.r8.internal;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

public final class C10591zS extends DS {
    public C10591zS(AS as) {
        super(as.f38616b);
    }

    @Override
    public final Object next() {
        ES es = this.f39524b;
        FS fs = this.f39527e;
        if (es == fs.f40207g) {
            throw new NoSuchElementException();
        }
        if (fs.f40206f != this.f39526d) {
            throw new ConcurrentModificationException();
        }
        this.f39524b = es.f39867e;
        this.f39525c = es;
        return es;
    }
}
