package kk;

import jk.AbstractC13875e;
import jk.f;
import jk.i;
import sk.AbstractC15323i;

public class d extends i.c {
    public d(AbstractC13875e abstractC13875e, f fVar, f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public i A() {
        return v() ? this : new d(i(), this.f93913b, this.f93914c.n(), this.f93915d);
    }

    @Override
    public i K() {
        return (v() || this.f93914c.j()) ? this : Q(false).a(this);
    }

    @Override
    public i M() {
        if (v()) {
            return this;
        }
        return this.f93914c.j() ? i().x() : Q(true);
    }

    @Override
    public i N(i iVar) {
        return this == iVar ? K() : v() ? iVar : iVar.v() ? M() : this.f93914c.j() ? iVar : Q(false).a(iVar);
    }

    public c O(c cVar, int[] iArr) {
        c cVar2 = (c) i().p();
        if (cVar.i()) {
            return cVar2;
        }
        c cVar3 = new c();
        if (iArr == null) {
            iArr = cVar3.f95380g;
            b.q(cVar.f95380g, iArr);
        }
        b.q(iArr, cVar3.f95380g);
        int[] iArr2 = cVar3.f95380g;
        b.j(iArr2, cVar2.f95380g, iArr2);
        return cVar3;
    }

    public c P() {
        f[] fVarArr = this.f93915d;
        c cVar = (c) fVarArr[1];
        if (cVar != null) {
            return cVar;
        }
        c O10 = O((c) fVarArr[0], null);
        fVarArr[1] = O10;
        return O10;
    }

    public d Q(boolean z10) {
        c cVar;
        c cVar2 = (c) this.f93913b;
        c cVar3 = (c) this.f93914c;
        c cVar4 = (c) this.f93915d[0];
        c P10 = P();
        int[] m10 = AbstractC15323i.m();
        b.q(cVar2.f95380g, m10);
        b.p(AbstractC15323i.d(m10, m10, m10) + AbstractC15323i.f(P10.f95380g, m10), m10);
        int[] m11 = AbstractC15323i.m();
        b.w(cVar3.f95380g, m11);
        int[] m12 = AbstractC15323i.m();
        b.j(m11, cVar3.f95380g, m12);
        int[] m13 = AbstractC15323i.m();
        b.j(m12, cVar2.f95380g, m13);
        b.w(m13, m13);
        int[] m14 = AbstractC15323i.m();
        b.q(m12, m14);
        b.w(m14, m14);
        c cVar5 = new c(m12);
        b.q(m10, cVar5.f95380g);
        int[] iArr = cVar5.f95380g;
        b.u(iArr, m13, iArr);
        int[] iArr2 = cVar5.f95380g;
        b.u(iArr2, m13, iArr2);
        c cVar6 = new c(m13);
        b.u(m13, cVar5.f95380g, cVar6.f95380g);
        int[] iArr3 = cVar6.f95380g;
        b.j(iArr3, m10, iArr3);
        int[] iArr4 = cVar6.f95380g;
        b.u(iArr4, m14, iArr4);
        c cVar7 = new c(m11);
        if (!AbstractC15323i.y(cVar4.f95380g)) {
            int[] iArr5 = cVar7.f95380g;
            b.j(iArr5, cVar4.f95380g, iArr5);
        }
        if (z10) {
            cVar = new c(m14);
            int[] iArr6 = cVar.f95380g;
            b.j(iArr6, P10.f95380g, iArr6);
            int[] iArr7 = cVar.f95380g;
            b.w(iArr7, iArr7);
        } else {
            cVar = null;
        }
        return new d(i(), cVar5, cVar6, new f[]{cVar7, cVar});
    }

    @Override
    public i a(i iVar) {
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
        c cVar = (c) this.f93913b;
        c cVar2 = (c) this.f93914c;
        c cVar3 = (c) this.f93915d[0];
        c cVar4 = (c) iVar.q();
        c cVar5 = (c) iVar.r();
        c cVar6 = (c) iVar.s(0);
        int[] o10 = AbstractC15323i.o();
        int[] m10 = AbstractC15323i.m();
        int[] m11 = AbstractC15323i.m();
        int[] m12 = AbstractC15323i.m();
        boolean i11 = cVar3.i();
        if (i11) {
            iArr = cVar4.f95380g;
            iArr2 = cVar5.f95380g;
        } else {
            b.q(cVar3.f95380g, m11);
            b.j(m11, cVar4.f95380g, m10);
            b.j(m11, cVar3.f95380g, m11);
            b.j(m11, cVar5.f95380g, m11);
            iArr = m10;
            iArr2 = m11;
        }
        boolean i12 = cVar6.i();
        if (i12) {
            iArr3 = cVar.f95380g;
            iArr4 = cVar2.f95380g;
        } else {
            b.q(cVar6.f95380g, m12);
            b.j(m12, cVar.f95380g, o10);
            b.j(m12, cVar6.f95380g, m12);
            b.j(m12, cVar2.f95380g, m12);
            iArr3 = o10;
            iArr4 = m12;
        }
        int[] m13 = AbstractC15323i.m();
        b.u(iArr3, iArr, m13);
        b.u(iArr4, iArr2, m10);
        if (AbstractC15323i.A(m13)) {
            return AbstractC15323i.A(m10) ? M() : i10.x();
        }
        int[] m14 = AbstractC15323i.m();
        b.q(m13, m14);
        int[] m15 = AbstractC15323i.m();
        b.j(m14, m13, m15);
        b.j(m14, iArr3, m11);
        b.l(m15, m15);
        AbstractC15323i.D(iArr4, m15, o10);
        b.p(AbstractC15323i.d(m11, m11, m15), m15);
        c cVar7 = new c(m12);
        b.q(m10, cVar7.f95380g);
        int[] iArr5 = cVar7.f95380g;
        b.u(iArr5, m15, iArr5);
        c cVar8 = new c(m15);
        b.u(m11, cVar7.f95380g, cVar8.f95380g);
        b.k(cVar8.f95380g, m10, o10);
        b.o(o10, cVar8.f95380g);
        c cVar9 = new c(m13);
        if (!i11) {
            int[] iArr6 = cVar9.f95380g;
            b.j(iArr6, cVar3.f95380g, iArr6);
        }
        if (!i12) {
            int[] iArr7 = cVar9.f95380g;
            b.j(iArr7, cVar6.f95380g, iArr7);
        }
        if (!i11 || !i12) {
            m14 = null;
        }
        return new d(i10, cVar7, cVar8, new f[]{cVar9, O(cVar9, m14)});
    }

    @Override
    public i d() {
        return new d(null, f(), g());
    }

    @Override
    public f s(int i10) {
        return i10 == 1 ? P() : super.s(i10);
    }

    public d(AbstractC13875e abstractC13875e, f fVar, f fVar2, f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
