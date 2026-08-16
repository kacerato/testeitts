package com.android.tools.r8.internal;

import java.util.function.Function;

public abstract class AbstractC6192Xf extends AbstractC5672Of {

    public static final boolean f45781b = true;

    public final InterfaceC6078Vf f45782a;

    public AbstractC6192Xf(InterfaceC6078Vf interfaceC6078Vf) {
        if (!f45781b && interfaceC6078Vf.isUnknown()) {
            throw new AssertionError();
        }
        this.f45782a = interfaceC6078Vf;
    }

    @Override
    public AbstractC6333Zs0 a(Function function) {
        return this.f45782a.a(function);
    }

    @Override
    public final Q5 y() {
        return this.f45782a.y();
    }
}
