package com.android.tools.r8.internal;

import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.Collection;
import java.util.Map;

public class TG extends Q implements SG, Cloneable {
    @Override
    public final boolean a(int i10) {
        return false;
    }

    @Override
    public I30 c() {
        return L30.f41855a;
    }

    @Override
    public final void clear() {
    }

    public final Object clone() {
        return UG.f44715a;
    }

    @Override
    public final boolean containsValue(Object obj) {
        return false;
    }

    @Override
    public I30 entrySet() {
        return c();
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        return false;
    }

    @Override
    public Object get(int i10) {
        return null;
    }

    @Override
    public final int hashCode() {
        return 0;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    public void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return 0;
    }

    public final String toString() {
        return FetchDefaults.EMPTY_JSON_OBJECT_STRING;
    }

    @Override
    public final InterfaceC5667Od0 values() {
        return AbstractC6187Xd0.f45776a;
    }

    @Override
    public InterfaceC8568nI o() {
        return AbstractC8902pI.f51489a;
    }

    @Override
    public final Collection values() {
        return AbstractC6187Xd0.f45776a;
    }
}
