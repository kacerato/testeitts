package com.android.tools.r8.internal;

import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.Collection;
import java.util.Map;

public class GF extends L implements FF, Cloneable {
    @Override
    public final boolean a(int i10) {
        return false;
    }

    @Override
    public I30 b() {
        return L30.f41855a;
    }

    @Override
    public final void clear() {
    }

    public final Object clone() {
        return HF.f40725a;
    }

    @Override
    public final boolean containsValue(Object obj) {
        return false;
    }

    @Override
    public I30 entrySet() {
        return b();
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        return false;
    }

    @Override
    public final Object get(int i10) {
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
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int size() {
        return 0;
    }

    public final String toString() {
        return FetchDefaults.EMPTY_JSON_OBJECT_STRING;
    }

    @Override
    public final InterfaceC10028w30 values() {
        return L30.f41855a;
    }

    @Override
    public InterfaceC8568nI o() {
        return AbstractC8902pI.f51489a;
    }

    @Override
    public final Collection values() {
        return L30.f41855a;
    }
}
