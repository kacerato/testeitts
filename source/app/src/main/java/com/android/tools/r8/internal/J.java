package com.android.tools.r8.internal;

import java.util.Map;

public final class J implements XE {

    public final int f41263b;

    public final int f41264c;

    public J(int i10, int i11) {
        this.f41263b = i10;
        this.f41264c = i11;
    }

    @Override
    public final int a() {
        return this.f41263b;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getKey() != null && (entry.getKey() instanceof Integer) && entry.getValue() != null && (entry.getValue() instanceof Integer) && this.f41263b == ((Integer) entry.getKey()).intValue() && this.f41264c == ((Integer) entry.getValue()).intValue();
    }

    @Override
    public final int getIntValue() {
        return this.f41264c;
    }

    @Override
    public final Object getKey() {
        return Integer.valueOf(this.f41263b);
    }

    @Override
    public final Object getValue() {
        return Integer.valueOf(this.f41264c);
    }

    @Override
    public final int hashCode() {
        return this.f41263b ^ this.f41264c;
    }

    @Override
    public final Object setValue(Object obj) {
        ((Integer) obj).intValue();
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return this.f41263b + "->" + this.f41264c;
    }
}
