package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C4937Bn0 implements InterfaceC5053Dn0 {

    public final XK f39017a;

    public C4937Bn0(XK xk2) {
        this.f39017a = xk2;
    }

    @Override
    public final Iterator a(C5111En0 c5111En0, String str) {
        return new C4879An0(c5111En0, str, new WK(this.f39017a.f45655b.matcher(str)));
    }
}
