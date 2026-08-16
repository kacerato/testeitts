package mk;

import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import jk.i;

public class C14288g0 extends i.b {
    public C14288g0(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2) {
        super(abstractC13875e, fVar, fVar2);
    }

    @Override
    public jk.i A() {
        if (v()) {
            return this;
        }
        jk.f fVar = this.f93913b;
        if (fVar.j()) {
            return this;
        }
        jk.f fVar2 = this.f93914c;
        jk.f fVar3 = this.f93915d[0];
        return new C14288g0(this.f93912a, fVar, fVar2.a(fVar3), new jk.f[]{fVar3});
    }

    @Override
    public jk.i M() {
        if (v()) {
            return this;
        }
        AbstractC13875e i10 = i();
        jk.f fVar = this.f93913b;
        if (fVar.j()) {
            return i10.x();
        }
        jk.f fVar2 = this.f93914c;
        jk.f fVar3 = this.f93915d[0];
        boolean i11 = fVar3.i();
        jk.f k10 = i11 ? fVar2 : fVar2.k(fVar3);
        jk.f p10 = i11 ? fVar3 : fVar3.p();
        jk.f p11 = i10.p();
        if (!i11) {
            p11 = p11.k(p10);
        }
        jk.f a10 = fVar2.p().a(k10).a(p11);
        if (a10.j()) {
            return new C14288g0(i10, a10, i10.r().o());
        }
        jk.f p12 = a10.p();
        jk.f k11 = i11 ? a10 : a10.k(p10);
        if (!i11) {
            fVar = fVar.k(fVar3);
        }
        return new C14288g0(i10, p12, fVar.r(a10, k10).a(p12).a(k11), new jk.f[]{k11});
    }

    @Override
    public jk.i N(jk.i iVar) {
        if (v()) {
            return iVar;
        }
        if (iVar.v()) {
            return M();
        }
        AbstractC13875e i10 = i();
        jk.f fVar = this.f93913b;
        if (fVar.j()) {
            return iVar;
        }
        jk.f n10 = iVar.n();
        jk.f s10 = iVar.s(0);
        if (n10.j() || !s10.i()) {
            return M().a(iVar);
        }
        jk.f fVar2 = this.f93914c;
        jk.f fVar3 = this.f93915d[0];
        jk.f o10 = iVar.o();
        jk.f p10 = fVar.p();
        jk.f p11 = fVar2.p();
        jk.f p12 = fVar3.p();
        jk.f a10 = i10.p().k(p12).a(p11).a(fVar2.k(fVar3));
        jk.f b10 = o10.b();
        jk.f m10 = i10.p().a(b10).k(p12).a(p11).m(a10, p10, p12);
        jk.f k10 = n10.k(p12);
        jk.f p13 = k10.a(a10).p();
        if (p13.j()) {
            return m10.j() ? iVar.M() : i10.x();
        }
        if (m10.j()) {
            return new C14288g0(i10, m10, i10.r().o());
        }
        jk.f k11 = m10.p().k(k10);
        jk.f k12 = m10.k(p13).k(p12);
        return new C14288g0(i10, k11, m10.a(p13).p().m(a10, b10, k12), new jk.f[]{k12});
    }

    @Override
    public jk.i a(jk.i iVar) {
        jk.f fVar;
        jk.f fVar2;
        jk.f fVar3;
        jk.f fVar4;
        jk.f fVar5;
        jk.f fVar6;
        if (v()) {
            return iVar;
        }
        if (iVar.v()) {
            return this;
        }
        AbstractC13875e i10 = i();
        jk.f fVar7 = this.f93913b;
        jk.f n10 = iVar.n();
        if (fVar7.j()) {
            return n10.j() ? i10.x() : iVar.a(this);
        }
        jk.f fVar8 = this.f93914c;
        jk.f fVar9 = this.f93915d[0];
        jk.f o10 = iVar.o();
        jk.f s10 = iVar.s(0);
        boolean i11 = fVar9.i();
        if (i11) {
            fVar = n10;
            fVar2 = o10;
        } else {
            fVar = n10.k(fVar9);
            fVar2 = o10.k(fVar9);
        }
        boolean i12 = s10.i();
        if (i12) {
            fVar3 = fVar8;
        } else {
            fVar7 = fVar7.k(s10);
            fVar3 = fVar8.k(s10);
        }
        jk.f a10 = fVar3.a(fVar2);
        jk.f a11 = fVar7.a(fVar);
        if (a11.j()) {
            return a10.j() ? M() : i10.x();
        }
        if (n10.j()) {
            jk.i B10 = B();
            jk.f q10 = B10.q();
            jk.f r10 = B10.r();
            jk.f d10 = r10.a(o10).d(q10);
            fVar4 = d10.p().a(d10).a(q10).a(i10.p());
            if (fVar4.j()) {
                return new C14288g0(i10, fVar4, i10.r().o());
            }
            fVar6 = d10.k(q10.a(fVar4)).a(fVar4).a(r10).d(fVar4).a(fVar4);
            fVar5 = i10.o(InterfaceC13874d.f93854b);
        } else {
            jk.f p10 = a11.p();
            jk.f k10 = a10.k(fVar7);
            jk.f k11 = a10.k(fVar);
            jk.f k12 = k10.k(k11);
            if (k12.j()) {
                return new C14288g0(i10, k12, i10.r().o());
            }
            jk.f k13 = a10.k(p10);
            jk.f k14 = !i12 ? k13.k(s10) : k13;
            jk.f r11 = k11.a(p10).r(k14, fVar8.a(fVar9));
            if (!i11) {
                k14 = k14.k(fVar9);
            }
            fVar4 = k12;
            fVar5 = k14;
            fVar6 = r11;
        }
        return new C14288g0(i10, fVar4, fVar6, new jk.f[]{fVar5});
    }

    @Override
    public jk.i d() {
        return new C14288g0(null, f(), g());
    }

    @Override
    public boolean h() {
        jk.f n10 = n();
        return (n10.j() || o().u() == n10.u()) ? false : true;
    }

    @Override
    public jk.f r() {
        jk.f fVar = this.f93913b;
        jk.f fVar2 = this.f93914c;
        if (v() || fVar.j()) {
            return fVar2;
        }
        jk.f k10 = fVar2.a(fVar).k(fVar);
        jk.f fVar3 = this.f93915d[0];
        return !fVar3.i() ? k10.d(fVar3) : k10;
    }

    public C14288g0(AbstractC13875e abstractC13875e, jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        super(abstractC13875e, fVar, fVar2, fVarArr);
    }
}
