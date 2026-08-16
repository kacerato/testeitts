package com.android.tools.r8.internal;

import java.io.Serializable;

public abstract class L implements DF, Serializable {
    @Override
    public Object a(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    public abstract void clear();

    @Override
    public final boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        return a(((Integer) obj).intValue());
    }

    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        int intValue = ((Integer) obj).intValue();
        if (a(intValue)) {
            return get(intValue);
        }
        return null;
    }

    public final Object put(Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        boolean a10 = a(intValue);
        Object a11 = a(intValue, obj2);
        if (a10) {
            return a11;
        }
        return null;
    }

    public Object remove(int i10) {
        throw new UnsupportedOperationException();
    }

    public final Object remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int intValue = ((Integer) obj).intValue();
        boolean a10 = a(intValue);
        Object remove = remove(intValue);
        if (a10) {
            return remove;
        }
        return null;
    }
}
