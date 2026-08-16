package an;

import Um.A;
import Um.AbstractC3152a;
import Um.B;
import Um.C3154c;
import Um.i;
import Um.j;
import Um.k;
import Um.l;
import Um.m;
import Um.n;
import Um.o;
import Um.p;
import Um.q;
import Um.r;
import Um.u;
import Um.v;
import Um.w;
import Um.x;
import Um.y;
import Um.z;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class a extends AbstractC3152a implements Ym.a {

    public final b f32395a;

    public final e f32396b;

    public Sm.b f32397c;

    public a(b bVar) {
        this.f32395a = bVar;
        this.f32396b = bVar.b();
    }

    @Override
    public void A(o oVar) {
        Q(oVar.p());
    }

    @Override
    public void D(m mVar) {
        i(mVar);
        O(mVar, ':');
    }

    @Override
    public Set<Class<? extends v>> E() {
        return new HashSet(Arrays.asList(i.class, m.class, x.class, C3154c.class, Um.d.class, k.class, n.class, B.class, q.class, r.class, u.class, w.class, p.class, j.class, z.class, A.class, Um.e.class, o.class, y.class, l.class));
    }

    @Override
    public void H(n nVar) {
        Q(nVar.q());
    }

    @Override
    public void I(l lVar) {
        O(lVar, null);
    }

    @Override
    public void K(Um.d dVar) {
        if (this.f32397c != null) {
            N();
        }
        this.f32397c = new Sm.a(this.f32397c, dVar);
        i(dVar);
        O(dVar, null);
        if (this.f32397c.b() != null) {
            this.f32397c = this.f32397c.b();
        } else {
            this.f32397c = null;
        }
    }

    @Override
    public void L(q qVar) {
        if (!this.f32395a.c()) {
            this.f32396b.g(qVar.q());
        } else {
            this.f32396b.h(qVar.q());
            O(qVar, null);
        }
    }

    @Override
    public void M(B b10) {
        if (!this.f32395a.c()) {
            this.f32396b.g("***");
        }
        O(b10, null);
    }

    public final void N() {
        if (this.f32395a.c()) {
            this.f32396b.e();
        } else {
            this.f32396b.d();
        }
    }

    public final void O(v vVar, Character ch2) {
        if (!this.f32395a.c()) {
            if (vVar.g() != null) {
                this.f32396b.d();
            }
        } else {
            if (ch2 != null) {
                this.f32396b.f(ch2.charValue());
            }
            if (vVar.g() != null) {
                this.f32396b.e();
            }
        }
    }

    public final void P(v vVar, String str, String str2) {
        boolean z10 = false;
        boolean z11 = vVar.e() != null;
        boolean z12 = (str == null || str.equals(str2)) ? false : true;
        if (str2 != null && !str2.equals("")) {
            z10 = true;
        }
        if (z11) {
            this.f32396b.f('\"');
            i(vVar);
            this.f32396b.f('\"');
            if (z12 || z10) {
                this.f32396b.e();
                this.f32396b.f('(');
            }
        }
        if (z12) {
            this.f32396b.g(str);
            if (z10) {
                this.f32396b.c();
                this.f32396b.e();
            }
        }
        if (z10) {
            this.f32396b.g(str2);
        }
        if (z11) {
            if (z12 || z10) {
                this.f32396b.f(')');
            }
        }
    }

    public final void Q(String str) {
        if (this.f32395a.c()) {
            this.f32396b.h(str);
        } else {
            this.f32396b.g(str);
        }
    }

    @Override
    public void a(v vVar) {
        vVar.c(this);
    }

    @Override
    public void c(k kVar) {
        if (!this.f32395a.c()) {
            this.f32396b.g(kVar.u());
        } else {
            this.f32396b.h(kVar.u());
            O(kVar, null);
        }
    }

    @Override
    public void e(Um.e eVar) {
        this.f32396b.f('\"');
        this.f32396b.g(eVar.p());
        this.f32396b.f('\"');
    }

    @Override
    public void f(p pVar) {
        P(pVar, pVar.q(), pVar.p());
    }

    @Override
    public void g(y yVar) {
        O(yVar, null);
    }

    @Override
    public void i(v vVar) {
        v e10 = vVar.e();
        while (e10 != null) {
            v g10 = e10.g();
            this.f32395a.a(e10);
            e10 = g10;
        }
    }

    @Override
    public void j(u uVar) {
        Sm.b bVar = this.f32397c;
        if (bVar != null && (bVar instanceof Sm.c)) {
            Sm.c cVar = (Sm.c) bVar;
            String a10 = this.f32395a.c() ? "" : cVar.a();
            this.f32396b.g(a10 + cVar.c() + cVar.d() + " ");
            i(uVar);
            O(uVar, null);
            cVar.e();
            return;
        }
        if (bVar == null || !(bVar instanceof Sm.a)) {
            return;
        }
        Sm.a aVar = (Sm.a) bVar;
        if (!this.f32395a.c()) {
            this.f32396b.g(aVar.a() + aVar.c() + " ");
        }
        i(uVar);
        O(uVar, null);
    }

    @Override
    public void k(i iVar) {
        i(iVar);
    }

    @Override
    public void r(x xVar) {
        i(xVar);
        if (xVar.h() == null || (xVar.h() instanceof i)) {
            O(xVar, null);
        }
    }

    @Override
    public void s(C3154c c3154c) {
        this.f32396b.f('\u00ab');
        i(c3154c);
        this.f32396b.f('\u00bb');
        O(c3154c, null);
    }

    @Override
    public void u(w wVar) {
        if (this.f32397c != null) {
            N();
        }
        this.f32397c = new Sm.c(this.f32397c, wVar);
        i(wVar);
        O(wVar, null);
        if (this.f32397c.b() != null) {
            this.f32397c = this.f32397c.b();
        } else {
            this.f32397c = null;
        }
    }

    @Override
    public void v(A a10) {
        Q(a10.p());
    }

    @Override
    public void y(r rVar) {
        P(rVar, rVar.q(), rVar.p());
    }
}
