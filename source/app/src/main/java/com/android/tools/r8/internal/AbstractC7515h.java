package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class AbstractC7515h extends AbstractCollection implements V6 {
    public boolean a(boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean add(Object obj) {
        return a(((Boolean) obj).booleanValue());
    }

    public abstract boolean b(boolean z10);

    public boolean c(boolean z10) {
        InterfaceC6370a7 it = iterator();
        while (it.hasNext()) {
            if (z10 == it.q()) {
                it.remove();
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
        return b(((Boolean) obj).booleanValue());
    }

    @Override
    public final boolean remove(Object obj) {
        if (obj == null) {
            return false;
        }
        return c(((Boolean) obj).booleanValue());
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        InterfaceC6370a7 it = iterator();
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
            sb2.append(String.valueOf(it.q()));
            size = i10;
        }
    }
}
