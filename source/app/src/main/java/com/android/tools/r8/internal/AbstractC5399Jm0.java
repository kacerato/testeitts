package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC5399Jm0 extends AbstractC5804Qm0 implements InterfaceC10541z70, InterfaceC5225Gm0 {
    @Override
    public final boolean A() {
        return true;
    }

    @Override
    public final boolean D() {
        return true;
    }

    public boolean I() {
        return this instanceof Z6;
    }

    @Override
    public final InterfaceC5225Gm0 a(C4798y c4798y, InterfaceC5225Gm0 interfaceC5225Gm0) {
        return this == interfaceC5225Gm0 ? this : (I() && interfaceC5225Gm0.isPrimitive() && interfaceC5225Gm0.l().I()) ? NH.f42550c : C7028e40.f47586c;
    }

    @Override
    public final InterfaceC10541z70 asPrimitive() {
        return this;
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final boolean isPrimitive() {
        return true;
    }

    @Override
    public final S60 k() {
        return this;
    }

    @Override
    public final AbstractC5399Jm0 l() {
        return this;
    }

    public final String toString() {
        return getTypeName();
    }

    @Override
    public final InterfaceC5225Gm0 x() {
        return this;
    }
}
