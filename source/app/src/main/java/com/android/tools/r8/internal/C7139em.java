package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.function.IntConsumer;

public final class C7139em implements X9 {

    public static final boolean f47774g = true;

    public final C4798y f47775b;

    public final QC f47776c;

    public final Set f47777d;

    public final C4992Cm f47778e;

    public final Set f47779f;

    public C7139em(C4798y c4798y, QC qc2, Set set) {
        this.f47775b = c4798y;
        this.f47776c = qc2;
        this.f47777d = set;
        this.f47778e = new C4992Cm(c4798y);
        if (c4798y.E().f50599F1.f50807A0) {
            this.f47779f = C4875Al0.a();
        } else {
            this.f47779f = null;
        }
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
    }

    public final void b() {
        a(this.f47779f, "", this.f47775b);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6473am a(final com.android.tools.r8.graph.H5 h52, W9 w92) {
        boolean z10;
        com.android.tools.r8.graph.H0 p10;
        com.android.tools.r8.graph.E0 g10;
        com.android.tools.r8.graph.H0 b10;
        if (!w92.L()) {
            return C6473am.f46625a;
        }
        final C7437ga j10 = w92.j();
        if (!a(h52.p(), this.f47778e, this.f47775b) && !this.f47775b.b().f38117o3.contains(h52.p())) {
            C7437ga j11 = j10.j();
            com.android.tools.r8.graph.A2 V10 = j11.V();
            C4514j g11 = this.f47775b.g();
            if (j11.b(h52.p())) {
                C4798y<?> c4798y = this.f47775b;
                g11.getClass();
                p10 = g11.a(V10, h52.getHolder(), c4798y, g11);
            } else {
                p10 = g11.b(V10, j11.X()).p();
            }
            if (p10 != null) {
                com.android.tools.r8.graph.M2 p11 = p10.p();
                if (!this.f47775b.E().x().b().a(p11) && !p11.E0() && (g10 = this.f47775b.g(p11)) != null && g10.f0() && ((!this.f47777d.contains(p10.getReference().t0()) || (b10 = this.f47775b.g().b(p10.getHolder(), p10.getReference())) == null || !X2.a(this.f47775b).f53766c.g().containsKey(b10.p())) && !a(j11, h52))) {
                    z10 = this.f47775b.E().x().a().g().get(p10.getReference()) != null ? true : this.f47775b.E().x().b().a(p10.getReference().y0());
                    if (z10) {
                        return C6473am.f46625a;
                    }
                    return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                        @Override
                        public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                            return C7139em.this.a(j10, h52, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                        }
                    }));
                }
            }
        }
        z10 = false;
        if (z10) {
        }
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, C4992Cm c4992Cm, C4798y c4798y) {
        return c4992Cm.b(m22) || c4798y.f38408a.g().a(m22, new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58165R;
                return bVar;
            }
        });
    }

    public final boolean a(final C7437ga c7437ga, final com.android.tools.r8.graph.H5 h52) {
        return AbstractC9907vK.b(this.f47776c, new V60() {
            @Override
            public final boolean apply(Object obj) {
                boolean a10;
                X9 x92 = (X9) obj;
                a10 = x92.a(h52, C7437ga.this).a();
                return a10;
            }
        });
    }

    public static com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.M2 m22, C4798y c4798y) {
        com.android.tools.r8.graph.M2[] m2Arr = (com.android.tools.r8.graph.M2[]) a22.x0().f36675b.clone();
        AbstractC10643zm b10 = c4798y.E().x().b();
        Iterator<com.android.tools.r8.graph.M2> it = a22.x0().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 next = it.next();
            if (b10.a(next)) {
                m2Arr[i10] = a(c4798y, next);
            }
            i10++;
        }
        com.android.tools.r8.graph.M2 z02 = a22.z0();
        if (b10.a(z02)) {
            z02 = a(c4798y, z02);
        }
        return c4798y.b().a(m22, c4798y.b().a(z02, m2Arr), a22.f38298g);
    }

    public static void a(Set set, String str, C4798y c4798y) {
        if (c4798y.E().f50599F1.f50807A0) {
            StringBuilder sb2 = new StringBuilder("Tracked ");
            sb2.append(str);
            sb2.append("desugared API conversions: ");
            Iterator it = set.iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) it.next();
                sb2.append("\n");
                sb2.append((Object) a22);
            }
            c4798y.E().f50691j.warning(new StringDiagnostic(sb2.toString()));
            set.clear();
        }
    }

    public static com.android.tools.r8.graph.M2 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 d10;
        C4724u1 b10 = c4798y.b();
        String H10 = C4932Bl.H("$-vivified-$." + m22.toString());
        synchronized (b10) {
            d10 = b10.d(b10.b(H10));
            b10.a(d10);
        }
        c4798y.E().x().b().a(d10, m22);
        return d10;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Collection a(C7437ga c7437ga, com.android.tools.r8.graph.H5 h52, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        boolean z10;
        com.android.tools.r8.graph.H0 p10;
        com.android.tools.r8.graph.A2 V10 = c7437ga.V();
        Set set = this.f47779f;
        if (set != null) {
            set.add(V10);
        }
        if (!this.f47775b.E().f50599F1.f50876g && !c7437ga.b(h52.p()) && !c7437ga.V().b(this.f47775b.b())) {
            com.android.tools.r8.graph.A2 V11 = c7437ga.V();
            C4514j g10 = this.f47775b.g();
            if (c7437ga.b(h52.p())) {
                C4798y<?> c4798y = this.f47775b;
                g10.getClass();
                p10 = g10.a(V11, h52.getHolder(), c4798y, g10);
            } else {
                p10 = g10.b(V11, c7437ga.X()).p();
            }
            if (!f47774g && p10 == null) {
                throw new AssertionError();
            }
            if (!X2.a(this.f47775b).f53766c.f39247p.contains(p10.getReference())) {
                z10 = p10.getAccessFlags().l();
                if (!z10) {
                    return Collections.singletonList(new C7437ga(184, this.f47778e.f39356e.a(c7437ga, abstractC7103ea, h52, c5035Df).getReference(), false));
                }
                return this.f47778e.f39356e.a(c7437ga, c5035Df, interfaceC8175ky, qt, abstractC7103ea, h52);
            }
        }
        z10 = false;
        if (!z10) {
        }
    }
}
