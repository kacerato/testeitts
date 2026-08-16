package com.android.tools.r8.internal;

import java.util.Map;

public final class C10021w1 implements InterfaceC7614hd0 {

    public final Object f53398b;

    public final int f53399c;

    public C10021w1(int i10, Object obj) {
        this.f53398b = obj;
        this.f53399c = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getValue() != null && (entry.getValue() instanceof Integer) && this.f53398b == entry.getKey() && this.f53399c == ((Integer) entry.getValue()).intValue();
    }

    @Override
    public final int getIntValue() {
        return this.f53399c;
    }

    @Override
    public final Object getKey() {
        return this.f53398b;
    }

    @Override
    public final Object getValue() {
        return Integer.valueOf(this.f53399c);
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this.f53398b) ^ this.f53399c;
    }

    @Override
    public final Object setValue(Object obj) {
        ((Integer) obj).intValue();
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return this.f53398b + "->" + this.f53399c;
    }
}
