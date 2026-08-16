package com.android.tools.r8.internal;

import java.util.Map;

public final class C9854v1 implements InterfaceC5259Hc0 {

    public final com.android.tools.r8.graph.M2 f53000b;

    public C9854v1(com.android.tools.r8.graph.M2 m22) {
        this.f53000b = m22;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getValue() != null && (entry.getValue() instanceof Boolean) && this.f53000b == entry.getKey() && true == ((Boolean) entry.getValue()).booleanValue();
    }

    @Override
    public final boolean getBooleanValue() {
        return true;
    }

    @Override
    public final Object getKey() {
        return this.f53000b;
    }

    @Override
    public final Object getValue() {
        return Boolean.TRUE;
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this.f53000b) ^ 1231;
    }

    @Override
    public final Object setValue(Object obj) {
        ((Boolean) obj).booleanValue();
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return ((Object) this.f53000b) + "->true";
    }
}
