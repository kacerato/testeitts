package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.Collection;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class AbstractC7848j0 extends AbstractCollection implements Collection, Iterable {
    public abstract InterfaceC8258lU a();

    public boolean a(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean add(Object obj) {
        return a(((Long) obj).longValue());
    }

    public abstract boolean b(long j10);

    public boolean c(long j10) {
        InterfaceC8258lU a10 = a();
        while (a10.hasNext()) {
            if (j10 == a10.l()) {
                a10.remove();
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        return b(((Long) obj).longValue());
    }

    @Override
    public final boolean remove(Object obj) {
        if (obj == null) {
            return false;
        }
        return c(((Long) obj).longValue());
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        InterfaceC8258lU a10 = a();
        int size = size();
        boolean z10 = true;
        while (true) {
            int i10 = size - 1;
            if (size == 0) {
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
                return sb2.toString();
            }
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(String.valueOf(a10.l()));
            size = i10;
        }
    }
}
