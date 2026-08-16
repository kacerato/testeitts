package com.android.tools.r8.internal;

import java.util.Comparator;

public abstract class U extends AbstractC6849d0 {

    public final V f44647b;

    public U(V v10) {
        this.f44647b = v10;
    }

    @Override
    public final int K() {
        return this.f44647b.a();
    }

    @Override
    public final InterfaceC9069qI a(int i10) {
        return this.f44647b.b(i10).o();
    }

    @Override
    public final void clear() {
        this.f44647b.clear();
    }

    @Override
    public final Comparator comparator() {
        return this.f44647b.comparator();
    }

    @Override
    public final InterfaceC9069qI d(int i10, int i11) {
        return this.f44647b.a(i10, i11).o();
    }

    @Override
    public final InterfaceC9069qI e(int i10) {
        return this.f44647b.c(i10).o();
    }

    @Override
    public final boolean h(int i10) {
        return this.f44647b.a(i10);
    }

    @Override
    public final int p() {
        return this.f44647b.d();
    }

    @Override
    public final int size() {
        return this.f44647b.size();
    }
}
