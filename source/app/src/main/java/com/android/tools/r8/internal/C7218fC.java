package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.ListIterator;

public final class C7218fC extends AbstractC7552hC {

    public final transient AbstractC7552hC f47906d;

    public C7218fC(AbstractC7552hC abstractC7552hC) {
        this.f47906d = abstractC7552hC;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f47906d.contains(obj);
    }

    @Override
    public final AbstractC7552hC subList(int i10, int i11) {
        U60.a(i10, i11, this.f47906d.size());
        AbstractC7552hC abstractC7552hC = this.f47906d;
        return abstractC7552hC.subList(abstractC7552hC.size() - i11, this.f47906d.size() - i10).i();
    }

    @Override
    public final boolean g() {
        return this.f47906d.g();
    }

    @Override
    public final Object get(int i10) {
        U60.a(i10, this.f47906d.size());
        return this.f47906d.get((r0.size() - 1) - i10);
    }

    @Override
    public final AbstractC7552hC i() {
        return this.f47906d;
    }

    @Override
    public final int indexOf(Object obj) {
        int lastIndexOf = this.f47906d.lastIndexOf(obj);
        if (lastIndexOf >= 0) {
            return (this.f47906d.size() - 1) - lastIndexOf;
        }
        return -1;
    }

    @Override
    public final Iterator iterator() {
        return new C6885dC(this, size(), 0);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        int indexOf = this.f47906d.indexOf(obj);
        if (indexOf >= 0) {
            return (this.f47906d.size() - 1) - indexOf;
        }
        return -1;
    }

    @Override
    public final ListIterator listIterator() {
        return new C6885dC(this, size(), 0);
    }

    @Override
    public final int size() {
        return this.f47906d.size();
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new C6885dC(this, size(), i10);
    }
}
