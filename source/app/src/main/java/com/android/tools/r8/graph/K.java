package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C6501av0;
import com.android.tools.r8.internal.C8103ka;
import com.android.tools.r8.internal.C9115qd0;
import com.android.tools.r8.internal.InterfaceC5407Jq0;

public final class K implements InterfaceC5407Jq0 {

    public final C9115qd0 f36511a;

    public final C9115qd0 f36512b;

    public K(O o10) {
        G g10 = o10.f36657a;
        C9115qd0 c9115qd0 = new C9115qd0();
        for (com.android.tools.r8.internal.W9 w92 : g10.E0()) {
            w92.getClass();
            if (w92 instanceof C8103ka) {
                c9115qd0.b(c9115qd0.f51828i, w92.m());
            }
        }
        this.f36511a = c9115qd0;
        G g11 = o10.f36658b;
        C9115qd0 c9115qd02 = new C9115qd0();
        for (com.android.tools.r8.internal.W9 w93 : g11.E0()) {
            w93.getClass();
            if (w93 instanceof C8103ka) {
                c9115qd02.b(c9115qd02.f51828i, w93.m());
            }
        }
        this.f36512b = c9115qd02;
    }

    @Override
    public final int a(Object obj, Object obj2, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this.f36511a.b((C8103ka) obj), this.f36512b.b((C8103ka) obj2));
    }

    @Override
    public final void a(Object obj, AbstractC9213rA abstractC9213rA) {
        throw new C6501av0();
    }
}
