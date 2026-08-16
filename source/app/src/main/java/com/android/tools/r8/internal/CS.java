package com.android.tools.r8.internal;

import java.util.AbstractSet;
import java.util.Iterator;

public final class CS extends AbstractSet {

    public final FS f39225b;

    public CS(FS fs) {
        this.f39225b = fs;
    }

    @Override
    public final void clear() {
        this.f39225b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f39225b.containsKey(obj);
    }

    @Override
    public final Iterator iterator() {
        return new BS(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0014 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0013 A[RETURN] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean remove(Object obj) {
        ES a10;
        FS fs = this.f39225b;
        if (obj != null) {
            try {
                a10 = fs.a(obj, false);
            } catch (ClassCastException unused) {
            }
            if (a10 != null) {
                fs.b(a10, true);
            }
            return a10 == null;
        }
        a10 = null;
        if (a10 != null) {
        }
        if (a10 == null) {
        }
    }

    @Override
    public final int size() {
        return this.f39225b.f40205e;
    }
}
