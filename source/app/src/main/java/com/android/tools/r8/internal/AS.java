package com.android.tools.r8.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

public final class AS extends AbstractSet {

    public final FS f38616b;

    public AS(FS fs) {
        this.f38616b = fs;
    }

    @Override
    public final void clear() {
        this.f38616b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return (obj instanceof Map.Entry) && this.f38616b.a((Map.Entry) obj) != null;
    }

    @Override
    public final Iterator iterator() {
        return new C10591zS(this);
    }

    @Override
    public final boolean remove(Object obj) {
        ES a10;
        if (!(obj instanceof Map.Entry) || (a10 = this.f38616b.a((Map.Entry) obj)) == null) {
            return false;
        }
        this.f38616b.b(a10, true);
        return true;
    }

    @Override
    public final int size() {
        return this.f38616b.f40205e;
    }
}
