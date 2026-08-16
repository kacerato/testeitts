package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import java.util.function.BiFunction;
import java.util.function.IntConsumer;

public final class C7863j5 implements X9 {

    public static final boolean f49149d = true;

    public final C4798y f49150b;

    public final C8364m5 f49151c;

    public C7863j5(C4798y c4798y) {
        this.f49150b = c4798y;
        this.f49151c = new C8364m5(c4798y.E().z(), c4798y.b());
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        intConsumer.accept(182);
        intConsumer.accept(183);
        intConsumer.accept(185);
    }

    public final C6473am b(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (this.f49150b.f38408a.g().a(h52.p(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58197x;
                return bVar;
            }
        })) {
            return C6473am.f46625a;
        }
        C7437ga j10 = w92.j();
        com.android.tools.r8.graph.A2 V10 = j10.V();
        if (!V10.t0().g(this.f49150b.b().f38186x0) || V10.w0() > 0) {
            return C6473am.f46625a;
        }
        com.android.tools.r8.graph.Z4 b10 = this.f49150b.g().b(V10, j10.X());
        if (!b10.w()) {
            return C6473am.f46625a;
        }
        if (!f49149d && b10.s() == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 reference = b10.s().getReference();
        return this.f49151c.f50195c.contains(reference) ? a(reference, h52, j10.b(h52.p())) : C6473am.f46625a;
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (w92.L() && !w92.O()) {
            return b(h52, w92);
        }
        return C6473am.f46625a;
    }

    public final C6473am a(com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.H5 h52, boolean z10) {
        if (z10) {
            C4798y<?> c4798y = this.f49150b;
            com.android.tools.r8.graph.H2 holder = h52.getHolder();
            boolean z11 = C8364m5.f50192e;
            com.android.tools.r8.graph.H0 a10 = c4798y.g().a(a22, holder, c4798y, c4798y.g());
            if (a10 == null) {
                C4514j g10 = c4798y.g();
                holder.getClass();
                a10 = g10.b(holder, a22);
            }
            if (a10 != null && (a10 instanceof com.android.tools.r8.graph.A4)) {
                final com.android.tools.r8.graph.M2 p10 = a10.p();
                if (this.f49151c.f50196d.contains(p10)) {
                    return a(new BiFunction() {
                        @Override
                        public final Object apply(Object obj, Object obj2) {
                            return C7863j5.this.a(p10, h52, (AbstractC7103ea) obj, (C5035Df) obj2);
                        }
                    }, a22);
                }
            }
            return C6473am.f46625a;
        }
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C7863j5.this.a(h52, (AbstractC7103ea) obj, (C5035Df) obj2);
            }
        }, a22);
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea, C5035Df c5035Df) {
        C8364m5 c8364m5 = this.f49151c;
        C4798y c4798y = this.f49150b;
        Objects.requireNonNull(c5035Df);
        return c8364m5.a(c4798y, m22, h52, abstractC7103ea, new C9950vd1(c5035Df));
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea, C5035Df c5035Df) {
        return this.f49151c.b(this.f49150b, h52, abstractC7103ea, c5035Df);
    }

    public final C6204Xl a(final BiFunction biFunction, final com.android.tools.r8.graph.A2 a22) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C7863j5.this.a(biFunction, a22, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(BiFunction biFunction, com.android.tools.r8.graph.A2 a22, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) biFunction.apply(abstractC7103ea, c5035Df);
        boolean z10 = f49149d;
        if (!z10 && this.f49150b.g(a23.s0()) == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f49150b.g(a23.s0()).isInterface()) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f49150b.f38408a.g().g(a23.s0())) {
            arrayList.add(new C7437ga(184, a23, false));
        } else {
            arrayList.add(new C7437ga(182, a23, false));
        }
        if (a22.z0().S0() && !a23.z0().S0()) {
            arrayList.add(new C8106kb(C8106kb.a.Pop));
        }
        return arrayList;
    }
}
