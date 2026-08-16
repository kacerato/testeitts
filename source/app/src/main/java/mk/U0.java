package mk;

import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import jk.i;
import sk.AbstractC15328n;

public class U0 extends i.b {
    public U0(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        if (v()) {
            return this;
        }
        jk.f fVar = this.f93913b;
        if (fVar.j()) {
            return this;
        }
        jk.f fVar2 = this.f93914c;
        jk.f fVar3 = this.f93915d[0];
        return new U0(this.f93912a, fVar, fVar2.a(fVar3), new jk.f[]{fVar3});
    }

    @Override
    public jk.i M() {
        if (v()) {
            return this;
        }
        AbstractC13875e i10 = i();
        jk.f fVar = this.f93913b;
        if (fVar.j()) {
            return i10.x();
        }
        jk.f fVar2 = this.f93914c;
        jk.f fVar3 = this.f93915d[0];
        boolean i11 = fVar3.i();
        jk.f p10 = i11 ? fVar3 : fVar3.p();
        jk.f a10 = i11 ? fVar2.p().a(fVar2) : fVar2.a(fVar3).k(fVar2);
        if (a10.j()) {
            return new U0(i10, a10, i10.r());
        }
        jk.f p11 = a10.p();
        jk.f k10 = i11 ? a10 : a10.k(p10);
        jk.f p12 = fVar2.a(fVar).p();
        if (!i11) {
            fVar3 = p10.p();
        }
        return new U0(i10, p11, p12.a(a10).a(p10).k(p12).a(fVar3).a(p11).a(k10), new jk.f[]{k10});
    }

    @Override
    public jk.i N(jk.i iVar) {
        if (v()) {
            return iVar;
        }
        if (iVar.v()) {
            return M();
        }
        AbstractC13875e i10 = i();
        jk.f fVar = this.f93913b;
        if (fVar.j()) {
            return iVar;
        }
        jk.f n10 = iVar.n();
        jk.f s10 = iVar.s(0);
        if (n10.j() || !s10.i()) {
            return M().a(iVar);
        }
        jk.f fVar2 = this.f93914c;
        jk.f fVar3 = this.f93915d[0];
        jk.f o10 = iVar.o();
        jk.f p10 = fVar.p();
        jk.f p11 = fVar2.p();
        jk.f p12 = fVar3.p();
        jk.f a10 = p11.a(fVar2.k(fVar3));
        jk.f b10 = o10.b();
        jk.f m10 = b10.k(p12).a(p11).m(a10, p10, p12);
        jk.f k10 = n10.k(p12);
        jk.f p13 = k10.a(a10).p();
        if (p13.j()) {
            return m10.j() ? iVar.M() : i10.x();
        }
        if (m10.j()) {
            return new U0(i10, m10, i10.r());
        }
        jk.f k11 = m10.p().k(k10);
        jk.f k12 = m10.k(p13).k(p12);
        return new U0(i10, k11, m10.a(p13).p().m(a10, b10, k12), new jk.f[]{k12});
    }

    @Override
    public jk.i a(jk.i iVar) {
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        long[] jArr4;
        S0 s02;
        S0 s03;
        S0 s04;
        if (v()) {
            return iVar;
        }
        if (iVar.v()) {
            return this;
        }
        AbstractC13875e i10 = i();
        S0 s05 = (S0) this.f93913b;
        S0 s06 = (S0) iVar.n();
        if (s05.j()) {
            return s06.j() ? i10.x() : iVar.a(this);
        }
        S0 s07 = (S0) this.f93914c;
        S0 s08 = (S0) this.f93915d[0];
        S0 s09 = (S0) iVar.o();
        S0 s010 = (S0) iVar.s(0);
        long[] c10 = AbstractC15328n.c();
        long[] c11 = AbstractC15328n.c();
        long[] c12 = AbstractC15328n.c();
        long[] c13 = AbstractC15328n.c();
        long[] s10 = s08.i() ? null : R0.s(s08.f97260g);
        if (s10 == null) {
            jArr = s06.f97260g;
            jArr2 = s09.f97260g;
        } else {
            R0.q(s06.f97260g, s10, c11);
            R0.q(s09.f97260g, s10, c13);
            jArr = c11;
            jArr2 = c13;
        }
        long[] s11 = s010.i() ? null : R0.s(s010.f97260g);
        if (s11 == null) {
            jArr3 = s05.f97260g;
            jArr4 = s07.f97260g;
        } else {
            R0.q(s05.f97260g, s11, c10);
            R0.q(s07.f97260g, s11, c12);
            jArr3 = c10;
            jArr4 = c12;
        }
        R0.b(jArr4, jArr2, c12);
        R0.b(jArr3, jArr, c13);
        if (AbstractC15328n.h(c13)) {
            return AbstractC15328n.h(c12) ? M() : i10.x();
        }
        if (s06.j()) {
            jk.i B10 = B();
            S0 s011 = (S0) B10.q();
            jk.f r10 = B10.r();
            jk.f d10 = r10.a(s09).d(s011);
            s02 = (S0) d10.p().a(d10).a(s011);
            if (s02.j()) {
                return new U0(i10, s02, i10.r());
            }
            s03 = (S0) d10.k(s011.a(s02)).a(s02).a(r10).d(s02).a(s02);
            s04 = (S0) i10.o(InterfaceC13874d.f93854b);
        } else {
            R0.w(c13, c13);
            long[] s12 = R0.s(c12);
            R0.q(jArr3, s12, c10);
            R0.q(jArr, s12, c11);
            s02 = new S0(c10);
            R0.o(c10, c11, s02.f97260g);
            if (s02.j()) {
                return new U0(i10, s02, i10.r());
            }
            S0 s012 = new S0(c12);
            R0.q(c13, s12, s012.f97260g);
            if (s11 != null) {
                long[] jArr5 = s012.f97260g;
                R0.q(jArr5, s11, jArr5);
            }
            long[] d11 = AbstractC15328n.d();
            R0.b(c11, c13, c13);
            R0.x(c13, d11);
            R0.b(s07.f97260g, s08.f97260g, c13);
            R0.p(c13, s012.f97260g, d11);
            S0 s013 = new S0(c13);
            R0.t(d11, s013.f97260g);
            if (s10 != null) {
                long[] jArr6 = s012.f97260g;
                R0.q(jArr6, s10, jArr6);
            }
            s03 = s013;
            s04 = s012;
        }
        return new U0(i10, s02, s03, new jk.f[]{s04});
    }

    @Override
    public jk.i d() {
        return new U0(null, f(), g());
    }

    @Override
    public boolean h() {
        jk.f n10 = n();
        return (n10.j() || o().u() == n10.u()) ? false : true;
    }

    @Override
    public jk.f r() {
        jk.f fVar = this.f93913b;
        jk.f fVar2 = this.f93914c;
        if (v() || fVar.j()) {
            return fVar2;
        }
        jk.f k10 = fVar2.a(fVar).k(fVar);
        jk.f fVar3 = this.f93915d[0];
        return !fVar3.i() ? k10.d(fVar3) : k10;
    }

    public U0(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
