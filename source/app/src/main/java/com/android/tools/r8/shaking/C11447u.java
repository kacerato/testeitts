package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import java.util.ListIterator;

public class C11447u extends AbstractC4446f6 {

    public final C4514j f57878e;

    public final com.android.tools.r8.androidapi.a f57879f;

    public final boolean f57880g;

    public com.android.tools.r8.androidapi.f f57881h;

    public C11447u(C4798y c4798y, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.androidapi.a aVar) {
        super(c4798y, h52);
        this.f57878e = c4798y.g();
        this.f57879f = aVar;
        this.f57880g = aVar.a();
        this.f57881h = c4798y.f38405T;
    }

    @Override
    public void a(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
    }

    @Override
    public void b(com.android.tools.r8.graph.M2 m22) {
    }

    @Override
    public void c(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
    }

    @Override
    public void d(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
    }

    @Override
    public void e(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
    }

    @Override
    public void f(com.android.tools.r8.graph.M2 m22) {
    }

    @Override
    public void g(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
    }

    @Override
    public void h(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
    }

    @Override
    public void a(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
    }

    @Override
    public void b(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
    }

    @Override
    public void c(com.android.tools.r8.graph.M2 m22) {
        a((com.android.tools.r8.graph.J2) m22);
    }

    @Override
    public void d(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
    }

    @Override
    public void e(com.android.tools.r8.graph.M2 m22) {
        a((com.android.tools.r8.graph.J2) m22);
    }

    @Override
    public void f(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
    }

    @Override
    public void g(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
    }

    @Override
    public void a(com.android.tools.r8.graph.M2 m22, ListIterator listIterator, boolean z10) {
        a((com.android.tools.r8.graph.J2) m22);
    }

    @Override
    public void b(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
    }

    @Override
    public void d(com.android.tools.r8.graph.M2 m22) {
        a((com.android.tools.r8.graph.J2) m22);
    }

    @Override
    public void f(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
    }

    @Override
    public void a(com.android.tools.r8.graph.M2 m22, boolean z10) {
        a((com.android.tools.r8.graph.J2) m22);
    }

    public final void a(com.android.tools.r8.graph.J2 j22) {
        if (this.f57880g) {
            j22.getClass();
            if (j22 instanceof com.android.tools.r8.graph.M2) {
                this.f57881h = this.f57881h.a(this.f57879f.a(j22));
                return;
            }
            if (!j22.S().I0()) {
                this.f57881h = this.f57881h.a(this.f37176a.f38405T);
                return;
            }
            com.android.tools.r8.graph.E0 g10 = this.f37176a.g(j22.S());
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.f fVar = com.android.tools.r8.androidapi.h.f35609b;
            if (g10 != null) {
                fVar = (com.android.tools.r8.androidapi.f) com.android.tools.r8.internal.G2.a(this.f37176a, this.f57878e, g10, j22.m0()).b();
            }
            this.f57881h = this.f57881h.a(fVar);
        }
    }

    @Override
    public void a(com.android.tools.r8.graph.M2 m22) {
        if (this.f57880g) {
            com.android.tools.r8.androidapi.f a10 = this.f57879f.a(m22);
            if (!com.android.tools.r8.internal.Y2.a(this.f57878e.b(), m22)) {
                C8570nJ j10 = this.f57878e.j();
                j10.getClass();
                if (!j10.a(com.android.tools.r8.internal.C2.L) && !a10.U()) {
                    return;
                }
            }
            this.f57881h = this.f57881h.a(a10);
        }
    }
}
