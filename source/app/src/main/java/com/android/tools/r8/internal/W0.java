package com.android.tools.r8.internal;

import java.util.Map;

public final class W0 implements Map.Entry {

    public final Object f45254b;

    public final boolean f45255c;

    public W0(Object obj, boolean z10) {
        this.f45254b = obj;
        this.f45255c = z10;
    }

    @Override
    public final boolean equals(Object obj) {
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getValue() != null && (entry.getValue() instanceof Boolean) && ((obj2 = this.f45254b) != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) && this.f45255c == ((Boolean) entry.getValue()).booleanValue();
    }

    @Override
    public final Object getKey() {
        return this.f45254b;
    }

    @Override
    public final Object getValue() {
        return Boolean.valueOf(this.f45255c);
    }

    @Override
    public final int hashCode() {
        Object obj = this.f45254b;
        return (obj == null ? 0 : obj.hashCode()) ^ (this.f45255c ? 1231 : 1237);
    }

    @Override
    public final Object setValue(Object obj) {
        ((Boolean) obj).booleanValue();
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return this.f45254b + "->" + this.f45255c;
    }
}
