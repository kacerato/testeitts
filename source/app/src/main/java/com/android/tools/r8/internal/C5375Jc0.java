package com.android.tools.r8.internal;

import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

public final class C5375Jc0 extends AbstractC9687u1 implements InterfaceC5317Ic0, Cloneable {
    @Override
    public final boolean a(Object obj) {
        return false;
    }

    @Override
    public final void clear() {
    }

    public final Object clone() {
        return AbstractC5491Lc0.f42020a;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return false;
    }

    @Override
    public final boolean containsValue(Object obj) {
        return false;
    }

    @Override
    public final Set entrySet() {
        return L30.f41855a;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        return false;
    }

    @Override
    public final I30 g() {
        return L30.f41855a;
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
    public final InterfaceC6015Ud0 o() {
        return AbstractC6187Xd0.f45776a;
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
    public final Collection values() {
        return AbstractC8370m7.f50202a;
    }

    @Override
    public final Set o() {
        return AbstractC6187Xd0.f45776a;
    }
}
