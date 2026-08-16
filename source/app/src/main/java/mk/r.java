package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15321g;
import sk.AbstractC15329o;

public class r extends i.c {
    public r(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new r(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        C14307q c14307q = (C14307q) this.f93914c;
        if (c14307q.j()) {
            return i10.x();
        }
        C14307q c14307q2 = (C14307q) this.f93913b;
        C14307q c14307q3 = (C14307q) this.f93915d[0];
        int[] j10 = AbstractC15321g.j();
        C14305p.o(c14307q.f97399g, j10);
        int[] j11 = AbstractC15321g.j();
        C14305p.o(j10, j11);
        int[] j12 = AbstractC15321g.j();
        C14305p.o(c14307q2.f97399g, j12);
        C14305p.n(AbstractC15321g.b(j12, j12, j12), j12);
        C14305p.h(j10, c14307q2.f97399g, j10);
        C14305p.n(AbstractC15329o.H0(6, j10, 2, 0), j10);
        int[] j13 = AbstractC15321g.j();
        C14305p.n(AbstractC15329o.K0(6, j11, 3, 0, j13), j13);
        C14307q c14307q4 = new C14307q(j11);
        C14305p.o(j12, c14307q4.f97399g);
        int[] iArr = c14307q4.f97399g;
        C14305p.q(iArr, j10, iArr);
        int[] iArr2 = c14307q4.f97399g;
        C14305p.q(iArr2, j10, iArr2);
        C14307q c14307q5 = new C14307q(j10);
        C14305p.q(j10, c14307q4.f97399g, c14307q5.f97399g);
        int[] iArr3 = c14307q5.f97399g;
        C14305p.h(iArr3, j12, iArr3);
        int[] iArr4 = c14307q5.f97399g;
        C14305p.q(iArr4, j13, iArr4);
        C14307q c14307q6 = new C14307q(j12);
        C14305p.s(c14307q.f97399g, c14307q6.f97399g);
        if (!c14307q3.i()) {
            int[] iArr5 = c14307q6.f97399g;
            C14305p.h(iArr5, c14307q3.f97399g, iArr5);
        }
        return new r(i10, c14307q4, c14307q5, new jk.f[]{c14307q6});
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
        C14307q c14307q = (C14307q) this.f93913b;
        C14307q c14307q2 = (C14307q) this.f93914c;
        C14307q c14307q3 = (C14307q) iVar.q();
        C14307q c14307q4 = (C14307q) iVar.r();
        C14307q c14307q5 = (C14307q) this.f93915d[0];
        C14307q c14307q6 = (C14307q) iVar.s(0);
        int[] l10 = AbstractC15321g.l();
        int[] j10 = AbstractC15321g.j();
        int[] j11 = AbstractC15321g.j();
        int[] j12 = AbstractC15321g.j();
        boolean i11 = c14307q5.i();
        if (i11) {
            iArr = c14307q3.f97399g;
            iArr2 = c14307q4.f97399g;
        } else {
            C14305p.o(c14307q5.f97399g, j11);
            C14305p.h(j11, c14307q3.f97399g, j10);
            C14305p.h(j11, c14307q5.f97399g, j11);
            C14305p.h(j11, c14307q4.f97399g, j11);
            iArr = j10;
            iArr2 = j11;
        }
        boolean i12 = c14307q6.i();
        if (i12) {
            iArr3 = c14307q.f97399g;
            iArr4 = c14307q2.f97399g;
        } else {
            C14305p.o(c14307q6.f97399g, j12);
            C14305p.h(j12, c14307q.f97399g, l10);
            C14305p.h(j12, c14307q6.f97399g, j12);
            C14305p.h(j12, c14307q2.f97399g, j12);
            iArr3 = l10;
            iArr4 = j12;
        }
        int[] j13 = AbstractC15321g.j();
        C14305p.q(iArr3, iArr, j13);
        C14305p.q(iArr4, iArr2, j10);
        if (AbstractC15321g.x(j13)) {
            return AbstractC15321g.x(j10) ? M() : i10.x();
        }
        C14305p.o(j13, j11);
        int[] j14 = AbstractC15321g.j();
        C14305p.h(j11, j13, j14);
        C14305p.h(j11, iArr3, j11);
        C14305p.j(j14, j14);
        AbstractC15321g.A(iArr4, j14, l10);
        C14305p.n(AbstractC15321g.b(j11, j11, j14), j14);
        C14307q c14307q7 = new C14307q(j12);
        C14305p.o(j10, c14307q7.f97399g);
        int[] iArr5 = c14307q7.f97399g;
        C14305p.q(iArr5, j14, iArr5);
        C14307q c14307q8 = new C14307q(j14);
        C14305p.q(j11, c14307q7.f97399g, c14307q8.f97399g);
        C14305p.i(c14307q8.f97399g, j10, l10);
        C14305p.m(l10, c14307q8.f97399g);
        C14307q c14307q9 = new C14307q(j13);
        if (!i11) {
            int[] iArr6 = c14307q9.f97399g;
            C14305p.h(iArr6, c14307q5.f97399g, iArr6);
        }
        if (!i12) {
            int[] iArr7 = c14307q9.f97399g;
            C14305p.h(iArr7, c14307q6.f97399g, iArr7);
        }
        return new r(i10, c14307q7, c14307q8, new jk.f[]{c14307q9});
    }

    @Override
    public jk.i d() {
        return new r(null, f(), g());
    }

    public r(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
