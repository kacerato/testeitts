package com.android.tools.r8.internal;

import com.tonyodev.fetch2.util.FetchDefaults;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

public final class C6106Vt implements Map, Serializable {

    public static final C6106Vt f45199b = new C6106Vt();

    @Override
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean containsKey(Object obj) {
        return false;
    }

    @Override
    public final boolean containsValue(Object obj) {
        if (!(obj instanceof Void)) {
            return false;
        }
        GJ.c((Void) obj, "value");
        return false;
    }

    @Override
    public final Set entrySet() {
        return C6277Yt.f46102b;
    }

    @Override
    public final boolean equals(Object obj) {
        return (obj instanceof Map) && ((Map) obj).isEmpty();
    }

    @Override
    public final Object get(Object obj) {
        return null;
    }

    @Override
    public final int hashCode() {
        return 0;
    }

    @Override
    public final boolean isEmpty() {
        return true;
    }

    @Override
    public final Set o() {
        return C6277Yt.f46102b;
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return 0;
    }

    public final String toString() {
        return FetchDefaults.EMPTY_JSON_OBJECT_STRING;
    }

    @Override
    public final Collection values() {
        return C6049Ut.f44892b;
    }
}
