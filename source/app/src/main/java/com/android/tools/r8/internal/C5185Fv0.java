package com.android.tools.r8.internal;

import java.util.AbstractList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class C5185Fv0 extends AbstractList implements InterfaceC10422yR, RandomAccess {

    public final C10088wR f40344b;

    public C5185Fv0(C10088wR c10088wR) {
        this.f40344b = c10088wR;
    }

    @Override
    public final void a(ET et) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final AbstractC8206l8 b(int i10) {
        return this.f40344b.b(i10);
    }

    @Override
    public final C5185Fv0 e() {
        return this;
    }

    @Override
    public final List f() {
        return Collections.unmodifiableList(this.f40344b.f53503b);
    }

    @Override
    public final Object get(int i10) {
        return (String) this.f40344b.get(i10);
    }

    @Override
    public final Iterator iterator() {
        return new C5069Dv0(this);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new C4953Bv0(this, i10);
    }

    @Override
    public final int size() {
        return this.f40344b.size();
    }
}
