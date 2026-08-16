package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class FG extends AbstractC7519h1 {

    public final GG f40163b;

    public FG(GG gg2) {
        this.f40163b = gg2;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if (this.f40163b.a(intValue) && this.f40163b.get(intValue) == entry.getValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new EG(this);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() == null || !(entry.getKey() instanceof Integer)) {
            return false;
        }
        int intValue = ((Integer) entry.getKey()).intValue();
        Object value = entry.getValue();
        int d10 = this.f40163b.d(intValue);
        if (d10 == -1) {
            return false;
        }
        GG gg2 = this.f40163b;
        if (value != gg2.f40455c[d10]) {
            return false;
        }
        int i10 = (gg2.f40456d - d10) - 1;
        int[] iArr = gg2.f40454b;
        int i11 = d10 + 1;
        System.arraycopy(iArr, i11, iArr, d10, i10);
        Object[] objArr = this.f40163b.f40455c;
        System.arraycopy(objArr, i11, objArr, d10, i10);
        GG gg3 = this.f40163b;
        int i12 = gg3.f40456d - 1;
        gg3.f40456d = i12;
        gg3.f40455c[i12] = null;
        return true;
    }

    @Override
    public final int size() {
        return this.f40163b.f40456d;
    }

    @Override
    public final Iterator iterator() {
        return new EG(this);
    }
}
