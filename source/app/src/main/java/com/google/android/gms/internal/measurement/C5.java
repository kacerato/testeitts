package com.google.android.gms.internal.measurement;

import java.util.Map;

public final class C5 implements Map.Entry {

    public final Map.Entry f61897b;

    public final E5 b() {
        return (E5) this.f61897b.getValue();
    }

    @Override
    public final Object getKey() {
        return this.f61897b.getKey();
    }

    @Override
    public final Object getValue() {
        if (((E5) this.f61897b.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override
    public final Object setValue(Object obj) {
        if (obj instanceof W5) {
            return ((E5) this.f61897b.getValue()).a((W5) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
