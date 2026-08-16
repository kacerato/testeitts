package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15322h;
import sk.AbstractC15329o;

public class D extends i.c {
    public D(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new D(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
    }

    @Override
    public jk.i K() {
        return (v() || this.f93914c.j()) ? this : M().a(this);
    }

    @Override
    public jk.i M() {
        if (v()) {
            return this;
        }
        AbstractC13875e i10 = i();
        C c10 = (C) this.f93914c;
        if (c10.j()) {
            return i10.x();
        }
        C c11 = (C) this.f93913b;
        C c12 = (C) this.f93915d[0];
        int[] k10 = AbstractC15322h.k();
        int[] k11 = AbstractC15322h.k();
        int[] k12 = AbstractC15322h.k();
        B.p(c10.f97166g, k12);
        int[] k13 = AbstractC15322h.k();
        B.p(k12, k13);
        boolean i11 = c12.i();
        int[] iArr = c12.f97166g;
        if (!i11) {
            B.p(iArr, k11);
            iArr = k11;
        }
        B.s(c11.f97166g, iArr, k10);
        B.a(c11.f97166g, iArr, k11);
        B.i(k11, k10, k11);
        B.o(AbstractC15322h.d(k11, k11, k11), k11);
        B.i(k12, c11.f97166g, k12);
        B.o(AbstractC15329o.H0(7, k12, 2, 0), k12);
        B.o(AbstractC15329o.K0(7, k13, 3, 0, k10), k10);
        C c13 = new C(k13);
        B.p(k11, c13.f97166g);
        int[] iArr2 = c13.f97166g;
        B.s(iArr2, k12, iArr2);
        int[] iArr3 = c13.f97166g;
        B.s(iArr3, k12, iArr3);
        C c14 = new C(k12);
        B.s(k12, c13.f97166g, c14.f97166g);
        int[] iArr4 = c14.f97166g;
        B.i(iArr4, k11, iArr4);
        int[] iArr5 = c14.f97166g;
        B.s(iArr5, k10, iArr5);
        C c15 = new C(k11);
        B.u(c10.f97166g, c15.f97166g);
        if (!i11) {
            int[] iArr6 = c15.f97166g;
            B.i(iArr6, c12.f97166g, iArr6);
        }
        return new D(i10, c13, c14, new jk.f[]{c15});
    }

    @Override
    public jk.i N(jk.i iVar) {
        return this == iVar ? K() : v() ? iVar : iVar.v() ? M() : this.f93914c.j() ? iVar : M().a(iVar);
    }

    @Override
    public jk.i a(jk.i iVar) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (v()) {
            return iVar;
        }
        if (iVar.v()) {
            return this;
        }
        if (this == iVar) {
            return M();
        }
        AbstractC13875e i10 = i();
        C c10 = (C) this.f93913b;
        C c11 = (C) this.f93914c;
        C c12 = (C) iVar.q();
        C c13 = (C) iVar.r();
        C c14 = (C) this.f93915d[0];
        C c15 = (C) iVar.s(0);
        int[] l10 = AbstractC15322h.l();
        int[] k10 = AbstractC15322h.k();
        int[] k11 = AbstractC15322h.k();
        int[] k12 = AbstractC15322h.k();
        boolean i11 = c14.i();
        if (i11) {
            iArr = c12.f97166g;
            iArr2 = c13.f97166g;
        } else {
            B.p(c14.f97166g, k11);
            B.i(k11, c12.f97166g, k10);
            B.i(k11, c14.f97166g, k11);
            B.i(k11, c13.f97166g, k11);
            iArr = k10;
            iArr2 = k11;
        }
        boolean i12 = c15.i();
        if (i12) {
            iArr3 = c10.f97166g;
            iArr4 = c11.f97166g;
        } else {
            B.p(c15.f97166g, k12);
            B.i(k12, c10.f97166g, l10);
            B.i(k12, c15.f97166g, k12);
            B.i(k12, c11.f97166g, k12);
            iArr3 = l10;
            iArr4 = k12;
        }
        int[] k13 = AbstractC15322h.k();
        B.s(iArr3, iArr, k13);
        B.s(iArr4, iArr2, k10);
        if (AbstractC15322h.t(k13)) {
            return AbstractC15322h.t(k10) ? M() : i10.x();
        }
        B.p(k13, k11);
        int[] k14 = AbstractC15322h.k();
        B.i(k11, k13, k14);
        B.i(k11, iArr3, k11);
        B.k(k14, k14);
        AbstractC15322h.v(iArr4, k14, l10);
        B.o(AbstractC15322h.d(k11, k11, k14), k14);
        C c16 = new C(k12);
        B.p(k10, c16.f97166g);
        int[] iArr5 = c16.f97166g;
        B.s(iArr5, k14, iArr5);
        C c17 = new C(k14);
        B.s(k11, c16.f97166g, c17.f97166g);
        B.j(c17.f97166g, k10, l10);
        B.n(l10, c17.f97166g);
        C c18 = new C(k13);
        if (!i11) {
            int[] iArr6 = c18.f97166g;
            B.i(iArr6, c14.f97166g, iArr6);
        }
        if (!i12) {
            int[] iArr7 = c18.f97166g;
            B.i(iArr7, c15.f97166g, iArr7);
        }
        return new D(i10, c16, c17, new jk.f[]{c18});
    }

    @Override
    public jk.i d() {
        return new D(null, f(), g());
    }

    public D(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
