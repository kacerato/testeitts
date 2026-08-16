package com.google.android.gms.internal.measurement;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

public final class C12146o6 extends AbstractSet {

    public final C12155p6 f62379b;

    public C12146o6(C12155p6 c12155p6, byte[] bArr) {
        Objects.requireNonNull(c12155p6);
        this.f62379b = c12155p6;
    }

    @Override
    public final boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.f62379b.put((Comparable) entry.getKey(), entry.getValue());
        return true;
    }

    @Override
    public final void clear() {
        this.f62379b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f62379b.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override
    public final Iterator iterator() {
        return new C12137n6(this.f62379b, null);
    }

    @Override
    public final boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.f62379b.remove(entry.getKey());
        return true;
    }

    @Override
    public final int size() {
        return this.f62379b.size();
    }
}
