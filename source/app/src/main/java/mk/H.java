package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15323i;
import sk.AbstractC15329o;

public class H extends i.c {
    public H(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new H(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        G g10 = (G) this.f93914c;
        if (g10.j()) {
            return i10.x();
        }
        G g11 = (G) this.f93913b;
        G g12 = (G) this.f93915d[0];
        int[] o10 = AbstractC15323i.o();
        int[] m10 = AbstractC15323i.m();
        F.q(g10.f97191g, m10, o10);
        int[] m11 = AbstractC15323i.m();
        F.q(m10, m11, o10);
        int[] m12 = AbstractC15323i.m();
        F.q(g11.f97191g, m12, o10);
        F.o(AbstractC15323i.d(m12, m12, m12), m12);
        F.i(m10, g11.f97191g, m10, o10);
        F.o(AbstractC15329o.H0(8, m10, 2, 0), m10);
        int[] m13 = AbstractC15323i.m();
        F.o(AbstractC15329o.K0(8, m11, 3, 0, m13), m13);
        G g13 = new G(m11);
        F.q(m12, g13.f97191g, o10);
        int[] iArr = g13.f97191g;
        F.t(iArr, m10, iArr);
        int[] iArr2 = g13.f97191g;
        F.t(iArr2, m10, iArr2);
        G g14 = new G(m10);
        F.t(m10, g13.f97191g, g14.f97191g);
        int[] iArr3 = g14.f97191g;
        F.i(iArr3, m12, iArr3, o10);
        int[] iArr4 = g14.f97191g;
        F.t(iArr4, m13, iArr4);
        G g15 = new G(m12);
        F.v(g10.f97191g, g15.f97191g);
        if (!g12.i()) {
            int[] iArr5 = g15.f97191g;
            F.i(iArr5, g12.f97191g, iArr5, o10);
        }
        return new H(i10, g13, g14, new jk.f[]{g15});
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
        G g10 = (G) this.f93913b;
        G g11 = (G) this.f93914c;
        G g12 = (G) iVar.q();
        G g13 = (G) iVar.r();
        G g14 = (G) this.f93915d[0];
        G g15 = (G) iVar.s(0);
        int[] o10 = AbstractC15323i.o();
        int[] o11 = AbstractC15323i.o();
        int[] m10 = AbstractC15323i.m();
        int[] m11 = AbstractC15323i.m();
        int[] m12 = AbstractC15323i.m();
        boolean i11 = g14.i();
        if (i11) {
            iArr = g12.f97191g;
            iArr2 = g13.f97191g;
        } else {
            F.q(g14.f97191g, m11, o10);
            F.i(m11, g12.f97191g, m10, o10);
            F.i(m11, g14.f97191g, m11, o10);
            F.i(m11, g13.f97191g, m11, o10);
            iArr = m10;
            iArr2 = m11;
        }
        boolean i12 = g15.i();
        if (i12) {
            iArr3 = g10.f97191g;
            iArr4 = g11.f97191g;
        } else {
            F.q(g15.f97191g, m12, o10);
            F.i(m12, g10.f97191g, o11, o10);
            F.i(m12, g15.f97191g, m12, o10);
            F.i(m12, g11.f97191g, m12, o10);
            iArr3 = o11;
            iArr4 = m12;
        }
        int[] m13 = AbstractC15323i.m();
        F.t(iArr3, iArr, m13);
        F.t(iArr4, iArr2, m10);
        if (AbstractC15323i.A(m13)) {
            return AbstractC15323i.A(m10) ? M() : i10.x();
        }
        F.q(m13, m11, o10);
        int[] m14 = AbstractC15323i.m();
        F.i(m11, m13, m14, o10);
        F.i(m11, iArr3, m11, o10);
        F.k(m14, m14);
        AbstractC15323i.D(iArr4, m14, o11);
        F.o(AbstractC15323i.d(m11, m11, m14), m14);
        G g16 = new G(m12);
        F.q(m10, g16.f97191g, o10);
        int[] iArr5 = g16.f97191g;
        F.t(iArr5, m14, iArr5);
        G g17 = new G(m14);
        F.t(m11, g16.f97191g, g17.f97191g);
        F.j(g17.f97191g, m10, o11);
        F.n(o11, g17.f97191g);
        G g18 = new G(m13);
        if (!i11) {
            int[] iArr6 = g18.f97191g;
            F.i(iArr6, g14.f97191g, iArr6, o10);
        }
        if (!i12) {
            int[] iArr7 = g18.f97191g;
            F.i(iArr7, g15.f97191g, iArr7, o10);
        }
        return new H(i10, g16, g17, new jk.f[]{g18});
    }

    @Override
    public jk.i d() {
        return new H(null, f(), g());
    }

    public H(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
