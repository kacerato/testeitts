package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4535k1;
import com.android.tools.r8.graph.proto.c;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;

public final class O10 implements InterfaceC5096Eg {

    public static final boolean f42758e = true;

    public final C4798y f42759a;

    public final IdentityHashMap f42760b;

    public final AbstractC8552nC f42761c;

    public final J10 f42762d;

    public O10(C4798y c4798y, IdentityHashMap identityHashMap, AbstractC8552nC abstractC8552nC) {
        int i10 = K10.f41552q;
        this.f42762d = new J10();
        this.f42759a = c4798y;
        this.f42760b = identityHashMap;
        this.f42761c = abstractC8552nC;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, final OW ow) {
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return O10.this.b(ow, (C4516j1) obj);
            }
        };
        b02.getClass();
        b02.f36639c = C4516j1.f37311v;
        b02.f36638b.a((Function) interfaceC5422Jy);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        IdentityHashMap identityHashMap = this.f42760b;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        Object obj = this.f42761c.get(reference);
        if (obj != null) {
            reference = obj;
        }
        return !identityHashMap.containsKey((com.android.tools.r8.graph.A2) reference);
    }

    public final C4516j1 b(OW ow, final C4516j1 c4516j1) {
        IdentityHashMap identityHashMap = this.f42760b;
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        Object obj = this.f42761c.get(reference);
        if (obj != null) {
            reference = obj;
        }
        if (!identityHashMap.containsKey((com.android.tools.r8.graph.A2) reference)) {
            if (f42758e || c4516j1.getReference().a(ow.a(c4516j1, c4516j1.X0(), this.f42759a.b().f37898L1))) {
                return c4516j1;
            }
            throw new AssertionError();
        }
        IdentityHashMap identityHashMap2 = this.f42760b;
        com.android.tools.r8.graph.A2 reference2 = c4516j1.getReference();
        Object obj2 = this.f42761c.get(reference2);
        if (obj2 != null) {
            reference2 = obj2;
        }
        G10 g10 = (G10) identityHashMap2.get((com.android.tools.r8.graph.A2) reference2);
        if (!f42758e && g10.a()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a10 = ow.a(c4516j1, a(c4516j1.X0(), g10), this.f42759a.b().f37898L1);
        J10 j10 = this.f42762d;
        j10.getClass();
        com.android.tools.r8.graph.A2 reference3 = c4516j1.getReference();
        boolean z10 = J10.f41269c;
        if (!z10 && reference3.a(a10)) {
            throw new AssertionError();
        }
        List a11 = AbstractC5300Hv.a(reference3, a10);
        boolean w02 = c4516j1.w0();
        if (!z10) {
            if (a11.size() + reference3.w0() != a10.w0()) {
                throw new AssertionError();
            }
        }
        c.a a12 = com.android.tools.r8.graph.proto.c.a().a(reference3.a(w02));
        int a13 = C8704o7.a(!w02);
        for (int i10 = 0; i10 < reference3.x0().size(); i10++) {
            com.android.tools.r8.graph.M2 k10 = reference3.k(i10);
            com.android.tools.r8.graph.M2 k11 = a10.k(i10);
            if (!k10.a(k11)) {
                a12.a(a13 + i10, com.android.tools.r8.graph.proto.k.d().b(k10).a(k11).a());
            }
        }
        final com.android.tools.r8.graph.proto.j a14 = com.android.tools.r8.graph.proto.j.a(a11, reference3.z0().a(a10.z0()) ? null : com.android.tools.r8.graph.proto.k.d().b(reference3.z0()).a(a10.z0()).a(), a12.a());
        synchronized (j10) {
            j10.f41271b.f51964b.a(reference3, a10, true);
            j10.f41270a.put(a10, a14);
        }
        return c4516j1.a(a10, this.f42759a.b(), new Consumer() {
            @Override
            public final void accept(Object obj3) {
                O10.this.a(a14, c4516j1, (C4516j1.a) obj3);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.proto.j jVar, C4516j1 c4516j1, C4516j1.a aVar) {
        C4798y c4798y = this.f42759a;
        jVar.getClass();
        C4516j1.a a10 = aVar.a(c4798y, new com.android.tools.r8.graph.S5(jVar));
        EnumC4535k1 enumC4535k1 = c4516j1.f37319l;
        if (!C4516j1.a.f37328u && a10.f37336h != EnumC4535k1.f37407b) {
            throw new AssertionError();
        }
        a10.f37336h = enumC4535k1;
        boolean n12 = c4516j1.n1();
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52518b;
        if (n12) {
            a10.a(abstractC9530t40);
        }
    }

    public final com.android.tools.r8.graph.I2 a(com.android.tools.r8.graph.I2 i22, final G10 g10) {
        final com.android.tools.r8.graph.M2[] m2Arr = i22.n0().f36675b;
        com.android.tools.r8.graph.M2[] m2Arr2 = (com.android.tools.r8.graph.M2[]) X3.a((Object[]) new com.android.tools.r8.graph.M2[m2Arr.length], new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return O10.this.a(m2Arr, g10, i10);
            }
        });
        com.android.tools.r8.graph.M2 o02 = i22.o0();
        if (!G10.f40373c && g10.f40374a == F10.f40065b) {
            throw new AssertionError();
        }
        if (g10.f40374a == F10.f40066c) {
            o02 = (com.android.tools.r8.graph.M2) ((C6379aA) this.f42759a.b().f38152s6.f()).get(o02);
            if (!f42758e && o02 == null) {
                throw new AssertionError();
            }
        }
        com.android.tools.r8.graph.I2 a10 = this.f42759a.b().a(o02, m2Arr2);
        if (f42758e || !a10.a(i22)) {
            return a10;
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2[] m2Arr, G10 g10, int i10) {
        com.android.tools.r8.graph.M2 m22 = m2Arr[i10];
        if (!G10.f40373c && g10.f40375b[i10] == F10.f40065b) {
            throw new AssertionError();
        }
        if (g10.f40375b[i10] == F10.f40066c) {
            m22 = (com.android.tools.r8.graph.M2) ((C6379aA) this.f42759a.b().f38152s6.f()).get(m22);
            if (!f42758e && m22 == null) {
                throw new AssertionError();
            }
        }
        return m22;
    }
}
