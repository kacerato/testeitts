package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C6501av0;
import com.android.tools.r8.internal.InterfaceC5407Jq0;

public final class L implements InterfaceC5407Jq0 {

    public final O f36552a;

    public L(O o10) {
        this.f36552a = o10;
    }

    @Override
    public final int a(Object obj, Object obj2, AbstractC8953pf abstractC8953pf) {
        com.android.tools.r8.internal.W9 w92 = (com.android.tools.r8.internal.W9) obj;
        com.android.tools.r8.internal.W9 w93 = (com.android.tools.r8.internal.W9) obj2;
        O o10 = this.f36552a;
        int a10 = abstractC8953pf.a(w92.C(), w93.C());
        return a10 != 0 ? a10 : w92.a(w93, abstractC8953pf, o10);
    }

    @Override
    public final void a(Object obj, AbstractC9213rA abstractC9213rA) {
        throw new C6501av0();
    }
}
