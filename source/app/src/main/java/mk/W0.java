package mk;

import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import jk.i;
import sk.AbstractC15328n;
import sk.AbstractC15329o;

public class W0 extends i.b {
    public W0(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
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
        return new W0(this.f93912a, fVar, fVar2.a(fVar3), new jk.f[]{fVar3});
    }

    @Override
    public jk.i M() {
        long[] jArr;
        if (v()) {
            return this;
        }
        AbstractC13875e i10 = i();
        S0 s02 = (S0) this.f93913b;
        if (s02.j()) {
            return i10.x();
        }
        S0 s03 = (S0) this.f93914c;
        S0 s04 = (S0) this.f93915d[0];
        long[] c10 = AbstractC15328n.c();
        long[] c11 = AbstractC15328n.c();
        long[] s10 = s04.i() ? null : R0.s(s04.f97260g);
        long[] jArr2 = s03.f97260g;
        if (s10 == null) {
            jArr = s04.f97260g;
        } else {
            R0.q(jArr2, s10, c10);
            R0.w(s04.f97260g, c11);
            jArr2 = c10;
            jArr = c11;
        }
        long[] c12 = AbstractC15328n.c();
        R0.w(s03.f97260g, c12);
        R0.d(jArr2, jArr, c12);
        if (AbstractC15328n.h(c12)) {
            return new W0(i10, new S0(c12), V0.f97274v);
        }
        long[] d10 = AbstractC15328n.d();
        R0.p(c12, jArr2, d10);
        S0 s05 = new S0(c10);
        R0.w(c12, s05.f97260g);
        S0 s06 = new S0(c12);
        if (s10 != null) {
            long[] jArr3 = s06.f97260g;
            R0.o(jArr3, jArr, jArr3);
        }
        long[] jArr4 = s02.f97260g;
        if (s10 != null) {
            R0.q(jArr4, s10, c11);
            jArr4 = c11;
        }
        R0.x(jArr4, d10);
        R0.t(d10, c11);
        R0.d(s05.f97260g, s06.f97260g, c11);
        return new W0(i10, s05, new S0(c11), new jk.f[]{s06});
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
        S0 s02 = (S0) this.f93913b;
        if (s02.j()) {
            return iVar;
        }
        S0 s03 = (S0) iVar.n();
        S0 s04 = (S0) iVar.s(0);
        if (s03.j() || !s04.i()) {
            return M().a(iVar);
        }
        S0 s05 = (S0) this.f93914c;
        S0 s06 = (S0) this.f93915d[0];
        S0 s07 = (S0) iVar.o();
        long[] c10 = AbstractC15328n.c();
        long[] c11 = AbstractC15328n.c();
        long[] c12 = AbstractC15328n.c();
        long[] c13 = AbstractC15328n.c();
        R0.w(s02.f97260g, c10);
        R0.w(s05.f97260g, c11);
        R0.w(s06.f97260g, c12);
        R0.o(s05.f97260g, s06.f97260g, c13);
        R0.d(c12, c11, c13);
        long[] s10 = R0.s(c12);
        R0.q(s07.f97260g, s10, c12);
        R0.b(c12, c11, c12);
        long[] d10 = AbstractC15328n.d();
        R0.p(c12, c13, d10);
        R0.r(c10, s10, d10);
        R0.t(d10, c12);
        R0.q(s03.f97260g, s10, c10);
        R0.b(c10, c13, c11);
        R0.w(c11, c11);
        if (AbstractC15328n.h(c11)) {
            return AbstractC15328n.h(c12) ? iVar.M() : i10.x();
        }
        if (AbstractC15328n.h(c12)) {
            return new W0(i10, new S0(c12), V0.f97274v);
        }
        S0 s08 = new S0();
        R0.w(c12, s08.f97260g);
        long[] jArr = s08.f97260g;
        R0.o(jArr, c10, jArr);
        S0 s09 = new S0(c10);
        R0.o(c12, c11, s09.f97260g);
        long[] jArr2 = s09.f97260g;
        R0.q(jArr2, s10, jArr2);
        S0 s010 = new S0(c11);
        R0.b(c12, c11, s010.f97260g);
        long[] jArr3 = s010.f97260g;
        R0.w(jArr3, jArr3);
        AbstractC15329o.m1(18, d10);
        R0.p(s010.f97260g, c13, d10);
        R0.f(s07.f97260g, c13);
        R0.p(c13, s09.f97260g, d10);
        R0.t(d10, s010.f97260g);
        return new W0(i10, s08, s010, new jk.f[]{s09});
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
            s02 = (S0) d10.p().a(d10).a(s011).b();
            if (s02.j()) {
                return new W0(i10, s02, V0.f97274v);
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
                return new W0(i10, s02, V0.f97274v);
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
        return new W0(i10, s02, s03, new jk.f[]{s04});
    }

    @Override
    public jk.i d() {
        return new W0(null, f(), g());
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

    public W0(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
