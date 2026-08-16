package com.android.tools.r8.internal;

public final class C8526n30 extends AbstractC8359m30 implements G30 {

    public final C8693o30 f50493g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8526n30(C8693o30 c8693o30) {
        super(c8693o30);
        this.f50493g = c8693o30;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        return this.f50493g.f51148c[b()];
    }

    @Override
    public final Object previous() {
        return this.f50493g.f51148c[d()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
