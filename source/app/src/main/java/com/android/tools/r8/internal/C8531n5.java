package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.origin.Origin;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.function.Supplier;

public final class C8531n5 implements InterfaceC5599Na {

    public static final boolean f50500d = true;

    public final C4798y f50501b;

    public final C8364m5 f50502c;

    public C8531n5(C4798y c4798y) {
        this.f50501b = c4798y;
        this.f50502c = new C8364m5(c4798y.E().z(), c4798y.b());
    }

    @Override
    public final void a(Collection collection, AbstractC5947Ta abstractC5947Ta, ExecutorService executorService, C8659ns0 c8659ns0) {
        com.android.tools.r8.graph.H5 a10;
        C8659ns0 b10 = c8659ns0.b("Auto closeable retargeter post processor");
        try {
            C5093Ef k10 = this.f50501b.k();
            C4977Cf c4977Cf = new C4977Cf(k10, k10.f39965a.f40823b);
            if (!C5093Ef.f39964c) {
                k10.a(c4977Cf);
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
                if (h22.f36247g == null) {
                    if (!f50500d && !h22.f36245e.a(this.f50501b.b().f38068i2)) {
                        throw new AssertionError((Object) h22.f36245e.j0());
                    }
                } else if (!h22.isInterface() || !this.f50501b.E().Q()) {
                    if (a(h22) && (a10 = a(abstractC5947Ta, h22, c4977Cf)) != null) {
                        arrayList.add(a10);
                    }
                }
            }
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) obj;
                h52.getHolder().f36252l.f36638b.c(h52.d());
                abstractC5947Ta.a(h52.getHolder(), h52);
            }
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

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        if (h22.f36248h.a(this.f50501b.b().f37834C2)) {
            return true;
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        com.android.tools.r8.graph.E0 g10 = this.f50501b.g(h22.f36247g);
        if (g10 != null && g10.f0()) {
            c6286Yx0.b((C6286Yx0) g10);
        }
        Iterator<com.android.tools.r8.graph.M2> it = h22.f36248h.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E0 g11 = this.f50501b.g(it.next());
            if (g11 != null && (this.f50501b.E().Q() || g11.f0())) {
                c6286Yx0.b((C6286Yx0) g11);
            }
        }
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) c6286Yx0.c();
            if (!e02.getType().a(this.f50501b.b().f38068i2)) {
                if (e02.f36248h.a(this.f50501b.b().f37834C2)) {
                    return true;
                }
                com.android.tools.r8.graph.E0 g12 = this.f50501b.g(e02.f36247g);
                if (g12 == null) {
                    com.android.tools.r8.graph.M2 m22 = e02.f36247g;
                    C8570nJ E10 = this.f50501b.E();
                    Origin origin = h22.f36244d;
                    com.android.tools.r8.graph.M2 m23 = h22.f36245e;
                    com.android.tools.r8.graph.A2 a10 = this.f50501b.b().a(m23, this.f50501b.b().a(this.f50501b.b().f37905M1, new com.android.tools.r8.graph.M2[0]), "close");
                    int i10 = QC.f43505c;
                    E10.a(origin, m23, m22, "missing", new C5978Tm0(a10));
                } else {
                    c6286Yx0.b((C6286Yx0) g12);
                }
                Iterator<com.android.tools.r8.graph.M2> it2 = e02.f36248h.iterator();
                while (it2.hasNext()) {
                    com.android.tools.r8.graph.E0 g13 = this.f50501b.g(it2.next());
                    if (g13 != null) {
                        c6286Yx0.b((C6286Yx0) g13);
                    }
                }
            }
        }
        return false;
    }

    public final com.android.tools.r8.graph.H5 a(AbstractC5947Ta abstractC5947Ta, com.android.tools.r8.graph.H2 h22, C4977Cf c4977Cf) {
        com.android.tools.r8.graph.H5 h52 = null;
        if (this.f50501b.a(h22)) {
            return null;
        }
        com.android.tools.r8.graph.A2 a10 = this.f50501b.b().a(h22.f36245e, this.f50501b.b().a(this.f50501b.b().f37905M1, new com.android.tools.r8.graph.M2[0]), "close");
        if (h22.c(a10) == null) {
            C4516j1 a11 = a(a10, h22, abstractC5947Ta, c4977Cf);
            if (a11 == null) {
                return null;
            }
            h52 = new com.android.tools.r8.graph.H5(h22, a11);
        }
        com.android.tools.r8.graph.M2 m22 = this.f50501b.b().f37834C2;
        if (h22.f36248h.a(m22)) {
            return h52;
        }
        h22.a(Collections.singletonList(new H3.c(m22)), this.f50501b.b());
        abstractC5947Ta.a(h22, this.f50501b.g(m22));
        return h52;
    }

    public final C4516j1 a(com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.H2 h22, AbstractC5947Ta abstractC5947Ta, final C4977Cf c4977Cf) {
        C4514j g10 = this.f50501b.g();
        boolean z10 = f50500d;
        if (!z10 && h22.c(a22) != null) {
            throw new AssertionError();
        }
        C4798y<?> c4798y = this.f50501b;
        boolean z11 = C8364m5.f50192e;
        com.android.tools.r8.graph.H0 a10 = c4798y.g().a(a22, h22, c4798y, c4798y.g());
        if (a10 == null) {
            a10 = c4798y.g().b(h22, a22);
        }
        if (a10 == null) {
            return null;
        }
        C8364m5 c8364m5 = this.f50502c;
        if (!c8364m5.f50196d.contains(a10.p())) {
            return null;
        }
        com.android.tools.r8.graph.A2 a11 = this.f50502c.a(this.f50501b, a10.p(), h22, abstractC5947Ta, new Supplier() {
            @Override
            public final Object get() {
                C5209Gf a12;
                a12 = C4977Cf.this.a(h22);
                return a12;
            }
        });
        if (!z10 && (a11 == null || a11 == a22)) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 s02 = a22.s0();
        s02.getClass();
        com.android.tools.r8.graph.H0 p10 = g10.b(a22, g10.g(s02).isInterface()).p();
        if (!z10 && p10 == null) {
            throw new AssertionError();
        }
        C4516j1 a12 = C4516j1.a(p10, h22, a11, this.f50501b.b(), this.f50501b.f38408a.g().g(a11.s0()));
        a12.a(AbstractC9530t40.f52517a);
        return a12;
    }
}
