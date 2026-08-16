package com.android.tools.r8.internal;

import java.util.function.Function;

public abstract class AbstractC5904Sf extends AbstractC5672Of {

    public static final boolean f44262c = true;

    public final InterfaceC6078Vf f44263a;

    public final InterfaceC6078Vf f44264b;

    public AbstractC5904Sf(InterfaceC6078Vf interfaceC6078Vf, InterfaceC6078Vf interfaceC6078Vf2) {
        if (!f44262c && interfaceC6078Vf.isUnknown() && interfaceC6078Vf2.isUnknown()) {
            throw new AssertionError();
        }
        this.f44263a = interfaceC6078Vf;
        this.f44264b = interfaceC6078Vf2;
    }

    @Override
    public AbstractC6333Zs0 a(Function function) {
        AbstractC6333Zs0 a10 = this.f44263a.a(function);
        return a10.d() ? this.f44264b.a(function) : a10;
    }

    @Override
    public final Q5 y() {
        Q5 y10 = this.f44263a.y();
        if (y10 == null) {
            return this.f44264b.y();
        }
        if (this.f44264b.y() == null) {
            return y10;
        }
        return null;
    }
}
