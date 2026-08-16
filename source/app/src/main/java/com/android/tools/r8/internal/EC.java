package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

public abstract class EC extends XB implements LY {

    public static final int f39794e = 0;

    public transient AbstractC7552hC f39795c;

    public transient JC f39796d;

    @Override
    public final AbstractC7552hC a() {
        AbstractC7552hC abstractC7552hC = this.f39795c;
        if (abstractC7552hC != null) {
            return abstractC7552hC;
        }
        AbstractC7552hC a10 = super.a();
        this.f39795c = a10;
        return a10;
    }

    @Override
    public boolean contains(Object obj) {
        return b(obj) > 0;
    }

    @Override
    public final boolean equals(Object obj) {
        return QY.a(this, obj);
    }

    @Override
    public abstract QC w();

    @Override
    public int hashCode() {
        return AbstractC5513Ll0.a((Set) entrySet());
    }

    @Override
    public final QC entrySet() {
        JC jc2 = this.f39796d;
        if (jc2 == null) {
            jc2 = isEmpty() ? C7119ef0.f47742j : new DC(this);
            this.f39796d = jc2;
        }
        return jc2;
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        return new AC(entrySet().iterator());
    }

    public abstract MY j(int i10);

    @Override
    public final String toString() {
        return entrySet().toString();
    }

    @Override
    public final int a(Object obj, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Iterator iterator() {
        return new AC(entrySet().iterator());
    }

    @Override
    public final boolean a(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int a(int i10, Object[] objArr) {
        AbstractC4895Av0 it = entrySet().iterator();
        while (it.hasNext()) {
            MY my = (MY) it.next();
            Arrays.fill(objArr, i10, my.a() + i10, my.b());
            i10 += my.a();
        }
        return i10;
    }
}
