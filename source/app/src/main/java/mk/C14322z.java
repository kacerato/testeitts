package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15322h;
import sk.AbstractC15329o;

public class C14322z extends i.c {
    public C14322z(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new C14322z(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        C14321y c14321y = (C14321y) this.f93914c;
        if (c14321y.j()) {
            return i10.x();
        }
        C14321y c14321y2 = (C14321y) this.f93913b;
        C14321y c14321y3 = (C14321y) this.f93915d[0];
        int[] k10 = AbstractC15322h.k();
        C14320x.o(c14321y.f97452g, k10);
        int[] k11 = AbstractC15322h.k();
        C14320x.o(k10, k11);
        int[] k12 = AbstractC15322h.k();
        C14320x.o(c14321y2.f97452g, k12);
        C14320x.n(AbstractC15322h.d(k12, k12, k12), k12);
        C14320x.h(k10, c14321y2.f97452g, k10);
        C14320x.n(AbstractC15329o.H0(7, k10, 2, 0), k10);
        int[] k13 = AbstractC15322h.k();
        C14320x.n(AbstractC15329o.K0(7, k11, 3, 0, k13), k13);
        C14321y c14321y4 = new C14321y(k11);
        C14320x.o(k12, c14321y4.f97452g);
        int[] iArr = c14321y4.f97452g;
        C14320x.q(iArr, k10, iArr);
        int[] iArr2 = c14321y4.f97452g;
        C14320x.q(iArr2, k10, iArr2);
        C14321y c14321y5 = new C14321y(k10);
        C14320x.q(k10, c14321y4.f97452g, c14321y5.f97452g);
        int[] iArr3 = c14321y5.f97452g;
        C14320x.h(iArr3, k12, iArr3);
        int[] iArr4 = c14321y5.f97452g;
        C14320x.q(iArr4, k13, iArr4);
        C14321y c14321y6 = new C14321y(k12);
        C14320x.s(c14321y.f97452g, c14321y6.f97452g);
        if (!c14321y3.i()) {
            int[] iArr5 = c14321y6.f97452g;
            C14320x.h(iArr5, c14321y3.f97452g, iArr5);
        }
        return new C14322z(i10, c14321y4, c14321y5, new jk.f[]{c14321y6});
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
        C14321y c14321y = (C14321y) this.f93913b;
        C14321y c14321y2 = (C14321y) this.f93914c;
        C14321y c14321y3 = (C14321y) iVar.q();
        C14321y c14321y4 = (C14321y) iVar.r();
        C14321y c14321y5 = (C14321y) this.f93915d[0];
        C14321y c14321y6 = (C14321y) iVar.s(0);
        int[] l10 = AbstractC15322h.l();
        int[] k10 = AbstractC15322h.k();
        int[] k11 = AbstractC15322h.k();
        int[] k12 = AbstractC15322h.k();
        boolean i11 = c14321y5.i();
        if (i11) {
            iArr = c14321y3.f97452g;
            iArr2 = c14321y4.f97452g;
        } else {
            C14320x.o(c14321y5.f97452g, k11);
            C14320x.h(k11, c14321y3.f97452g, k10);
            C14320x.h(k11, c14321y5.f97452g, k11);
            C14320x.h(k11, c14321y4.f97452g, k11);
            iArr = k10;
            iArr2 = k11;
        }
        boolean i12 = c14321y6.i();
        if (i12) {
            iArr3 = c14321y.f97452g;
            iArr4 = c14321y2.f97452g;
        } else {
            C14320x.o(c14321y6.f97452g, k12);
            C14320x.h(k12, c14321y.f97452g, l10);
            C14320x.h(k12, c14321y6.f97452g, k12);
            C14320x.h(k12, c14321y2.f97452g, k12);
            iArr3 = l10;
            iArr4 = k12;
        }
        int[] k13 = AbstractC15322h.k();
        C14320x.q(iArr3, iArr, k13);
        C14320x.q(iArr4, iArr2, k10);
        if (AbstractC15322h.t(k13)) {
            return AbstractC15322h.t(k10) ? M() : i10.x();
        }
        C14320x.o(k13, k11);
        int[] k14 = AbstractC15322h.k();
        C14320x.h(k11, k13, k14);
        C14320x.h(k11, iArr3, k11);
        C14320x.j(k14, k14);
        AbstractC15322h.v(iArr4, k14, l10);
        C14320x.n(AbstractC15322h.d(k11, k11, k14), k14);
        C14321y c14321y7 = new C14321y(k12);
        C14320x.o(k10, c14321y7.f97452g);
        int[] iArr5 = c14321y7.f97452g;
        C14320x.q(iArr5, k14, iArr5);
        C14321y c14321y8 = new C14321y(k14);
        C14320x.q(k11, c14321y7.f97452g, c14321y8.f97452g);
        C14320x.i(c14321y8.f97452g, k10, l10);
        C14320x.m(l10, c14321y8.f97452g);
        C14321y c14321y9 = new C14321y(k13);
        if (!i11) {
            int[] iArr6 = c14321y9.f97452g;
            C14320x.h(iArr6, c14321y5.f97452g, iArr6);
        }
        if (!i12) {
            int[] iArr7 = c14321y9.f97452g;
            C14320x.h(iArr7, c14321y6.f97452g, iArr7);
        }
        return new C14322z(i10, c14321y7, c14321y8, new jk.f[]{c14321y9});
    }

    @Override
    public jk.i d() {
        return new C14322z(null, f(), g());
    }

    public C14322z(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
