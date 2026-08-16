package mk;

import jk.AbstractC13875e;
import jk.i;
import sk.AbstractC15320f;
import sk.AbstractC15329o;

public class C14293j extends i.c {
    public C14293j(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        return v() ? this : new C14293j(this.f93912a, this.f93913b, this.f93914c.n(), this.f93915d);
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
        C14291i c14291i = (C14291i) this.f93914c;
        if (c14291i.j()) {
            return i10.x();
        }
        C14291i c14291i2 = (C14291i) this.f93913b;
        C14291i c14291i3 = (C14291i) this.f93915d[0];
        int[] h10 = AbstractC15320f.h();
        int[] h11 = AbstractC15320f.h();
        int[] h12 = AbstractC15320f.h();
        C14289h.o(c14291i.f97348g, h12);
        int[] h13 = AbstractC15320f.h();
        C14289h.o(h12, h13);
        boolean i11 = c14291i3.i();
        int[] iArr = c14291i3.f97348g;
        if (!i11) {
            C14289h.o(iArr, h11);
            iArr = h11;
        }
        C14289h.q(c14291i2.f97348g, iArr, h10);
        C14289h.a(c14291i2.f97348g, iArr, h11);
        C14289h.h(h11, h10, h11);
        C14289h.n(AbstractC15320f.b(h11, h11, h11), h11);
        C14289h.h(h12, c14291i2.f97348g, h12);
        C14289h.n(AbstractC15329o.H0(5, h12, 2, 0), h12);
        C14289h.n(AbstractC15329o.K0(5, h13, 3, 0, h10), h10);
        C14291i c14291i4 = new C14291i(h13);
        C14289h.o(h11, c14291i4.f97348g);
        int[] iArr2 = c14291i4.f97348g;
        C14289h.q(iArr2, h12, iArr2);
        int[] iArr3 = c14291i4.f97348g;
        C14289h.q(iArr3, h12, iArr3);
        C14291i c14291i5 = new C14291i(h12);
        C14289h.q(h12, c14291i4.f97348g, c14291i5.f97348g);
        int[] iArr4 = c14291i5.f97348g;
        C14289h.h(iArr4, h11, iArr4);
        int[] iArr5 = c14291i5.f97348g;
        C14289h.q(iArr5, h10, iArr5);
        C14291i c14291i6 = new C14291i(h11);
        C14289h.s(c14291i.f97348g, c14291i6.f97348g);
        if (!i11) {
            int[] iArr6 = c14291i6.f97348g;
            C14289h.h(iArr6, c14291i3.f97348g, iArr6);
        }
        return new C14293j(i10, c14291i4, c14291i5, new jk.f[]{c14291i6});
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
        C14291i c14291i = (C14291i) this.f93913b;
        C14291i c14291i2 = (C14291i) this.f93914c;
        C14291i c14291i3 = (C14291i) iVar.q();
        C14291i c14291i4 = (C14291i) iVar.r();
        C14291i c14291i5 = (C14291i) this.f93915d[0];
        C14291i c14291i6 = (C14291i) iVar.s(0);
        int[] i11 = AbstractC15320f.i();
        int[] h10 = AbstractC15320f.h();
        int[] h11 = AbstractC15320f.h();
        int[] h12 = AbstractC15320f.h();
        boolean i12 = c14291i5.i();
        if (i12) {
            iArr = c14291i3.f97348g;
            iArr2 = c14291i4.f97348g;
        } else {
            C14289h.o(c14291i5.f97348g, h11);
            C14289h.h(h11, c14291i3.f97348g, h10);
            C14289h.h(h11, c14291i5.f97348g, h11);
            C14289h.h(h11, c14291i4.f97348g, h11);
            iArr = h10;
            iArr2 = h11;
        }
        boolean i13 = c14291i6.i();
        if (i13) {
            iArr3 = c14291i.f97348g;
            iArr4 = c14291i2.f97348g;
        } else {
            C14289h.o(c14291i6.f97348g, h12);
            C14289h.h(h12, c14291i.f97348g, i11);
            C14289h.h(h12, c14291i6.f97348g, h12);
            C14289h.h(h12, c14291i2.f97348g, h12);
            iArr3 = i11;
            iArr4 = h12;
        }
        int[] h13 = AbstractC15320f.h();
        C14289h.q(iArr3, iArr, h13);
        C14289h.q(iArr4, iArr2, h10);
        if (AbstractC15320f.q(h13)) {
            return AbstractC15320f.q(h10) ? M() : i10.x();
        }
        C14289h.o(h13, h11);
        int[] h14 = AbstractC15320f.h();
        C14289h.h(h11, h13, h14);
        C14289h.h(h11, iArr3, h11);
        C14289h.j(h14, h14);
        AbstractC15320f.s(iArr4, h14, i11);
        C14289h.n(AbstractC15320f.b(h11, h11, h14), h14);
        C14291i c14291i7 = new C14291i(h12);
        C14289h.o(h10, c14291i7.f97348g);
        int[] iArr5 = c14291i7.f97348g;
        C14289h.q(iArr5, h14, iArr5);
        C14291i c14291i8 = new C14291i(h14);
        C14289h.q(h11, c14291i7.f97348g, c14291i8.f97348g);
        C14289h.i(c14291i8.f97348g, h10, i11);
        C14289h.m(i11, c14291i8.f97348g);
        C14291i c14291i9 = new C14291i(h13);
        if (!i12) {
            int[] iArr6 = c14291i9.f97348g;
            C14289h.h(iArr6, c14291i5.f97348g, iArr6);
        }
        if (!i13) {
            int[] iArr7 = c14291i9.f97348g;
            C14289h.h(iArr7, c14291i6.f97348g, iArr7);
        }
        return new C14293j(i10, c14291i7, c14291i8, new jk.f[]{c14291i9});
    }

    @Override
    public jk.i d() {
        return new C14293j(null, f(), g());
    }

    public C14293j(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
