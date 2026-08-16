package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C6356a20 extends AbstractC7519h1 {

    public final C6523b20 f46403b;

    public C6356a20(C6523b20 c6523b20) {
        this.f46403b = c6523b20;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() != null && (entry.getValue() instanceof Integer)) {
            Object key = entry.getKey();
            if (this.f46403b.containsKey(key) && this.f46403b.b(key) == ((Integer) entry.getValue()).intValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new Z10(this);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() == null || !(entry.getValue() instanceof Integer)) {
            return false;
        }
        Object key = entry.getKey();
        int intValue = ((Integer) entry.getValue()).intValue();
        int d10 = this.f46403b.d(key);
        if (d10 == -1) {
            return false;
        }
        C6523b20 c6523b20 = this.f46403b;
        if (intValue != c6523b20.f46685d[d10]) {
            return false;
        }
        int i10 = (c6523b20.f46686e - d10) - 1;
        Object[] objArr = c6523b20.f46684c;
        int i11 = d10 + 1;
        System.arraycopy(objArr, i11, objArr, d10, i10);
        int[] iArr = this.f46403b.f46685d;
        System.arraycopy(iArr, i11, iArr, d10, i10);
        C6523b20 c6523b202 = this.f46403b;
        int i12 = c6523b202.f46686e - 1;
        c6523b202.f46686e = i12;
        c6523b202.f46684c[i12] = null;
        return true;
    }

    @Override
    public final int size() {
        return this.f46403b.f46686e;
    }

    @Override
    public final Iterator iterator() {
        return new Z10(this);
    }
}
