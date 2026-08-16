package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4822z4;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.InterfaceC4610o0;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public abstract class G2 {

    public static final boolean f40376a = true;

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        if (!c4798y.E().a().e() || h52.getHolder() == h53.getHolder()) {
            return true;
        }
        com.android.tools.r8.androidapi.f fVar = h52.d().f37322o;
        com.android.tools.r8.androidapi.f fVar2 = h53.d().f37322o;
        return fVar.U() ? fVar2.isEqualTo(c4798y.f38405T) : h52.d().f37322o.d(fVar2);
    }

    public static com.android.tools.r8.graph.E0 b(final C4514j c4514j, com.android.tools.r8.graph.E0 e02, final AbstractC4744v2 abstractC4744v2) {
        if (e02.f0()) {
            return e02;
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) e02);
        C6162Ws0 a10 = c6286Yx0.a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return G2.a(AbstractC4744v2.this, c4514j, (com.android.tools.r8.graph.E0) obj, (C6286Yx0) obj2);
            }
        }).a();
        if (a10 == null) {
            a10 = new C6162Ws0(null);
        }
        return (com.android.tools.r8.graph.E0) a10.e();
    }

    public static boolean a(AbstractC5746Pm0 abstractC5746Pm0, com.android.tools.r8.androidapi.f fVar, C4798y c4798y) {
        InterfaceC4610o0 j10;
        if (!c4798y.E().a().e()) {
            return true;
        }
        abstractC5746Pm0.getClass();
        if (abstractC5746Pm0 instanceof C4877Am0) {
            com.android.tools.r8.graph.M2 a10 = abstractC5746Pm0.K().f38716c.a(c4798y.b());
            if (a10.P0()) {
                return true;
            }
            if (!f40376a && !a10.I0()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
            boolean z10 = C4725u2.f38268u;
            if (g10 != null) {
                j10 = g10.G();
            }
            j10 = null;
        } else {
            if (!abstractC5746Pm0.f0()) {
                return true;
            }
            com.android.tools.r8.graph.F0 a11 = c4798y.a(abstractC5746Pm0.N().f40306c);
            boolean z11 = C4822z4.f38464f;
            if (a11 != null) {
                j10 = a11.j();
            }
            j10 = null;
        }
        if (j10 == null) {
            return true;
        }
        com.android.tools.r8.androidapi.f a12 = c4798y.f38404S.a(j10.getReference());
        if (fVar.U()) {
            return a12.isEqualTo(c4798y.f38405T);
        }
        return fVar.d(a12);
    }

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        boolean z10 = f40376a;
        if (!z10 && !m22.Q0()) {
            throw new AssertionError();
        }
        if (!z10 && !m23.Q0()) {
            throw new AssertionError();
        }
        if (!z10 && m22 == m23) {
            throw new AssertionError();
        }
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.M2 a10 = m22.a(b10);
        if (a10.P0()) {
            return true;
        }
        if (!z10 && !a10.I0()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
        if (g10 == null) {
            return false;
        }
        if (!g10.f0()) {
            return true;
        }
        if (!c4798y.E().a().f40654a) {
            return false;
        }
        C4725u2 G10 = g10.G();
        if (a(G10, c4798y)) {
            return true;
        }
        com.android.tools.r8.graph.M2 a11 = m23.a(b10);
        if (!z10 && !a11.I0()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.E0 g11 = c4798y.g(a11);
        boolean z11 = C4725u2.f38268u;
        C4725u2 G11 = g11 != null ? g11.G() : null;
        if (G11 != null) {
            if (!z10 && !c4798y.E().a().f40654a) {
                throw new AssertionError();
            }
            if (!z10 && a(G10, c4798y)) {
                throw new AssertionError((Object) "Clients should first check if the definition is present on all apis since the min api");
            }
            com.android.tools.r8.androidapi.a aVar = c4798y.f38404S;
            com.android.tools.r8.graph.J2 reference = G10.getReference();
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
            com.android.tools.r8.androidapi.f a12 = aVar.a(reference, hVar);
            if (a12.U() ? false : a12.e(aVar.a(G11.getReference(), hVar)).d()) {
                return true;
            }
        }
        return false;
    }

    public static Set a(final C4514j c4514j, com.android.tools.r8.graph.E0 e02, AbstractC4744v2 abstractC4744v2) {
        AbstractC4592n1 b10;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) e02);
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) c6286Yx0.c();
            if (e03.f0()) {
                if (e03.isInterface()) {
                    linkedHashSet.add(e03);
                }
            } else {
                if (abstractC4744v2.p0()) {
                    b10 = e03.f36251k.f37700b.a(abstractC4744v2.l0());
                } else {
                    b10 = e03.b(abstractC4744v2.n0());
                }
                if (b10 != null) {
                    return Collections.singleton(e03);
                }
                e03.e(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        G2.a(C4514j.this, c6286Yx0, (com.android.tools.r8.graph.M2) obj);
                    }
                });
            }
        }
        return linkedHashSet;
    }

    public static AbstractC6333Zs0 a(AbstractC4744v2 abstractC4744v2, C4514j c4514j, com.android.tools.r8.graph.E0 e02, C6286Yx0 c6286Yx0) {
        AbstractC4592n1 b10;
        if (e02.f0()) {
            return new C6162Ws0(e02);
        }
        if (abstractC4744v2.p0()) {
            b10 = e02.f36251k.f37700b.a(abstractC4744v2.l0());
        } else {
            b10 = e02.b(abstractC4744v2.n0());
        }
        if (b10 != null) {
            return new C6162Ws0(e02);
        }
        if (e02.a1() != null) {
            InterfaceC4364b0 f10 = c4514j.f(e02.a1());
            Objects.requireNonNull(c6286Yx0);
            f10.a(new C7894jF0(c6286Yx0));
        }
        return C6276Ys0.f46097c;
    }

    public static void a(C4514j c4514j, C6286Yx0 c6286Yx0, com.android.tools.r8.graph.M2 m22) {
        InterfaceC4364b0 f10 = c4514j.f(m22);
        Objects.requireNonNull(c6286Yx0);
        f10.a(new C7894jF0(c6286Yx0));
    }

    public static boolean a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.androidapi.f fVar) {
        String Y02;
        int indexOf;
        if (!f40376a && !fVar.q()) {
            throw new AssertionError();
        }
        if (!h22.getType().v0().c("Landroidx/") || (indexOf = (Y02 = h22.Y0()).indexOf("Api")) < 0) {
            return false;
        }
        int i10 = indexOf + 3;
        int indexOf2 = Y02.indexOf("Impl");
        if (indexOf2 >= 0 && indexOf2 >= i10 && indexOf2 - i10 == 2) {
            String substring = Y02.substring(i10, indexOf2);
            char[] cArr = C10656zq0.f54545a;
            for (int i11 = 0; i11 < substring.length(); i11++) {
                if (!Character.isDigit(substring.charAt(i11))) {
                    return false;
                }
            }
            int parseInt = Integer.parseInt(substring);
            if (parseInt >= 10 && parseInt <= C2.f39077O.d() && fVar.F().a().d() <= parseInt) {
                return true;
            }
        }
        return false;
    }

    public static C8699o50 a(C4798y c4798y, C4514j c4514j, com.android.tools.r8.graph.E0 e02, AbstractC4744v2 abstractC4744v2) {
        com.android.tools.r8.androidapi.a aVar = c4798y.f38404S;
        if (e02.f0()) {
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            return C8699o50.a(e02, aVar.a(abstractC4744v2, com.android.tools.r8.androidapi.h.f35609b));
        }
        com.android.tools.r8.graph.E0 b10 = b(c4514j, e02, abstractC4744v2);
        com.android.tools.r8.graph.E0 e03 = null;
        if (b10 == null) {
            int i11 = com.android.tools.r8.androidapi.f.f35602a;
            return C8699o50.a(null, com.android.tools.r8.androidapi.h.f35609b);
        }
        if (!b10.f0()) {
            return C8699o50.a(b10, c4798y.f38405T);
        }
        AbstractC4744v2 a10 = abstractC4744v2.a((com.android.tools.r8.graph.J2) b10.getType(), c4798y.b());
        int i12 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.f fVar = com.android.tools.r8.androidapi.h.f35609b;
        com.android.tools.r8.androidapi.f a11 = aVar.a(a10, fVar);
        if (a11.q()) {
            return C8699o50.a(b10, a11);
        }
        Set<com.android.tools.r8.graph.E0> a12 = a(c4514j, e02, abstractC4744v2);
        if (a12.size() == 1) {
            com.android.tools.r8.graph.E0 e04 = (com.android.tools.r8.graph.E0) a12.iterator().next();
            if (!e04.f0()) {
                return C8699o50.a(e04, c4798y.f38405T);
            }
        }
        for (com.android.tools.r8.graph.E0 e05 : a12) {
            if (!f40376a && !e05.f0()) {
                throw new AssertionError();
            }
            AbstractC4744v2 a13 = abstractC4744v2.a((com.android.tools.r8.graph.J2) b10.getType(), c4798y.b());
            int i13 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.f a14 = aVar.a(a13, com.android.tools.r8.androidapi.h.f35609b);
            if (fVar.b(a14)) {
                e03 = e05;
                fVar = a14;
            }
        }
        return C8699o50.a(e03, fVar);
    }

    public static boolean a(C4725u2 c4725u2, C4798y c4798y) {
        com.android.tools.r8.androidapi.a aVar = c4798y.f38404S;
        C8570nJ E10 = c4798y.E();
        C4724u1 b10 = c4798y.b();
        if (!E10.a().f40654a) {
            return b10.f37830B6.contains(c4725u2.S());
        }
        com.android.tools.r8.graph.J2 reference = c4725u2.getReference();
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        return aVar.a(reference, com.android.tools.r8.androidapi.h.f35609b).b(E10.z()).d();
    }
}
