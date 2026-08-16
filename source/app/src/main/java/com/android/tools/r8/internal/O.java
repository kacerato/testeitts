package com.android.tools.r8.internal;

import java.util.Comparator;

public abstract class O extends AbstractC6849d0 {

    public final P f42753b;

    public O(P p10) {
        this.f42753b = p10;
    }

    @Override
    public final int K() {
        return this.f42753b.a();
    }

    @Override
    public final InterfaceC9069qI a(int i10) {
        return this.f42753b.b(i10).o();
    }

    @Override
    public final void clear() {
        this.f42753b.clear();
    }

    @Override
    public final Comparator comparator() {
        return this.f42753b.comparator();
    }

    @Override
    public final InterfaceC9069qI d(int i10, int i11) {
        return this.f42753b.a(i10, i11).o();
    }

    @Override
    public final InterfaceC9069qI e(int i10) {
        return this.f42753b.c(i10).o();
    }

    @Override
    public final boolean h(int i10) {
        return this.f42753b.a(i10);
    }

    @Override
    public final int p() {
        return this.f42753b.d();
    }

    @Override
    public final int size() {
        return this.f42753b.size();
    }
}
