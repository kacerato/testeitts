package lk;

import jk.AbstractC13875e;
import jk.f;
import jk.i;
import sk.AbstractC15323i;
import sk.AbstractC15329o;

public class d extends i.c {
    public d(AbstractC13875e abstractC13875e, f fVar, f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public i A() {
        return v() ? this : new d(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
    }

    @Override
    public i K() {
        return (v() || this.f93914c.j()) ? this : M().a(this);
    }

    @Override
    public i M() {
        if (v()) {
            return this;
        }
        AbstractC13875e i10 = i();
        c cVar = (c) this.f93914c;
        if (cVar.j()) {
            return i10.x();
        }
        c cVar2 = (c) this.f93913b;
        c cVar3 = (c) this.f93915d[0];
        int[] m10 = AbstractC15323i.m();
        int[] m11 = AbstractC15323i.m();
        int[] m12 = AbstractC15323i.m();
        b.p(cVar.f96531g, m12);
        int[] m13 = AbstractC15323i.m();
        b.p(m12, m13);
        boolean i11 = cVar3.i();
        int[] iArr = cVar3.f96531g;
        if (!i11) {
            b.p(iArr, m11);
            iArr = m11;
        }
        b.s(cVar2.f96531g, iArr, m10);
        b.a(cVar2.f96531g, iArr, m11);
        b.i(m11, m10, m11);
        b.o(AbstractC15323i.d(m11, m11, m11), m11);
        b.i(m12, cVar2.f96531g, m12);
        b.o(AbstractC15329o.H0(8, m12, 2, 0), m12);
        b.o(AbstractC15329o.K0(8, m13, 3, 0, m10), m10);
        c cVar4 = new c(m13);
        b.p(m11, cVar4.f96531g);
        int[] iArr2 = cVar4.f96531g;
        b.s(iArr2, m12, iArr2);
        int[] iArr3 = cVar4.f96531g;
        b.s(iArr3, m12, iArr3);
        c cVar5 = new c(m12);
        b.s(m12, cVar4.f96531g, cVar5.f96531g);
        int[] iArr4 = cVar5.f96531g;
        b.i(iArr4, m11, iArr4);
        int[] iArr5 = cVar5.f96531g;
        b.s(iArr5, m10, iArr5);
        c cVar6 = new c(m11);
        b.u(cVar.f96531g, cVar6.f96531g);
        if (!i11) {
            int[] iArr6 = cVar6.f96531g;
            b.i(iArr6, cVar3.f96531g, iArr6);
        }
        return new d(i10, cVar4, cVar5, new f[]{cVar6});
    }

    @Override
    public i N(i iVar) {
        return this == iVar ? K() : v() ? iVar : iVar.v() ? M() : this.f93914c.j() ? iVar : M().a(iVar);
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
        c cVar3 = (c) iVar.q();
        c cVar4 = (c) iVar.r();
        c cVar5 = (c) this.f93915d[0];
        c cVar6 = (c) iVar.s(0);
        int[] o10 = AbstractC15323i.o();
        int[] m10 = AbstractC15323i.m();
        int[] m11 = AbstractC15323i.m();
        int[] m12 = AbstractC15323i.m();
        boolean i11 = cVar5.i();
        if (i11) {
            iArr = cVar3.f96531g;
            iArr2 = cVar4.f96531g;
        } else {
            b.p(cVar5.f96531g, m11);
            b.i(m11, cVar3.f96531g, m10);
            b.i(m11, cVar5.f96531g, m11);
            b.i(m11, cVar4.f96531g, m11);
            iArr = m10;
            iArr2 = m11;
        }
        boolean i12 = cVar6.i();
        if (i12) {
            iArr3 = cVar.f96531g;
            iArr4 = cVar2.f96531g;
        } else {
            b.p(cVar6.f96531g, m12);
            b.i(m12, cVar.f96531g, o10);
            b.i(m12, cVar6.f96531g, m12);
            b.i(m12, cVar2.f96531g, m12);
            iArr3 = o10;
            iArr4 = m12;
        }
        int[] m13 = AbstractC15323i.m();
        b.s(iArr3, iArr, m13);
        b.s(iArr4, iArr2, m10);
        if (AbstractC15323i.A(m13)) {
            return AbstractC15323i.A(m10) ? M() : i10.x();
        }
        b.p(m13, m11);
        int[] m14 = AbstractC15323i.m();
        b.i(m11, m13, m14);
        b.i(m11, iArr3, m11);
        b.k(m14, m14);
        AbstractC15323i.D(iArr4, m14, o10);
        b.o(AbstractC15323i.d(m11, m11, m14), m14);
        c cVar7 = new c(m12);
        b.p(m10, cVar7.f96531g);
        int[] iArr5 = cVar7.f96531g;
        b.s(iArr5, m14, iArr5);
        c cVar8 = new c(m14);
        b.s(m11, cVar7.f96531g, cVar8.f96531g);
        b.j(cVar8.f96531g, m10, o10);
        b.n(o10, cVar8.f96531g);
        c cVar9 = new c(m13);
        if (!i11) {
            int[] iArr6 = cVar9.f96531g;
            b.i(iArr6, cVar5.f96531g, iArr6);
        }
        if (!i12) {
            int[] iArr7 = cVar9.f96531g;
            b.i(iArr7, cVar6.f96531g, iArr7);
        }
        return new d(i10, cVar7, cVar8, new f[]{cVar9});
    }

    @Override
    public i d() {
        return new d(null, f(), g());
    }

    public d(AbstractC13875e abstractC13875e, f fVar, f fVar2, f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
