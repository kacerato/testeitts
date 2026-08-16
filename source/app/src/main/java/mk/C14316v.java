package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15321g;
import sk.AbstractC15329o;

public class C14316v extends i.c {
    public C14316v(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new C14316v(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        C14314u c14314u = (C14314u) this.f93914c;
        if (c14314u.j()) {
            return i10.x();
        }
        C14314u c14314u2 = (C14314u) this.f93913b;
        C14314u c14314u3 = (C14314u) this.f93915d[0];
        int[] j10 = AbstractC15321g.j();
        int[] j11 = AbstractC15321g.j();
        int[] j12 = AbstractC15321g.j();
        C14312t.p(c14314u.f97427g, j12);
        int[] j13 = AbstractC15321g.j();
        C14312t.p(j12, j13);
        boolean i11 = c14314u3.i();
        int[] iArr = c14314u3.f97427g;
        if (!i11) {
            C14312t.p(iArr, j11);
            iArr = j11;
        }
        C14312t.s(c14314u2.f97427g, iArr, j10);
        C14312t.a(c14314u2.f97427g, iArr, j11);
        C14312t.i(j11, j10, j11);
        C14312t.o(AbstractC15321g.b(j11, j11, j11), j11);
        C14312t.i(j12, c14314u2.f97427g, j12);
        C14312t.o(AbstractC15329o.H0(6, j12, 2, 0), j12);
        C14312t.o(AbstractC15329o.K0(6, j13, 3, 0, j10), j10);
        C14314u c14314u4 = new C14314u(j13);
        C14312t.p(j11, c14314u4.f97427g);
        int[] iArr2 = c14314u4.f97427g;
        C14312t.s(iArr2, j12, iArr2);
        int[] iArr3 = c14314u4.f97427g;
        C14312t.s(iArr3, j12, iArr3);
        C14314u c14314u5 = new C14314u(j12);
        C14312t.s(j12, c14314u4.f97427g, c14314u5.f97427g);
        int[] iArr4 = c14314u5.f97427g;
        C14312t.i(iArr4, j11, iArr4);
        int[] iArr5 = c14314u5.f97427g;
        C14312t.s(iArr5, j10, iArr5);
        C14314u c14314u6 = new C14314u(j11);
        C14312t.u(c14314u.f97427g, c14314u6.f97427g);
        if (!i11) {
            int[] iArr6 = c14314u6.f97427g;
            C14312t.i(iArr6, c14314u3.f97427g, iArr6);
        }
        return new C14316v(i10, c14314u4, c14314u5, new jk.f[]{c14314u6});
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
        C14314u c14314u = (C14314u) this.f93913b;
        C14314u c14314u2 = (C14314u) this.f93914c;
        C14314u c14314u3 = (C14314u) iVar.q();
        C14314u c14314u4 = (C14314u) iVar.r();
        C14314u c14314u5 = (C14314u) this.f93915d[0];
        C14314u c14314u6 = (C14314u) iVar.s(0);
        int[] l10 = AbstractC15321g.l();
        int[] j10 = AbstractC15321g.j();
        int[] j11 = AbstractC15321g.j();
        int[] j12 = AbstractC15321g.j();
        boolean i11 = c14314u5.i();
        if (i11) {
            iArr = c14314u3.f97427g;
            iArr2 = c14314u4.f97427g;
        } else {
            C14312t.p(c14314u5.f97427g, j11);
            C14312t.i(j11, c14314u3.f97427g, j10);
            C14312t.i(j11, c14314u5.f97427g, j11);
            C14312t.i(j11, c14314u4.f97427g, j11);
            iArr = j10;
            iArr2 = j11;
        }
        boolean i12 = c14314u6.i();
        if (i12) {
            iArr3 = c14314u.f97427g;
            iArr4 = c14314u2.f97427g;
        } else {
            C14312t.p(c14314u6.f97427g, j12);
            C14312t.i(j12, c14314u.f97427g, l10);
            C14312t.i(j12, c14314u6.f97427g, j12);
            C14312t.i(j12, c14314u2.f97427g, j12);
            iArr3 = l10;
            iArr4 = j12;
        }
        int[] j13 = AbstractC15321g.j();
        C14312t.s(iArr3, iArr, j13);
        C14312t.s(iArr4, iArr2, j10);
        if (AbstractC15321g.x(j13)) {
            return AbstractC15321g.x(j10) ? M() : i10.x();
        }
        C14312t.p(j13, j11);
        int[] j14 = AbstractC15321g.j();
        C14312t.i(j11, j13, j14);
        C14312t.i(j11, iArr3, j11);
        C14312t.k(j14, j14);
        AbstractC15321g.A(iArr4, j14, l10);
        C14312t.o(AbstractC15321g.b(j11, j11, j14), j14);
        C14314u c14314u7 = new C14314u(j12);
        C14312t.p(j10, c14314u7.f97427g);
        int[] iArr5 = c14314u7.f97427g;
        C14312t.s(iArr5, j14, iArr5);
        C14314u c14314u8 = new C14314u(j14);
        C14312t.s(j11, c14314u7.f97427g, c14314u8.f97427g);
        C14312t.j(c14314u8.f97427g, j10, l10);
        C14312t.n(l10, c14314u8.f97427g);
        C14314u c14314u9 = new C14314u(j13);
        if (!i11) {
            int[] iArr6 = c14314u9.f97427g;
            C14312t.i(iArr6, c14314u5.f97427g, iArr6);
        }
        if (!i12) {
            int[] iArr7 = c14314u9.f97427g;
            C14312t.i(iArr7, c14314u6.f97427g, iArr7);
        }
        return new C14316v(i10, c14314u7, c14314u8, new jk.f[]{c14314u9});
    }

    @Override
    public jk.i d() {
        return new C14316v(null, f(), g());
    }

    public C14316v(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
