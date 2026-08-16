package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.ListIterator;

public final class C7385gC extends AbstractC7552hC {

    public final transient int f48210d;

    public final transient int f48211e;

    public final AbstractC7552hC f48212f;

    public C7385gC(AbstractC7552hC abstractC7552hC, int i10, int i11) {
        this.f48212f = abstractC7552hC;
        this.f48210d = i10;
        this.f48211e = i11;
    }

    @Override
    public final AbstractC7552hC subList(int i10, int i11) {
        U60.a(i10, i11, this.f48211e);
        AbstractC7552hC abstractC7552hC = this.f48212f;
        int i12 = this.f48210d;
        return abstractC7552hC.subList(i10 + i12, i11 + i12);
    }

    @Override
    public final boolean g() {
        return true;
    }

    @Override
    public final Object get(int i10) {
        U60.a(i10, this.f48211e);
        return this.f48212f.get(i10 + this.f48210d);
    }

    @Override
    public final Iterator iterator() {
        return new C6885dC(this, size(), 0);
    }

    @Override
    public final ListIterator listIterator() {
        return new C6885dC(this, size(), 0);
    }

    @Override
    public final int size() {
        return this.f48211e;
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new C6885dC(this, size(), i10);
    }
}
