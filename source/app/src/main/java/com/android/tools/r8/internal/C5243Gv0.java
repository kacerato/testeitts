package com.android.tools.r8.internal;

import java.util.AbstractList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class C5243Gv0 extends AbstractList implements InterfaceC10589zR, RandomAccess {

    public final C10255xR f40622b;

    public C5243Gv0(C10255xR c10255xR) {
        this.f40622b = c10255xR;
    }

    @Override
    public final void a(AbstractC8373m8 abstractC8373m8) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC10589zR e() {
        return this;
    }

    @Override
    public final List f() {
        return Collections.unmodifiableList(this.f40622b.f53760c);
    }

    @Override
    public final Object g(int i10) {
        return this.f40622b.f53760c.get(i10);
    }

    @Override
    public final Object get(int i10) {
        return (String) this.f40622b.get(i10);
    }

    @Override
    public final Iterator iterator() {
        return new C5127Ev0(this);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new C5011Cv0(this, i10);
    }

    @Override
    public final int size() {
        return this.f40622b.size();
    }
}
