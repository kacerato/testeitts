package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15320f;
import sk.AbstractC15329o;

public class C14285f extends i.c {
    public C14285f(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new C14285f(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        C14299m c14299m = (C14299m) this.f93914c;
        if (c14299m.j()) {
            return i10.x();
        }
        C14299m c14299m2 = (C14299m) this.f93913b;
        C14299m c14299m3 = (C14299m) this.f93915d[0];
        int[] h10 = AbstractC15320f.h();
        C14297l.o(c14299m.f97376g, h10);
        int[] h11 = AbstractC15320f.h();
        C14297l.o(h10, h11);
        int[] h12 = AbstractC15320f.h();
        C14297l.o(c14299m2.f97376g, h12);
        C14297l.n(AbstractC15320f.b(h12, h12, h12), h12);
        C14297l.h(h10, c14299m2.f97376g, h10);
        C14297l.n(AbstractC15329o.H0(5, h10, 2, 0), h10);
        int[] h13 = AbstractC15320f.h();
        C14297l.n(AbstractC15329o.K0(5, h11, 3, 0, h13), h13);
        C14299m c14299m4 = new C14299m(h11);
        C14297l.o(h12, c14299m4.f97376g);
        int[] iArr = c14299m4.f97376g;
        C14297l.q(iArr, h10, iArr);
        int[] iArr2 = c14299m4.f97376g;
        C14297l.q(iArr2, h10, iArr2);
        C14299m c14299m5 = new C14299m(h10);
        C14297l.q(h10, c14299m4.f97376g, c14299m5.f97376g);
        int[] iArr3 = c14299m5.f97376g;
        C14297l.h(iArr3, h12, iArr3);
        int[] iArr4 = c14299m5.f97376g;
        C14297l.q(iArr4, h13, iArr4);
        C14299m c14299m6 = new C14299m(h12);
        C14297l.s(c14299m.f97376g, c14299m6.f97376g);
        if (!c14299m3.i()) {
            int[] iArr5 = c14299m6.f97376g;
            C14297l.h(iArr5, c14299m3.f97376g, iArr5);
        }
        return new C14285f(i10, c14299m4, c14299m5, new jk.f[]{c14299m6});
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
        C14299m c14299m = (C14299m) this.f93913b;
        C14299m c14299m2 = (C14299m) this.f93914c;
        C14299m c14299m3 = (C14299m) iVar.q();
        C14299m c14299m4 = (C14299m) iVar.r();
        C14299m c14299m5 = (C14299m) this.f93915d[0];
        C14299m c14299m6 = (C14299m) iVar.s(0);
        int[] i11 = AbstractC15320f.i();
        int[] h10 = AbstractC15320f.h();
        int[] h11 = AbstractC15320f.h();
        int[] h12 = AbstractC15320f.h();
        boolean i12 = c14299m5.i();
        if (i12) {
            iArr = c14299m3.f97376g;
            iArr2 = c14299m4.f97376g;
        } else {
            C14297l.o(c14299m5.f97376g, h11);
            C14297l.h(h11, c14299m3.f97376g, h10);
            C14297l.h(h11, c14299m5.f97376g, h11);
            C14297l.h(h11, c14299m4.f97376g, h11);
            iArr = h10;
            iArr2 = h11;
        }
        boolean i13 = c14299m6.i();
        if (i13) {
            iArr3 = c14299m.f97376g;
            iArr4 = c14299m2.f97376g;
        } else {
            C14297l.o(c14299m6.f97376g, h12);
            C14297l.h(h12, c14299m.f97376g, i11);
            C14297l.h(h12, c14299m6.f97376g, h12);
            C14297l.h(h12, c14299m2.f97376g, h12);
            iArr3 = i11;
            iArr4 = h12;
        }
        int[] h13 = AbstractC15320f.h();
        C14297l.q(iArr3, iArr, h13);
        C14297l.q(iArr4, iArr2, h10);
        if (AbstractC15320f.q(h13)) {
            return AbstractC15320f.q(h10) ? M() : i10.x();
        }
        C14297l.o(h13, h11);
        int[] h14 = AbstractC15320f.h();
        C14297l.h(h11, h13, h14);
        C14297l.h(h11, iArr3, h11);
        C14297l.j(h14, h14);
        AbstractC15320f.s(iArr4, h14, i11);
        C14297l.n(AbstractC15320f.b(h11, h11, h14), h14);
        C14299m c14299m7 = new C14299m(h12);
        C14297l.o(h10, c14299m7.f97376g);
        int[] iArr5 = c14299m7.f97376g;
        C14297l.q(iArr5, h14, iArr5);
        C14299m c14299m8 = new C14299m(h14);
        C14297l.q(h11, c14299m7.f97376g, c14299m8.f97376g);
        C14297l.i(c14299m8.f97376g, h10, i11);
        C14297l.m(i11, c14299m8.f97376g);
        C14299m c14299m9 = new C14299m(h13);
        if (!i12) {
            int[] iArr6 = c14299m9.f97376g;
            C14297l.h(iArr6, c14299m5.f97376g, iArr6);
        }
        if (!i13) {
            int[] iArr7 = c14299m9.f97376g;
            C14297l.h(iArr7, c14299m6.f97376g, iArr7);
        }
        return new C14285f(i10, c14299m7, c14299m8, new jk.f[]{c14299m9});
    }

    @Override
    public jk.i d() {
        return new C14285f(null, f(), g());
    }

    public C14285f(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
