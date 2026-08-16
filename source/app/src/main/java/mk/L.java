package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15323i;
import sk.AbstractC15329o;

public class L extends i.c {
    public L(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new L(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        K k10 = (K) this.f93914c;
        if (k10.j()) {
            return i10.x();
        }
        K k11 = (K) this.f93913b;
        K k12 = (K) this.f93915d[0];
        int[] o10 = AbstractC15323i.o();
        int[] m10 = AbstractC15323i.m();
        int[] m11 = AbstractC15323i.m();
        int[] m12 = AbstractC15323i.m();
        J.r(k10.f97218g, m12, o10);
        int[] m13 = AbstractC15323i.m();
        J.r(m12, m13, o10);
        boolean i11 = k12.i();
        int[] iArr = k12.f97218g;
        if (!i11) {
            J.r(iArr, m11, o10);
            iArr = m11;
        }
        J.v(k11.f97218g, iArr, m10);
        J.a(k11.f97218g, iArr, m11);
        J.j(m11, m10, m11, o10);
        J.p(AbstractC15323i.d(m11, m11, m11), m11);
        J.j(m12, k11.f97218g, m12, o10);
        J.p(AbstractC15329o.H0(8, m12, 2, 0), m12);
        J.p(AbstractC15329o.K0(8, m13, 3, 0, m10), m10);
        K k13 = new K(m13);
        J.r(m11, k13.f97218g, o10);
        int[] iArr2 = k13.f97218g;
        J.v(iArr2, m12, iArr2);
        int[] iArr3 = k13.f97218g;
        J.v(iArr3, m12, iArr3);
        K k14 = new K(m12);
        J.v(m12, k13.f97218g, k14.f97218g);
        int[] iArr4 = k14.f97218g;
        J.j(iArr4, m11, iArr4, o10);
        int[] iArr5 = k14.f97218g;
        J.v(iArr5, m10, iArr5);
        K k15 = new K(m11);
        J.x(k10.f97218g, k15.f97218g);
        if (!i11) {
            int[] iArr6 = k15.f97218g;
            J.j(iArr6, k12.f97218g, iArr6, o10);
        }
        return new L(i10, k13, k14, new jk.f[]{k15});
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
        K k10 = (K) this.f93913b;
        K k11 = (K) this.f93914c;
        K k12 = (K) iVar.q();
        K k13 = (K) iVar.r();
        K k14 = (K) this.f93915d[0];
        K k15 = (K) iVar.s(0);
        int[] o10 = AbstractC15323i.o();
        int[] o11 = AbstractC15323i.o();
        int[] m10 = AbstractC15323i.m();
        int[] m11 = AbstractC15323i.m();
        int[] m12 = AbstractC15323i.m();
        boolean i11 = k14.i();
        if (i11) {
            iArr = k12.f97218g;
            iArr2 = k13.f97218g;
        } else {
            J.r(k14.f97218g, m11, o10);
            J.j(m11, k12.f97218g, m10, o10);
            J.j(m11, k14.f97218g, m11, o10);
            J.j(m11, k13.f97218g, m11, o10);
            iArr = m10;
            iArr2 = m11;
        }
        boolean i12 = k15.i();
        if (i12) {
            iArr3 = k10.f97218g;
            iArr4 = k11.f97218g;
        } else {
            J.r(k15.f97218g, m12, o10);
            J.j(m12, k10.f97218g, o11, o10);
            J.j(m12, k15.f97218g, m12, o10);
            J.j(m12, k11.f97218g, m12, o10);
            iArr3 = o11;
            iArr4 = m12;
        }
        int[] m13 = AbstractC15323i.m();
        J.v(iArr3, iArr, m13);
        J.v(iArr4, iArr2, m10);
        if (AbstractC15323i.A(m13)) {
            return AbstractC15323i.A(m10) ? M() : i10.x();
        }
        J.r(m13, m11, o10);
        int[] m14 = AbstractC15323i.m();
        J.j(m11, m13, m14, o10);
        J.j(m11, iArr3, m11, o10);
        J.l(m14, m14);
        AbstractC15323i.D(iArr4, m14, o11);
        J.p(AbstractC15323i.d(m11, m11, m14), m14);
        K k16 = new K(m12);
        J.r(m10, k16.f97218g, o10);
        int[] iArr5 = k16.f97218g;
        J.v(iArr5, m14, iArr5);
        K k17 = new K(m14);
        J.v(m11, k16.f97218g, k17.f97218g);
        J.k(k17.f97218g, m10, o11);
        J.o(o11, k17.f97218g);
        K k18 = new K(m13);
        if (!i11) {
            int[] iArr6 = k18.f97218g;
            J.j(iArr6, k14.f97218g, iArr6, o10);
        }
        if (!i12) {
            int[] iArr7 = k18.f97218g;
            J.j(iArr7, k15.f97218g, iArr7, o10);
        }
        return new L(i10, k16, k17, new jk.f[]{k18});
    }

    @Override
    public jk.i d() {
        return new L(null, f(), g());
    }

    public L(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
