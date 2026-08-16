package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C6127Wc0 extends AbstractC7519h1 {

    public final C6184Xc0 f45486b;

    public C6127Wc0(C6184Xc0 c6184Xc0) {
        this.f45486b = c6184Xc0;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() != null && (entry.getValue() instanceof Integer)) {
            Object key = entry.getKey();
            if (this.f45486b.containsKey(key) && this.f45486b.b(key) == ((Integer) entry.getValue()).intValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new C6070Vc0(this);
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
        int d10 = this.f45486b.d(key);
        if (d10 == -1) {
            return false;
        }
        C6184Xc0 c6184Xc0 = this.f45486b;
        if (intValue != c6184Xc0.f45771d[d10]) {
            return false;
        }
        int i10 = (c6184Xc0.f45772e - d10) - 1;
        Object[] objArr = c6184Xc0.f45770c;
        int i11 = d10 + 1;
        System.arraycopy(objArr, i11, objArr, d10, i10);
        int[] iArr = this.f45486b.f45771d;
        System.arraycopy(iArr, i11, iArr, d10, i10);
        C6184Xc0 c6184Xc02 = this.f45486b;
        int i12 = c6184Xc02.f45772e - 1;
        c6184Xc02.f45772e = i12;
        c6184Xc02.f45770c[i12] = null;
        return true;
    }

    @Override
    public final int size() {
        return this.f45486b.f45772e;
    }

    @Override
    public final Iterator iterator() {
        return new C6070Vc0(this);
    }
}
