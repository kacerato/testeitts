package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class X10 extends AbstractC7519h1 {

    public final Y10 f45600b;

    public X10(Y10 y10) {
        this.f45600b = y10;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() != null && (entry.getValue() instanceof Boolean)) {
            Object key = entry.getKey();
            if (this.f45600b.containsKey(key) && this.f45600b.a(key) == ((Boolean) entry.getValue()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new W10(this);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() == null || !(entry.getValue() instanceof Boolean)) {
            return false;
        }
        Object key = entry.getKey();
        boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
        int b10 = this.f45600b.b(key);
        if (b10 == -1) {
            return false;
        }
        Y10 y10 = this.f45600b;
        if (booleanValue != y10.f45900c[b10]) {
            return false;
        }
        int i10 = (y10.f45901d - b10) - 1;
        Object[] objArr = y10.f45899b;
        int i11 = b10 + 1;
        System.arraycopy(objArr, i11, objArr, b10, i10);
        boolean[] zArr = this.f45600b.f45900c;
        System.arraycopy(zArr, i11, zArr, b10, i10);
        Y10 y102 = this.f45600b;
        int i12 = y102.f45901d - 1;
        y102.f45901d = i12;
        y102.f45899b[i12] = null;
        return true;
    }

    @Override
    public final int size() {
        return this.f45600b.f45901d;
    }

    @Override
    public final Iterator iterator() {
        return new W10(this);
    }
}
