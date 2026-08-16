package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15329o;

public class U extends i.c {
    public U(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new U(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        T t10 = (T) this.f93914c;
        if (t10.j()) {
            return i10.x();
        }
        T t11 = (T) this.f93913b;
        T t12 = (T) this.f93915d[0];
        int[] E10 = AbstractC15329o.E(33);
        int[] E11 = AbstractC15329o.E(17);
        int[] E12 = AbstractC15329o.E(17);
        int[] E13 = AbstractC15329o.E(17);
        S.q(t10.f97262g, E13, E10);
        int[] E14 = AbstractC15329o.E(17);
        S.q(E13, E14, E10);
        boolean i11 = t12.i();
        int[] iArr = t12.f97262g;
        if (!i11) {
            S.q(iArr, E12, E10);
            iArr = E12;
        }
        S.t(t11.f97262g, iArr, E11);
        S.a(t11.f97262g, iArr, E12);
        S.j(E12, E11, E12, E10);
        AbstractC15329o.g(17, E12, E12, E12);
        S.o(E12);
        S.j(E13, t11.f97262g, E13, E10);
        AbstractC15329o.H0(17, E13, 2, 0);
        S.o(E13);
        AbstractC15329o.K0(17, E14, 3, 0, E11);
        S.o(E11);
        T t13 = new T(E14);
        S.q(E12, t13.f97262g, E10);
        int[] iArr2 = t13.f97262g;
        S.t(iArr2, E13, iArr2);
        int[] iArr3 = t13.f97262g;
        S.t(iArr3, E13, iArr3);
        T t14 = new T(E13);
        S.t(E13, t13.f97262g, t14.f97262g);
        int[] iArr4 = t14.f97262g;
        S.j(iArr4, E12, iArr4, E10);
        int[] iArr5 = t14.f97262g;
        S.t(iArr5, E11, iArr5);
        T t15 = new T(E12);
        S.u(t10.f97262g, t15.f97262g);
        if (!i11) {
            int[] iArr6 = t15.f97262g;
            S.j(iArr6, t12.f97262g, iArr6, E10);
        }
        return new U(i10, t13, t14, new jk.f[]{t15});
    }

    @Override
    public jk.i N(jk.i iVar) {
        return this == iVar ? K() : v() ? iVar : iVar.v() ? M() : this.f93914c.j() ? iVar : M().a(iVar);
    }

    public jk.f O(jk.f fVar, jk.f fVar2, jk.f fVar3, jk.f fVar4) {
        return fVar.a(fVar2).p().t(fVar3).t(fVar4);
    }

    public jk.f P(jk.f fVar) {
        return Q(S(fVar));
    }

    public jk.f Q(jk.f fVar) {
        return S(S(fVar));
    }

    public jk.f R(jk.f fVar) {
        return S(fVar).a(fVar);
    }

    public jk.f S(jk.f fVar) {
        return fVar.a(fVar);
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
        T t10 = (T) this.f93913b;
        T t11 = (T) this.f93914c;
        T t12 = (T) iVar.q();
        T t13 = (T) iVar.r();
        T t14 = (T) this.f93915d[0];
        T t15 = (T) iVar.s(0);
        int[] E10 = AbstractC15329o.E(33);
        int i11 = 17;
        int[] E11 = AbstractC15329o.E(17);
        int[] E12 = AbstractC15329o.E(17);
        int[] E13 = AbstractC15329o.E(17);
        int[] E14 = AbstractC15329o.E(17);
        boolean i12 = t14.i();
        if (i12) {
            iArr = t12.f97262g;
            iArr2 = t13.f97262g;
        } else {
            S.q(t14.f97262g, E13, E10);
            S.j(E13, t12.f97262g, E12, E10);
            S.j(E13, t14.f97262g, E13, E10);
            S.j(E13, t13.f97262g, E13, E10);
            iArr = E12;
            iArr2 = E13;
        }
        boolean i13 = t15.i();
        if (i13) {
            iArr3 = t10.f97262g;
            iArr4 = t11.f97262g;
        } else {
            S.q(t15.f97262g, E14, E10);
            S.j(E14, t10.f97262g, E11, E10);
            S.j(E14, t15.f97262g, E14, E10);
            S.j(E14, t11.f97262g, E14, E10);
            iArr3 = E11;
            iArr4 = E14;
            i11 = 17;
        }
        int[] E15 = AbstractC15329o.E(i11);
        S.t(iArr3, iArr, E15);
        S.t(iArr4, iArr2, E12);
        if (AbstractC15329o.g0(i11, E15)) {
            return AbstractC15329o.g0(i11, E12) ? M() : i10.x();
        }
        S.q(E15, E13, E10);
        int[] E16 = AbstractC15329o.E(i11);
        S.j(E13, E15, E16, E10);
        S.j(E13, iArr3, E13, E10);
        S.j(iArr4, E16, E11, E10);
        T t16 = new T(E14);
        S.q(E12, t16.f97262g, E10);
        int[] iArr5 = t16.f97262g;
        S.a(iArr5, E16, iArr5);
        int[] iArr6 = t16.f97262g;
        S.t(iArr6, E13, iArr6);
        int[] iArr7 = t16.f97262g;
        S.t(iArr7, E13, iArr7);
        T t17 = new T(E16);
        S.t(E13, t16.f97262g, t17.f97262g);
        S.j(t17.f97262g, E12, E12, E10);
        S.t(E12, E11, t17.f97262g);
        T t18 = new T(E15);
        if (!i12) {
            int[] iArr8 = t18.f97262g;
            S.j(iArr8, t14.f97262g, iArr8, E10);
        }
        if (!i13) {
            int[] iArr9 = t18.f97262g;
            S.j(iArr9, t15.f97262g, iArr9, E10);
        }
        return new U(i10, t16, t17, new jk.f[]{t18});
    }

    @Override
    public jk.i d() {
        return new U(null, f(), g());
    }

    public U(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
