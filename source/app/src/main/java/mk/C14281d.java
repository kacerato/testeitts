package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15319e;
import sk.AbstractC15329o;

public class C14281d extends i.c {
    public C14281d(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new C14281d(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        C14279c c14279c = (C14279c) this.f93914c;
        if (c14279c.j()) {
            return i10.x();
        }
        C14279c c14279c2 = (C14279c) this.f93913b;
        C14279c c14279c3 = (C14279c) this.f93915d[0];
        int[] j10 = AbstractC15319e.j();
        int[] j11 = AbstractC15319e.j();
        int[] j12 = AbstractC15319e.j();
        C14277b.p(c14279c.f97309g, j12);
        int[] j13 = AbstractC15319e.j();
        C14277b.p(j12, j13);
        boolean i11 = c14279c3.i();
        int[] iArr = c14279c3.f97309g;
        if (!i11) {
            C14277b.p(iArr, j11);
            iArr = j11;
        }
        C14277b.s(c14279c2.f97309g, iArr, j10);
        C14277b.a(c14279c2.f97309g, iArr, j11);
        C14277b.i(j11, j10, j11);
        C14277b.o(AbstractC15319e.b(j11, j11, j11), j11);
        C14277b.i(j12, c14279c2.f97309g, j12);
        C14277b.o(AbstractC15329o.H0(4, j12, 2, 0), j12);
        C14277b.o(AbstractC15329o.K0(4, j13, 3, 0, j10), j10);
        C14279c c14279c4 = new C14279c(j13);
        C14277b.p(j11, c14279c4.f97309g);
        int[] iArr2 = c14279c4.f97309g;
        C14277b.s(iArr2, j12, iArr2);
        int[] iArr3 = c14279c4.f97309g;
        C14277b.s(iArr3, j12, iArr3);
        C14279c c14279c5 = new C14279c(j12);
        C14277b.s(j12, c14279c4.f97309g, c14279c5.f97309g);
        int[] iArr4 = c14279c5.f97309g;
        C14277b.i(iArr4, j11, iArr4);
        int[] iArr5 = c14279c5.f97309g;
        C14277b.s(iArr5, j10, iArr5);
        C14279c c14279c6 = new C14279c(j11);
        C14277b.u(c14279c.f97309g, c14279c6.f97309g);
        if (!i11) {
            int[] iArr6 = c14279c6.f97309g;
            C14277b.i(iArr6, c14279c3.f97309g, iArr6);
        }
        return new C14281d(i10, c14279c4, c14279c5, new jk.f[]{c14279c6});
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
        C14279c c14279c = (C14279c) this.f93913b;
        C14279c c14279c2 = (C14279c) this.f93914c;
        C14279c c14279c3 = (C14279c) iVar.q();
        C14279c c14279c4 = (C14279c) iVar.r();
        C14279c c14279c5 = (C14279c) this.f93915d[0];
        C14279c c14279c6 = (C14279c) iVar.s(0);
        int[] l10 = AbstractC15319e.l();
        int[] j10 = AbstractC15319e.j();
        int[] j11 = AbstractC15319e.j();
        int[] j12 = AbstractC15319e.j();
        boolean i11 = c14279c5.i();
        if (i11) {
            iArr = c14279c3.f97309g;
            iArr2 = c14279c4.f97309g;
        } else {
            C14277b.p(c14279c5.f97309g, j11);
            C14277b.i(j11, c14279c3.f97309g, j10);
            C14277b.i(j11, c14279c5.f97309g, j11);
            C14277b.i(j11, c14279c4.f97309g, j11);
            iArr = j10;
            iArr2 = j11;
        }
        boolean i12 = c14279c6.i();
        if (i12) {
            iArr3 = c14279c.f97309g;
            iArr4 = c14279c2.f97309g;
        } else {
            C14277b.p(c14279c6.f97309g, j12);
            C14277b.i(j12, c14279c.f97309g, l10);
            C14277b.i(j12, c14279c6.f97309g, j12);
            C14277b.i(j12, c14279c2.f97309g, j12);
            iArr3 = l10;
            iArr4 = j12;
        }
        int[] j13 = AbstractC15319e.j();
        C14277b.s(iArr3, iArr, j13);
        C14277b.s(iArr4, iArr2, j10);
        if (AbstractC15319e.x(j13)) {
            return AbstractC15319e.x(j10) ? M() : i10.x();
        }
        C14277b.p(j13, j11);
        int[] j14 = AbstractC15319e.j();
        C14277b.i(j11, j13, j14);
        C14277b.i(j11, iArr3, j11);
        C14277b.k(j14, j14);
        AbstractC15319e.A(iArr4, j14, l10);
        C14277b.o(AbstractC15319e.b(j11, j11, j14), j14);
        C14279c c14279c7 = new C14279c(j12);
        C14277b.p(j10, c14279c7.f97309g);
        int[] iArr5 = c14279c7.f97309g;
        C14277b.s(iArr5, j14, iArr5);
        C14279c c14279c8 = new C14279c(j14);
        C14277b.s(j11, c14279c7.f97309g, c14279c8.f97309g);
        C14277b.j(c14279c8.f97309g, j10, l10);
        C14277b.n(l10, c14279c8.f97309g);
        C14279c c14279c9 = new C14279c(j13);
        if (!i11) {
            int[] iArr6 = c14279c9.f97309g;
            C14277b.i(iArr6, c14279c5.f97309g, iArr6);
        }
        if (!i12) {
            int[] iArr7 = c14279c9.f97309g;
            C14277b.i(iArr7, c14279c6.f97309g, iArr7);
        }
        return new C14281d(i10, c14279c7, c14279c8, new jk.f[]{c14279c9});
    }

    @Override
    public jk.i d() {
        return new C14281d(null, f(), g());
    }

    public C14281d(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
