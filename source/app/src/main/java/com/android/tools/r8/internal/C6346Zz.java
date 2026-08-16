package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6346Zz extends AbstractC9095qV {

    public final C6379aA f46389c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6346Zz(C6379aA c6379aA) {
        super(c6379aA);
        this.f46389c = c6379aA;
    }

    @Override
    public final Iterator iterator() {
        return new C6289Yz(this);
    }

    @Override
    public final boolean remove(Object obj) {
        C7045eA c7045eA = this.f46389c.f46435b;
        int a10 = AbstractC9047qA.a(obj);
        int i10 = C7045eA.f47615j;
        C6118Vz b10 = c7045eA.b(a10, obj);
        if (b10 == null) {
            return false;
        }
        this.f46389c.f46435b.a(b10);
        return true;
    }
}
