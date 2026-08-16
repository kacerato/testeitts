package com.android.tools.r8.internal;

import java.io.Serializable;

public class ZB extends G0 implements Serializable {

    public final Object f46190b;

    public final Object f46191c;

    public ZB(Object obj, Object obj2) {
        this.f46190b = obj;
        this.f46191c = obj2;
    }

    @Override
    public final Object getKey() {
        return this.f46190b;
    }

    @Override
    public final Object getValue() {
        return this.f46191c;
    }

    @Override
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
