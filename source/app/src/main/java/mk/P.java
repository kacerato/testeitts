package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15325k;
import sk.AbstractC15329o;

public class P extends i.c {
    public P(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new P(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        O o10 = (O) this.f93914c;
        if (o10.j()) {
            return i10.x();
        }
        O o11 = (O) this.f93913b;
        O o12 = (O) this.f93915d[0];
        int[] E10 = AbstractC15329o.E(24);
        int[] E11 = AbstractC15329o.E(12);
        int[] E12 = AbstractC15329o.E(12);
        int[] E13 = AbstractC15329o.E(12);
        N.q(o10.f97242g, E13, E10);
        int[] E14 = AbstractC15329o.E(12);
        N.q(E13, E14, E10);
        boolean i11 = o12.i();
        int[] iArr = o12.f97242g;
        if (!i11) {
            N.q(iArr, E12, E10);
            iArr = E12;
        }
        N.u(o11.f97242g, iArr, E11);
        N.a(o11.f97242g, iArr, E12);
        N.j(E12, E11, E12, E10);
        N.o(AbstractC15329o.g(12, E12, E12, E12), E12);
        N.j(E13, o11.f97242g, E13, E10);
        N.o(AbstractC15329o.H0(12, E13, 2, 0), E13);
        N.o(AbstractC15329o.K0(12, E14, 3, 0, E11), E11);
        O o13 = new O(E14);
        N.q(E12, o13.f97242g, E10);
        int[] iArr2 = o13.f97242g;
        N.u(iArr2, E13, iArr2);
        int[] iArr3 = o13.f97242g;
        N.u(iArr3, E13, iArr3);
        O o14 = new O(E13);
        N.u(E13, o13.f97242g, o14.f97242g);
        int[] iArr4 = o14.f97242g;
        N.j(iArr4, E12, iArr4, E10);
        int[] iArr5 = o14.f97242g;
        N.u(iArr5, E11, iArr5);
        O o15 = new O(E12);
        N.w(o10.f97242g, o15.f97242g);
        if (!i11) {
            int[] iArr6 = o15.f97242g;
            N.j(iArr6, o12.f97242g, iArr6, E10);
        }
        return new P(i10, o13, o14, new jk.f[]{o15});
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
        O o10 = (O) this.f93913b;
        O o11 = (O) this.f93914c;
        O o12 = (O) iVar.q();
        O o13 = (O) iVar.r();
        O o14 = (O) this.f93915d[0];
        O o15 = (O) iVar.s(0);
        int[] E10 = AbstractC15329o.E(24);
        int[] E11 = AbstractC15329o.E(24);
        int[] E12 = AbstractC15329o.E(24);
        int i11 = 12;
        int[] E13 = AbstractC15329o.E(12);
        int[] E14 = AbstractC15329o.E(12);
        boolean i12 = o14.i();
        if (i12) {
            iArr = o12.f97242g;
            iArr2 = o13.f97242g;
        } else {
            N.q(o14.f97242g, E13, E10);
            N.j(E13, o12.f97242g, E12, E10);
            N.j(E13, o14.f97242g, E13, E10);
            N.j(E13, o13.f97242g, E13, E10);
            iArr = E12;
            iArr2 = E13;
        }
        boolean i13 = o15.i();
        if (i13) {
            iArr3 = o10.f97242g;
            iArr4 = o11.f97242g;
        } else {
            N.q(o15.f97242g, E14, E10);
            N.j(E14, o10.f97242g, E11, E10);
            N.j(E14, o15.f97242g, E14, E10);
            N.j(E14, o11.f97242g, E14, E10);
            iArr3 = E11;
            iArr4 = E14;
            i11 = 12;
        }
        int[] E15 = AbstractC15329o.E(i11);
        N.u(iArr3, iArr, E15);
        int[] E16 = AbstractC15329o.E(i11);
        N.u(iArr4, iArr2, E16);
        if (AbstractC15329o.g0(i11, E15)) {
            return AbstractC15329o.g0(i11, E16) ? M() : i10.x();
        }
        N.q(E15, E13, E10);
        int[] E17 = AbstractC15329o.E(i11);
        N.j(E13, E15, E17, E10);
        N.j(E13, iArr3, E13, E10);
        N.k(E17, E17);
        AbstractC15325k.a(iArr4, E17, E11);
        N.o(AbstractC15329o.g(i11, E13, E13, E17), E17);
        O o16 = new O(E14);
        N.q(E16, o16.f97242g, E10);
        int[] iArr5 = o16.f97242g;
        N.u(iArr5, E17, iArr5);
        O o17 = new O(E17);
        N.u(E13, o16.f97242g, o17.f97242g);
        AbstractC15325k.a(o17.f97242g, E16, E12);
        N.b(E11, E12, E11);
        N.n(E11, o17.f97242g);
        O o18 = new O(E15);
        if (!i12) {
            int[] iArr6 = o18.f97242g;
            N.j(iArr6, o14.f97242g, iArr6, E10);
        }
        if (!i13) {
            int[] iArr7 = o18.f97242g;
            N.j(iArr7, o15.f97242g, iArr7, E10);
        }
        return new P(i10, o16, o17, new jk.f[]{o18});
    }

    @Override
    public jk.i d() {
        return new P(null, f(), g());
    }

    public P(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
