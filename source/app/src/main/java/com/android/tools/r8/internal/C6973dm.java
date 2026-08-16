package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Predicate;

public final class C6973dm implements InterfaceC5599Na {

    public static final boolean f47505g = true;

    public final C4798y f47506b;

    public final C4724u1 f47507c;

    public final C4992Cm f47508d;

    public final Set f47509e;

    public final Predicate f47510f;

    public C6973dm(C4798y c4798y, Predicate predicate) {
        this.f47506b = c4798y;
        this.f47507c = c4798y.b();
        this.f47510f = predicate;
        this.f47508d = new C4992Cm(c4798y);
        if (c4798y.E().f50599F1.f50807A0) {
            this.f47509e = C4875Al0.a();
        } else {
            this.f47509e = null;
        }
    }

    @Override
    public final void a(Collection collection, AbstractC5947Ta abstractC5947Ta, ExecutorService executorService, C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Desugared library API callback synthesizer");
        try {
            C5093Ef k10 = this.f47506b.k();
            C4977Cf c4977Cf = new C4977Cf(k10, k10.f39965a.f40823b);
            if (!C5093Ef.f39964c) {
                k10.a(c4977Cf);
            }
            Set b11 = abstractC5947Ta.b();
            if (!f47505g) {
                for (com.android.tools.r8.graph.H2 h22 : this.f47506b.f38408a.g().a()) {
                    if (!f47505g && C7139em.a(h22.f36245e, this.f47508d, this.f47506b)) {
                        throw new AssertionError();
                    }
                }
            }
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it.next();
                if (!this.f47506b.a(h23)) {
                    ArrayList arrayList = new ArrayList();
                    C9406sK M12 = h23.M1();
                    CK a10 = JK.a(M12.f52337b.iterator(), M12.f52338c);
                    while (a10.f43396b.hasNext()) {
                        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next());
                        if (a(h52) && (this.f47510f.test(h52) || b11.contains(h52.getReference()))) {
                            Set set = this.f47509e;
                            if (set != null) {
                                set.add(h52.getReference());
                            }
                            arrayList.add(this.f47508d.f39356e.a(h52, abstractC5947Ta, c4977Cf).d());
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        h23.a(arrayList);
                    }
                }
            }
            if (!f47505g) {
                for (com.android.tools.r8.graph.H2 h24 : this.f47506b.f38408a.g().a()) {
                    if (!f47505g && C7139em.a(h24.f36245e, this.f47508d, this.f47506b)) {
                        throw new AssertionError();
                    }
                }
            }
            C7139em.a(this.f47509e, "callback ", this.f47506b);
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        C4516j1 d10 = h52.d();
        d10.L0();
        if (d10.f37314g.h() || d10.w0() || d10.d1() || d10.k1().a() || !this.f47506b.E().x().b().a(d10.X0()) || X2.a(this.f47506b).f53766c.g().containsKey(h52.p())) {
            return false;
        }
        if (!this.f47506b.m() && h52.getHolder().isInterface() && h52.d().g1() && (!this.f47506b.E().f() || this.f47506b.E().x().f45396a.f53764a)) {
            return false;
        }
        if (!X2.a(this.f47506b).f53765b.f39885e && this.f47506b.E().x().f45396a.f53764a) {
            return false;
        }
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.a((Object[]) holder.f36248h.f36675b);
        com.android.tools.r8.graph.M2 m22 = holder.f36247g;
        if (m22 != this.f47507c.f38068i2) {
            c6286Yx0.b((C6286Yx0) m22);
        }
        boolean z10 = false;
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.E0 g10 = this.f47506b.g((com.android.tools.r8.graph.M2) c6286Yx0.c());
            if (g10 != null) {
                c6286Yx0.a((Object[]) g10.f36248h.f36675b);
                com.android.tools.r8.graph.M2 m23 = g10.f36247g;
                if (m23 != this.f47507c.f38068i2) {
                    c6286Yx0.b((C6286Yx0) m23);
                }
                if (g10.f0() || this.f47506b.E().x().f45396a.f53764a) {
                    C10261xU a10 = X2.a(this.f47506b);
                    if (!a10.f53765b.f39885e) {
                        if (a10.f53766c.g().containsKey(g10.f36245e)) {
                            continue;
                        } else {
                            if (a10.f53766c.b(g10.f36245e)) {
                                continue;
                            }
                        }
                    }
                    C4516j1 c10 = g10.c(h52.getReference());
                    if (c10 == null) {
                        continue;
                    } else {
                        if (this.f47506b.E().x().b().a(g10.f36245e) || c10.h1()) {
                            return false;
                        }
                        z10 = true;
                    }
                }
            }
        }
        return z10;
    }
}
