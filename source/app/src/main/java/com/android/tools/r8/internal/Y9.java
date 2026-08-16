package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class Y9 {
    public static I00 a(C4798y c4798y) {
        if (c4798y.E().f50616L0.a() && c4798y.E().f50719s0) {
            throw new C5325If("Cannot combine -Dcom.android.tools.r8.forceNestDesugaring with desugaring turned off");
        }
        if (c4798y.E().f50616L0.b()) {
            return new I00(c4798y, c4798y.f38404S);
        }
        if (c4798y.E().f50697l instanceof ClassFileConsumer) {
            boolean z10 = I00.f40944h;
            if (!z10 && !c4798y.E().f50616L0.a()) {
                throw new AssertionError();
            }
            if (!z10 && !(c4798y.E().f50697l instanceof ClassFileConsumer)) {
                throw new AssertionError();
            }
            return new I00(c4798y, new com.android.tools.r8.androidapi.b());
        }
        boolean z11 = I00.f40944h;
        if (!z11 && !c4798y.E().f50616L0.a()) {
            throw new AssertionError();
        }
        if (z11 || c4798y.E().P()) {
            return new I00(c4798y, c4798y.f38404S);
        }
        throw new AssertionError();
    }

    public abstract DI a(Predicate predicate, JI ji2);

    public abstract Collection a(W9 w92, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df);

    public abstract void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea);

    public abstract void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea, C5035Df c5035Df);

    public abstract void a(AbstractC7103ea abstractC7103ea, Z70 z70, com.android.tools.r8.graph.H5 h52);

    public abstract void a(Consumer consumer);

    public abstract boolean a(com.android.tools.r8.graph.H5 h52);
}
