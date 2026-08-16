package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6879dA extends AbstractC9095qV {

    public final C7045eA f47313c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6879dA(C7045eA c7045eA) {
        super(c7045eA);
        this.f47313c = c7045eA;
    }

    @Override
    public final Iterator iterator() {
        return new C6712cA(this);
    }

    @Override
    public final boolean remove(Object obj) {
        C6118Vz a10 = this.f47313c.a(AbstractC9047qA.a(obj), obj);
        if (a10 == null) {
            return false;
        }
        this.f47313c.a(a10);
        a10.f45247i = null;
        a10.f45246h = null;
        return true;
    }
}
