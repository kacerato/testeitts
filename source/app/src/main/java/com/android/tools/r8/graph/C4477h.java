package com.android.tools.r8.graph;

import com.android.tools.r8.DesugarGraphConsumer;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.synthesis.C11549b;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

public class C4477h implements InterfaceC4403d1 {

    public static final boolean f37253g = true;

    public final AbstractC4780x0 f37254a;

    public final C6300Zd f37255b;

    public final C4724u1 f37256c;

    public final C11349o2 f37257d;

    public final com.android.tools.r8.synthesis.J f37258e;

    public final com.android.tools.r8.internal.U6 f37259f;

    public C4477h(C6300Zd c6300Zd, C11549b c11549b, C11349o2 c11349o2) {
        this(c11549b.f58225a, c6300Zd, new com.android.tools.r8.synthesis.J(c11549b), c11349o2, new com.android.tools.r8.internal.U6());
    }

    public static C4477h a(AbstractC4780x0 abstractC4780x0, com.android.tools.r8.synthesis.E e10) {
        return new C4477h(C6300Zd.a(), com.android.tools.r8.synthesis.J.a(abstractC4780x0, e10), C11349o2.b());
    }

    @Override
    public C4724u1 b() {
        if (!f37253g) {
            c();
        }
        return this.f37256c;
    }

    public final void c() {
        if (!f37253g && this.f37259f.a()) {
            throw new AssertionError();
        }
    }

    public Collection<H2> d() {
        if (!f37253g) {
            c();
        }
        return this.f37254a.d();
    }

    public final Collection e() {
        if (!f37253g) {
            c();
        }
        return this.f37254a.e();
    }

    public final C11349o2 f() {
        if (!f37253g) {
            c();
        }
        return this.f37257d;
    }

    public final com.android.tools.r8.synthesis.J g() {
        if (!f37253g) {
            c();
        }
        return this.f37258e;
    }

    public boolean h() {
        if (f37253g) {
            return false;
        }
        c();
        return false;
    }

    public boolean i() {
        if (f37253g) {
            return false;
        }
        c();
        return false;
    }

    public C8570nJ j() {
        return this.f37254a.f38366d;
    }

    public final void k() {
        this.f37259f.f();
    }

    public C4514j l() {
        if (f37253g) {
            return null;
        }
        c();
        return null;
    }

    public C11245i m() {
        if (f37253g) {
            return null;
        }
        c();
        return null;
    }

    @Override
    public InterfaceC4364b0 f(M2 m22) {
        if (!f37253g) {
            c();
        }
        com.android.tools.r8.synthesis.J j10 = this.f37258e;
        AbstractC4780x0 abstractC4780x0 = this.f37254a;
        Objects.requireNonNull(abstractC4780x0);
        return j10.a(new C4774wd(abstractC4780x0), m22);
    }

    @Override
    public E0 g(M2 m22) {
        return c(m22);
    }

    public final E0 c(M2 m22) {
        if (!f37253g) {
            c();
        }
        com.android.tools.r8.synthesis.J j10 = this.f37258e;
        AbstractC4780x0 abstractC4780x0 = this.f37254a;
        Objects.requireNonNull(abstractC4780x0);
        return j10.a(new C4774wd(abstractC4780x0), m22).D();
    }

    public C4477h(AbstractC4780x0 abstractC4780x0, C6300Zd c6300Zd, com.android.tools.r8.synthesis.J j10, C11349o2 c11349o2, com.android.tools.r8.internal.U6 u62) {
        this.f37254a = abstractC4780x0;
        this.f37255b = c6300Zd;
        this.f37256c = abstractC4780x0.f38367e;
        this.f37257d = c11349o2;
        this.f37258e = j10;
        this.f37259f = u62;
    }

    public C4477h a(O5 o52, ExecutorService executorService, C8659ns0 c8659ns0) {
        boolean z10 = f37253g;
        if (!z10 && getClass() != C4477h.class) {
            throw new AssertionError();
        }
        if (!z10) {
            c();
        }
        if (!z10 && o52.f36678a != a()) {
            throw new AssertionError();
        }
        if (o52.b()) {
            return this;
        }
        c8659ns0.b("Pruning AppInfo");
        C6300Zd a10 = this.f37255b.a(o52);
        com.android.tools.r8.synthesis.J g10 = g();
        C4477h c4477h = new C4477h(a10, com.android.tools.r8.synthesis.J.a(o52, g10.f58087d, g10.f58088e, g10.f58086c, g10.f58084a, g10.f58089f), f().a(o52));
        c8659ns0.d();
        return c4477h;
    }

    public C4477h a(AbstractC4780x0 abstractC4780x0) {
        return a(g().a(abstractC4780x0));
    }

    public C4477h a(C11549b c11549b) {
        return new C4477h(this.f37255b, c11549b, this.f37257d);
    }

    public C4477h a(C11349o2 c11349o2) {
        if (!f37253g) {
            c();
        }
        return new C4477h(this.f37254a, this.f37255b, this.f37258e, c11349o2, new com.android.tools.r8.internal.U6());
    }

    public AbstractC4780x0 a() {
        if (!f37253g) {
            c();
        }
        return this.f37254a;
    }

    public final void a(E0 e02, E0 e03) {
        boolean z10 = f37253g;
        if (!z10 && e02.f0()) {
            throw new AssertionError();
        }
        if (!z10 && e03.f0()) {
            throw new AssertionError();
        }
        DesugarGraphConsumer desugarGraphConsumer = j().f50656Y1;
        if (desugarGraphConsumer == null) {
            return;
        }
        Origin origin = e03.f36244d;
        List<Origin> d10 = g().d(e02.getType());
        if (d10.isEmpty()) {
            Origin origin2 = e02.f36244d;
            if (origin == com.android.tools.r8.origin.c.a() || origin2 == com.android.tools.r8.origin.c.a() || origin2 == origin) {
                return;
            }
            desugarGraphConsumer.accept(origin2, origin);
            return;
        }
        for (Origin origin3 : d10) {
            if (origin != com.android.tools.r8.origin.c.a() && origin3 != com.android.tools.r8.origin.c.a() && origin3 != origin) {
                desugarGraphConsumer.accept(origin3, origin);
            }
        }
    }

    public D3 a(M2 m22, C4554l1 c4554l1, H5 h52) {
        if (m22 != h52.p()) {
            boolean z10 = D3.f36221a;
            return C4764w3.f38324b;
        }
        H2 holder = h52.getHolder();
        C4460g1 a10 = holder.f36251k.f37700b.a(c4554l1);
        if (a10 != null) {
            return D3.a(holder, holder, a10);
        }
        boolean z11 = D3.f36221a;
        return G3.f36338b;
    }
}
