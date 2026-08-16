package com.android.tools.r8.internal;

import java.util.Map;

public final class X0 implements InterfaceC8189l20 {

    public final Object f45597b;

    public final int f45598c;

    public X0(int i10, Object obj) {
        this.f45597b = obj;
        this.f45598c = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getValue() != null && (entry.getValue() instanceof Integer) && ((obj2 = this.f45597b) != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) && this.f45598c == ((Integer) entry.getValue()).intValue();
    }

    @Override
    public final int getIntValue() {
        return this.f45598c;
    }

    @Override
    public final Object getKey() {
        return this.f45597b;
    }

    @Override
    public final Object getValue() {
        return Integer.valueOf(this.f45598c);
    }

    @Override
    public final int hashCode() {
        Object obj = this.f45597b;
        return (obj == null ? 0 : obj.hashCode()) ^ this.f45598c;
    }

    @Override
    public final Object setValue(Object obj) {
        ((Integer) obj).intValue();
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return this.f45597b + "->" + this.f45598c;
    }
}
