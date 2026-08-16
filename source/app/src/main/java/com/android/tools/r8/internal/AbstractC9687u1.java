package com.android.tools.r8.internal;

import java.io.Serializable;

public abstract class AbstractC9687u1 implements InterfaceC5201Gc0, Serializable {
    public boolean a(Object obj, boolean z10) {
        throw new UnsupportedOperationException();
    }

    public boolean b(Object obj) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public final Object get(Object obj) {
        if (containsKey(obj)) {
            return Boolean.valueOf(a(obj));
        }
        return null;
    }

    public final Object put(Object obj, Object obj2) {
        boolean containsKey = containsKey(obj);
        boolean a10 = a(obj, ((Boolean) obj2).booleanValue());
        if (containsKey) {
            return Boolean.valueOf(a10);
        }
        return null;
    }

    public final Object remove(Object obj) {
        boolean containsKey = containsKey(obj);
        boolean b10 = b(obj);
        if (containsKey) {
            return Boolean.valueOf(b10);
        }
        return null;
    }
}
