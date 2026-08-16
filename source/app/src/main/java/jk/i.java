package jk;

import java.math.BigInteger;
import java.util.Hashtable;
import jk.AbstractC13875e;
import jk.f;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public abstract class i {

    public static final f[] f93911f = new f[0];

    public AbstractC13875e f93912a;

    public f f93913b;

    public f f93914c;

    public f[] f93915d;

    public Hashtable f93916e;

    public class a implements p {

        public final boolean f93917a;

        public final boolean f93918b;

        public a(boolean z10, boolean z11) {
            this.f93917a = z10;
            this.f93918b = z11;
        }

        @Override
        public q a(q qVar) {
            y yVar = qVar instanceof y ? (y) qVar : null;
            if (yVar == null) {
                yVar = new y();
            }
            if (yVar.b()) {
                return yVar;
            }
            if (!yVar.a()) {
                if (!this.f93917a && !i.this.D()) {
                    yVar.e();
                    return yVar;
                }
                yVar.d();
            }
            if (this.f93918b && !yVar.c()) {
                if (!i.this.E()) {
                    yVar.e();
                    return yVar;
                }
                yVar.f();
            }
            return yVar;
        }
    }

    public static abstract class b extends i {
        public b(AbstractC13875e abstractC13875e, f fVar, f fVar2) {
            super(abstractC13875e, fVar, fVar2);
        }

        @Override
        public boolean D() {
            f m10;
            f r10;
            AbstractC13875e i10 = i();
            f fVar = this.f93913b;
            f p10 = i10.p();
            f r11 = i10.r();
            int t10 = i10.t();
            if (t10 != 6) {
                f fVar2 = this.f93914c;
                f k10 = fVar2.a(fVar).k(fVar2);
                if (t10 != 0) {
                    if (t10 != 1) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    f fVar3 = this.f93915d[0];
                    if (!fVar3.i()) {
                        f k11 = fVar3.k(fVar3.p());
                        k10 = k10.k(fVar3);
                        p10 = p10.k(fVar3);
                        r11 = r11.k(k11);
                    }
                }
                return k10.equals(fVar.a(p10).k(fVar.p()).a(r11));
            }
            f fVar4 = this.f93915d[0];
            boolean i11 = fVar4.i();
            if (fVar.j()) {
                f p11 = this.f93914c.p();
                if (!i11) {
                    r11 = r11.k(fVar4.p());
                }
                return p11.equals(r11);
            }
            f fVar5 = this.f93914c;
            f p12 = fVar.p();
            if (i11) {
                m10 = fVar5.p().a(fVar5).a(p10);
                r10 = p12.p().a(r11);
            } else {
                f p13 = fVar4.p();
                f p14 = p13.p();
                m10 = fVar5.a(fVar4).m(fVar5, p10, p13);
                r10 = p12.r(r11, p14);
            }
            return m10.k(p12).equals(r10);
        }

        @Override
        public boolean E() {
            BigInteger s10 = this.f93912a.s();
            if (InterfaceC13874d.f93855c.equals(s10)) {
                return ((f.a) B().f()).y() != 0;
            }
            if (!InterfaceC13874d.f93857e.equals(s10)) {
                return super.E();
            }
            i B10 = B();
            f f10 = B10.f();
            AbstractC13875e abstractC13875e = this.f93912a;
            f Q10 = ((AbstractC13875e.b) abstractC13875e).Q(f10.a(abstractC13875e.p()));
            if (Q10 == null) {
                return false;
            }
            return ((f.a) f10.k(Q10).a(B10.g())).y() == 0;
        }

        @Override
        public i F(f fVar) {
            if (v()) {
                return this;
            }
            int j10 = j();
            if (j10 == 5) {
                f n10 = n();
                f o10 = o();
                return i().k(n10, o10.a(n10).d(fVar).a(n10.k(fVar)), p());
            }
            if (j10 != 6) {
                return super.F(fVar);
            }
            f n11 = n();
            f o11 = o();
            f fVar2 = p()[0];
            f k10 = n11.k(fVar.p());
            return i().k(k10, o11.a(n11).a(k10), new f[]{fVar2.k(fVar)});
        }

        @Override
        public i G(f fVar) {
            return F(fVar);
        }

        @Override
        public i H(f fVar) {
            if (v()) {
                return this;
            }
            int j10 = j();
            if (j10 != 5 && j10 != 6) {
                return super.H(fVar);
            }
            f n10 = n();
            return i().k(n10, o().a(n10).k(fVar).a(n10), p());
        }

        @Override
        public i I(f fVar) {
            return H(fVar);
        }

        @Override
        public i J(i iVar) {
            return iVar.v() ? this : a(iVar.A());
        }

        public b O() {
            i j10;
            if (v()) {
                return this;
            }
            AbstractC13875e i10 = i();
            int t10 = i10.t();
            f fVar = this.f93913b;
            if (t10 != 0) {
                if (t10 != 1) {
                    if (t10 != 5) {
                        if (t10 != 6) {
                            throw new IllegalStateException("unsupported coordinate system");
                        }
                    }
                }
                j10 = i10.k(fVar.p(), this.f93914c.p(), new f[]{this.f93915d[0].p()});
                return (b) j10;
            }
            j10 = i10.j(fVar.p(), this.f93914c.p());
            return (b) j10;
        }

        public b P(int i10) {
            i j10;
            if (v()) {
                return this;
            }
            AbstractC13875e i11 = i();
            int t10 = i11.t();
            f fVar = this.f93913b;
            if (t10 != 0) {
                if (t10 != 1) {
                    if (t10 != 5) {
                        if (t10 != 6) {
                            throw new IllegalStateException("unsupported coordinate system");
                        }
                    }
                }
                j10 = i11.k(fVar.s(i10), this.f93914c.s(i10), new f[]{this.f93915d[0].s(i10)});
                return (b) j10;
            }
            j10 = i11.j(fVar.s(i10), this.f93914c.s(i10));
            return (b) j10;
        }

        public b(AbstractC13875e abstractC13875e, f fVar, f fVar2, f[] fVarArr) {
            super(abstractC13875e, fVar, fVar2, fVarArr);
        }
    }

    public static abstract class c extends i {
        public c(AbstractC13875e abstractC13875e, f fVar, f fVar2) {
            super(abstractC13875e, fVar, fVar2);
        }

        @Override
        public boolean D() {
            f fVar = this.f93913b;
            f fVar2 = this.f93914c;
            f p10 = this.f93912a.p();
            f r10 = this.f93912a.r();
            f p11 = fVar2.p();
            int j10 = j();
            if (j10 != 0) {
                if (j10 == 1) {
                    f fVar3 = this.f93915d[0];
                    if (!fVar3.i()) {
                        f p12 = fVar3.p();
                        f k10 = fVar3.k(p12);
                        p11 = p11.k(fVar3);
                        p10 = p10.k(p12);
                        r10 = r10.k(k10);
                    }
                } else {
                    if (j10 != 2 && j10 != 3 && j10 != 4) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    f fVar4 = this.f93915d[0];
                    if (!fVar4.i()) {
                        f p13 = fVar4.p();
                        f p14 = p13.p();
                        f k11 = p13.k(p14);
                        p10 = p10.k(p14);
                        r10 = r10.k(k11);
                    }
                }
            }
            return p11.equals(fVar.p().a(p10).k(fVar).a(r10));
        }

        @Override
        public i J(i iVar) {
            return iVar.v() ? this : a(iVar.A());
        }

        @Override
        public boolean h() {
            return g().u();
        }

        public c(AbstractC13875e abstractC13875e, f fVar, f fVar2, f[] fVarArr) {
            super(abstractC13875e, fVar, fVar2, fVarArr);
        }
    }

    public static class d extends b {
        public d(AbstractC13875e abstractC13875e, f fVar, f fVar2) {
            super(abstractC13875e, fVar, fVar2);
        }

        @Override
        public i A() {
            if (v()) {
                return this;
            }
            f fVar = this.f93913b;
            if (fVar.j()) {
                return this;
            }
            int j10 = j();
            if (j10 == 0) {
                return new d(this.f93912a, fVar, this.f93914c.a(fVar));
            }
            if (j10 == 1) {
                return new d(this.f93912a, fVar, this.f93914c.a(fVar), new f[]{this.f93915d[0]});
            }
            if (j10 == 5) {
                return new d(this.f93912a, fVar, this.f93914c.b());
            }
            if (j10 != 6) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            f fVar2 = this.f93914c;
            f fVar3 = this.f93915d[0];
            return new d(this.f93912a, fVar, fVar2.a(fVar3), new f[]{fVar3});
        }

        @Override
        public i M() {
            f a10;
            if (v()) {
                return this;
            }
            AbstractC13875e i10 = i();
            f fVar = this.f93913b;
            if (fVar.j()) {
                return i10.x();
            }
            int t10 = i10.t();
            if (t10 == 0) {
                f a11 = this.f93914c.d(fVar).a(fVar);
                f a12 = a11.p().a(a11).a(i10.p());
                return new d(i10, a12, fVar.r(a12, a11.b()));
            }
            if (t10 == 1) {
                f fVar2 = this.f93914c;
                f fVar3 = this.f93915d[0];
                boolean i11 = fVar3.i();
                f k10 = i11 ? fVar : fVar.k(fVar3);
                if (!i11) {
                    fVar2 = fVar2.k(fVar3);
                }
                f p10 = fVar.p();
                f a13 = p10.a(fVar2);
                f p11 = k10.p();
                f a14 = a13.a(k10);
                f m10 = a14.m(a13, p11, i10.p());
                return new d(i10, k10.k(m10), p10.p().m(k10, m10, a14), new f[]{k10.k(p11)});
            }
            if (t10 != 6) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            f fVar4 = this.f93914c;
            f fVar5 = this.f93915d[0];
            boolean i12 = fVar5.i();
            f k11 = i12 ? fVar4 : fVar4.k(fVar5);
            f p12 = i12 ? fVar5 : fVar5.p();
            f p13 = i10.p();
            f k12 = i12 ? p13 : p13.k(p12);
            f a15 = fVar4.p().a(k11).a(k12);
            if (a15.j()) {
                return new d(i10, a15, i10.r().o());
            }
            f p14 = a15.p();
            f k13 = i12 ? a15 : a15.k(p12);
            f r10 = i10.r();
            if (r10.c() < (i10.w() >> 1)) {
                f p15 = fVar4.a(fVar).p();
                a10 = p15.a(a15).a(p12).k(p15).a(r10.i() ? k12.a(p12).p() : k12.r(r10, p12.p())).a(p14);
                if (!p13.j()) {
                    if (!p13.i()) {
                        a10 = a10.a(p13.b().k(k13));
                    }
                    return new d(i10, p14, a10, new f[]{k13});
                }
            } else {
                if (!i12) {
                    fVar = fVar.k(fVar5);
                }
                a10 = fVar.r(a15, k11).a(p14);
            }
            a10 = a10.a(k13);
            return new d(i10, p14, a10, new f[]{k13});
        }

        @Override
        public i N(i iVar) {
            if (v()) {
                return iVar;
            }
            if (iVar.v()) {
                return M();
            }
            AbstractC13875e i10 = i();
            f fVar = this.f93913b;
            if (fVar.j()) {
                return iVar;
            }
            if (i10.t() != 6) {
                return M().a(iVar);
            }
            f fVar2 = iVar.f93913b;
            f fVar3 = iVar.f93915d[0];
            if (fVar2.j() || !fVar3.i()) {
                return M().a(iVar);
            }
            f fVar4 = this.f93914c;
            f fVar5 = this.f93915d[0];
            f fVar6 = iVar.f93914c;
            f p10 = fVar.p();
            f p11 = fVar4.p();
            f p12 = fVar5.p();
            f a10 = i10.p().k(p12).a(p11).a(fVar4.k(fVar5));
            f b10 = fVar6.b();
            f m10 = i10.p().a(b10).k(p12).a(p11).m(a10, p10, p12);
            f k10 = fVar2.k(p12);
            f p13 = k10.a(a10).p();
            if (p13.j()) {
                return m10.j() ? iVar.M() : i10.x();
            }
            if (m10.j()) {
                return new d(i10, m10, i10.r().o());
            }
            f k11 = m10.p().k(k10);
            f k12 = m10.k(p13).k(p12);
            return new d(i10, k11, m10.a(p13).p().m(a10, b10, k12), new f[]{k12});
        }

        @Override
        public i a(i iVar) {
            f fVar;
            f fVar2;
            f fVar3;
            f fVar4;
            f fVar5;
            f fVar6;
            if (v()) {
                return iVar;
            }
            if (iVar.v()) {
                return this;
            }
            AbstractC13875e i10 = i();
            int t10 = i10.t();
            f fVar7 = this.f93913b;
            f fVar8 = iVar.f93913b;
            if (t10 == 0) {
                f fVar9 = this.f93914c;
                f fVar10 = iVar.f93914c;
                f a10 = fVar7.a(fVar8);
                f a11 = fVar9.a(fVar10);
                if (a10.j()) {
                    return a11.j() ? M() : i10.x();
                }
                f d10 = a11.d(a10);
                f a12 = d10.p().a(d10).a(a10).a(i10.p());
                return new d(i10, a12, d10.k(fVar7.a(a12)).a(a12).a(fVar9));
            }
            if (t10 == 1) {
                f fVar11 = this.f93914c;
                f fVar12 = this.f93915d[0];
                f fVar13 = iVar.f93914c;
                f fVar14 = iVar.f93915d[0];
                boolean i11 = fVar14.i();
                f a13 = fVar12.k(fVar13).a(i11 ? fVar11 : fVar11.k(fVar14));
                f a14 = fVar12.k(fVar8).a(i11 ? fVar7 : fVar7.k(fVar14));
                if (a14.j()) {
                    return a13.j() ? M() : i10.x();
                }
                f p10 = a14.p();
                f k10 = p10.k(a14);
                if (!i11) {
                    fVar12 = fVar12.k(fVar14);
                }
                f a15 = a13.a(a14);
                f a16 = a15.m(a13, p10, i10.p()).k(fVar12).a(k10);
                f k11 = a14.k(a16);
                if (!i11) {
                    p10 = p10.k(fVar14);
                }
                return new d(i10, k11, a13.m(fVar7, a14, fVar11).m(p10, a15, a16), new f[]{k10.k(fVar12)});
            }
            if (t10 != 6) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            if (fVar7.j()) {
                return fVar8.j() ? i10.x() : iVar.a(this);
            }
            f fVar15 = this.f93914c;
            f fVar16 = this.f93915d[0];
            f fVar17 = iVar.f93914c;
            f fVar18 = iVar.f93915d[0];
            boolean i12 = fVar16.i();
            if (i12) {
                fVar = fVar8;
                fVar2 = fVar17;
            } else {
                fVar = fVar8.k(fVar16);
                fVar2 = fVar17.k(fVar16);
            }
            boolean i13 = fVar18.i();
            if (i13) {
                fVar3 = fVar15;
            } else {
                fVar7 = fVar7.k(fVar18);
                fVar3 = fVar15.k(fVar18);
            }
            f a17 = fVar3.a(fVar2);
            f a18 = fVar7.a(fVar);
            if (a18.j()) {
                return a17.j() ? M() : i10.x();
            }
            if (fVar8.j()) {
                i B10 = B();
                f q10 = B10.q();
                f r10 = B10.r();
                f d11 = r10.a(fVar17).d(q10);
                fVar4 = d11.p().a(d11).a(q10).a(i10.p());
                if (fVar4.j()) {
                    return new d(i10, fVar4, i10.r().o());
                }
                fVar6 = d11.k(q10.a(fVar4)).a(fVar4).a(r10).d(fVar4).a(fVar4);
                fVar5 = i10.o(InterfaceC13874d.f93854b);
            } else {
                f p11 = a18.p();
                f k12 = a17.k(fVar7);
                f k13 = a17.k(fVar);
                f k14 = k12.k(k13);
                if (k14.j()) {
                    return new d(i10, k14, i10.r().o());
                }
                f k15 = a17.k(p11);
                f k16 = !i13 ? k15.k(fVar18) : k15;
                f r11 = k13.a(p11).r(k16, fVar15.a(fVar16));
                if (!i12) {
                    k16 = k16.k(fVar16);
                }
                fVar4 = k14;
                fVar5 = k16;
                fVar6 = r11;
            }
            return new d(i10, fVar4, fVar6, new f[]{fVar5});
        }

        @Override
        public i d() {
            return new d(null, f(), g());
        }

        @Override
        public boolean h() {
            f n10 = n();
            if (n10.j()) {
                return false;
            }
            f o10 = o();
            int j10 = j();
            return (j10 == 5 || j10 == 6) ? o10.u() != n10.u() : o10.d(n10).u();
        }

        @Override
        public f r() {
            int j10 = j();
            if (j10 != 5 && j10 != 6) {
                return this.f93914c;
            }
            f fVar = this.f93913b;
            f fVar2 = this.f93914c;
            if (v() || fVar.j()) {
                return fVar2;
            }
            f k10 = fVar2.a(fVar).k(fVar);
            if (6 != j10) {
                return k10;
            }
            f fVar3 = this.f93915d[0];
            return !fVar3.i() ? k10.d(fVar3) : k10;
        }

        public d(AbstractC13875e abstractC13875e, f fVar, f fVar2, f[] fVarArr) {
            super(abstractC13875e, fVar, fVar2, fVarArr);
        }
    }

    public static class e extends c {
        public e(AbstractC13875e abstractC13875e, f fVar, f fVar2) {
            super(abstractC13875e, fVar, fVar2);
        }

        @Override
        public i A() {
            if (v()) {
                return this;
            }
            AbstractC13875e i10 = i();
            return i10.t() != 0 ? new e(i10, this.f93913b, this.f93914c.n(), this.f93915d) : new e(i10, this.f93913b, this.f93914c.n());
        }

        @Override
        public i K() {
            if (v()) {
                return this;
            }
            f fVar = this.f93914c;
            if (fVar.j()) {
                return this;
            }
            AbstractC13875e i10 = i();
            int t10 = i10.t();
            if (t10 != 0) {
                return t10 != 4 ? M().a(this) : U(false).a(this);
            }
            f fVar2 = this.f93913b;
            f V10 = V(fVar);
            f p10 = V10.p();
            f a10 = T(fVar2.p()).a(i().p());
            f t11 = T(fVar2).k(p10).t(a10.p());
            if (t11.j()) {
                return i().x();
            }
            f h10 = t11.k(V10).h();
            f k10 = t11.k(h10).k(a10);
            f t12 = p10.p().k(h10).t(k10);
            f a11 = t12.t(k10).k(k10.a(t12)).a(fVar2);
            return new e(i10, a11, fVar2.t(a11).k(t12).t(fVar));
        }

        @Override
        public i L(int i10) {
            f p10;
            if (i10 < 0) {
                throw new IllegalArgumentException("'e' cannot be negative");
            }
            if (i10 == 0 || v()) {
                return this;
            }
            if (i10 == 1) {
                return M();
            }
            AbstractC13875e i11 = i();
            f fVar = this.f93914c;
            if (fVar.j()) {
                return i11.x();
            }
            int t10 = i11.t();
            f p11 = i11.p();
            f fVar2 = this.f93913b;
            f[] fVarArr = this.f93915d;
            int i12 = 0;
            f o10 = fVarArr.length < 1 ? i11.o(InterfaceC13874d.f93854b) : fVarArr[0];
            if (!o10.i() && t10 != 0) {
                if (t10 == 1) {
                    p10 = o10.p();
                    fVar2 = fVar2.k(o10);
                    fVar = fVar.k(p10);
                } else if (t10 == 2) {
                    p10 = null;
                } else {
                    if (t10 != 4) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    p11 = S();
                }
                p11 = O(o10, p10);
            }
            while (i12 < i10) {
                if (fVar.j()) {
                    return i11.x();
                }
                f T10 = T(fVar2.p());
                f V10 = V(fVar);
                f k10 = V10.k(fVar);
                f V11 = V(fVar2.k(k10));
                f V12 = V(k10.p());
                if (!p11.j()) {
                    T10 = T10.a(p11);
                    p11 = V(V12.k(p11));
                }
                f t11 = T10.p().t(V(V11));
                fVar = T10.k(V11.t(t11)).t(V12);
                o10 = o10.i() ? V10 : V10.k(o10);
                i12++;
                fVar2 = t11;
            }
            if (t10 == 0) {
                f h10 = o10.h();
                f p12 = h10.p();
                return new e(i11, fVar2.k(p12), fVar.k(p12.k(h10)));
            }
            if (t10 == 1) {
                return new e(i11, fVar2.k(o10), fVar, new f[]{o10.k(o10.p())});
            }
            if (t10 == 2) {
                return new e(i11, fVar2, fVar, new f[]{o10});
            }
            if (t10 == 4) {
                return new e(i11, fVar2, fVar, new f[]{o10, p11});
            }
            throw new IllegalStateException("unsupported coordinate system");
        }

        @Override
        public i M() {
            f fVar;
            f k10;
            if (v()) {
                return this;
            }
            AbstractC13875e i10 = i();
            f fVar2 = this.f93914c;
            if (fVar2.j()) {
                return i10.x();
            }
            int t10 = i10.t();
            f fVar3 = this.f93913b;
            if (t10 == 0) {
                f d10 = T(fVar3.p()).a(i().p()).d(V(fVar2));
                f t11 = d10.p().t(V(fVar3));
                return new e(i10, t11, d10.k(fVar3.t(t11)).t(fVar2));
            }
            if (t10 == 1) {
                f fVar4 = this.f93915d[0];
                boolean i11 = fVar4.i();
                f p10 = i10.p();
                if (!p10.j() && !i11) {
                    p10 = p10.k(fVar4.p());
                }
                f a10 = p10.a(T(fVar3.p()));
                f k11 = i11 ? fVar2 : fVar2.k(fVar4);
                f p11 = i11 ? fVar2.p() : k11.k(fVar2);
                f R10 = R(fVar3.k(p11));
                f t12 = a10.p().t(V(R10));
                f V10 = V(k11);
                f k12 = t12.k(V10);
                f V11 = V(p11);
                return new e(i10, k12, R10.t(t12).k(a10).t(V(V11.p())), new f[]{V(i11 ? V(V11) : V10.p()).k(k11)});
            }
            if (t10 != 2) {
                if (t10 == 4) {
                    return U(true);
                }
                throw new IllegalStateException("unsupported coordinate system");
            }
            f fVar5 = this.f93915d[0];
            boolean i12 = fVar5.i();
            f p12 = fVar2.p();
            f p13 = p12.p();
            f p14 = i10.p();
            f n10 = p14.n();
            if (n10.v().equals(BigInteger.valueOf(3L))) {
                f p15 = i12 ? fVar5 : fVar5.p();
                fVar = T(fVar3.a(p15).k(fVar3.t(p15)));
                k10 = p12.k(fVar3);
            } else {
                f T10 = T(fVar3.p());
                if (!i12) {
                    if (p14.j()) {
                        fVar = T10;
                    } else {
                        f p16 = fVar5.p().p();
                        if (n10.c() < p14.c()) {
                            fVar = T10.t(p16.k(n10));
                        } else {
                            p14 = p16.k(p14);
                        }
                    }
                    k10 = fVar3.k(p12);
                }
                fVar = T10.a(p14);
                k10 = fVar3.k(p12);
            }
            f R11 = R(k10);
            f t13 = fVar.p().t(V(R11));
            f t14 = R11.t(t13).k(fVar).t(Q(p13));
            f V12 = V(fVar2);
            if (!i12) {
                V12 = V12.k(fVar5);
            }
            return new e(i10, t13, t14, new f[]{V12});
        }

        @Override
        public i N(i iVar) {
            if (this == iVar) {
                return K();
            }
            if (v()) {
                return iVar;
            }
            if (iVar.v()) {
                return M();
            }
            f fVar = this.f93914c;
            if (fVar.j()) {
                return iVar;
            }
            AbstractC13875e i10 = i();
            int t10 = i10.t();
            if (t10 != 0) {
                return t10 != 4 ? M().a(iVar) : U(false).a(iVar);
            }
            f fVar2 = this.f93913b;
            f fVar3 = iVar.f93913b;
            f fVar4 = iVar.f93914c;
            f t11 = fVar3.t(fVar2);
            f t12 = fVar4.t(fVar);
            if (t11.j()) {
                return t12.j() ? K() : this;
            }
            f p10 = t11.p();
            f t13 = p10.k(V(fVar2).a(fVar3)).t(t12.p());
            if (t13.j()) {
                return i10.x();
            }
            f h10 = t13.k(t11).h();
            f k10 = t13.k(h10).k(t12);
            f t14 = V(fVar).k(p10).k(t11).k(h10).t(k10);
            f a10 = t14.t(k10).k(k10.a(t14)).a(fVar3);
            return new e(i10, a10, fVar2.t(a10).k(t14).t(fVar));
        }

        public f O(f fVar, f fVar2) {
            f p10 = i().p();
            if (p10.j() || fVar.i()) {
                return p10;
            }
            if (fVar2 == null) {
                fVar2 = fVar.p();
            }
            f p11 = fVar2.p();
            f n10 = p10.n();
            return n10.c() < p10.c() ? p11.k(n10).n() : p11.k(p10);
        }

        public f P(f fVar, f fVar2, f fVar3, f fVar4) {
            return fVar.a(fVar2).p().t(fVar3).t(fVar4);
        }

        public f Q(f fVar) {
            return R(V(fVar));
        }

        public f R(f fVar) {
            return V(V(fVar));
        }

        public f S() {
            f[] fVarArr = this.f93915d;
            f fVar = fVarArr[1];
            if (fVar != null) {
                return fVar;
            }
            f O10 = O(fVarArr[0], null);
            fVarArr[1] = O10;
            return O10;
        }

        public f T(f fVar) {
            return V(fVar).a(fVar);
        }

        public e U(boolean z10) {
            f fVar = this.f93913b;
            f fVar2 = this.f93914c;
            f fVar3 = this.f93915d[0];
            f S10 = S();
            f a10 = T(fVar.p()).a(S10);
            f V10 = V(fVar2);
            f k10 = V10.k(fVar2);
            f V11 = V(fVar.k(k10));
            f t10 = a10.p().t(V(V11));
            f V12 = V(k10.p());
            f t11 = a10.k(V11.t(t10)).t(V12);
            f V13 = z10 ? V(V12.k(S10)) : null;
            if (!fVar3.i()) {
                V10 = V10.k(fVar3);
            }
            return new e(i(), t10, t11, new f[]{V10, V13});
        }

        public f V(f fVar) {
            return fVar.a(fVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0128  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0136  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public i a(i iVar) {
            f p10;
            f l10;
            f k10;
            f fVar;
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
            int t10 = i10.t();
            f fVar2 = this.f93913b;
            f fVar3 = this.f93914c;
            f fVar4 = iVar.f93913b;
            f fVar5 = iVar.f93914c;
            if (t10 == 0) {
                f t11 = fVar4.t(fVar2);
                f t12 = fVar5.t(fVar3);
                if (t11.j()) {
                    return t12.j() ? M() : i10.x();
                }
                f d10 = t12.d(t11);
                f t13 = d10.p().t(fVar2).t(fVar4);
                return new e(i10, t13, d10.k(fVar2.t(t13)).t(fVar3));
            }
            if (t10 == 1) {
                f fVar6 = this.f93915d[0];
                f fVar7 = iVar.f93915d[0];
                boolean i11 = fVar6.i();
                boolean i12 = fVar7.i();
                if (!i11) {
                    fVar5 = fVar5.k(fVar6);
                }
                if (!i12) {
                    fVar3 = fVar3.k(fVar7);
                }
                f t14 = fVar5.t(fVar3);
                if (!i11) {
                    fVar4 = fVar4.k(fVar6);
                }
                if (!i12) {
                    fVar2 = fVar2.k(fVar7);
                }
                f t15 = fVar4.t(fVar2);
                if (t15.j()) {
                    return t14.j() ? M() : i10.x();
                }
                if (i11) {
                    fVar6 = fVar7;
                } else if (!i12) {
                    fVar6 = fVar6.k(fVar7);
                }
                f p11 = t15.p();
                f k11 = p11.k(t15);
                f k12 = p11.k(fVar2);
                f t16 = t14.p().k(fVar6).t(k11).t(V(k12));
                return new e(i10, t15.k(t16), k12.t(t16).l(t14, fVar3, k11), new f[]{k11.k(fVar6)});
            }
            if (t10 != 2 && t10 != 4) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            f fVar8 = this.f93915d[0];
            f fVar9 = iVar.f93915d[0];
            boolean i13 = fVar8.i();
            if (i13 || !fVar8.equals(fVar9)) {
                if (!i13) {
                    f p12 = fVar8.p();
                    fVar4 = p12.k(fVar4);
                    fVar5 = p12.k(fVar8).k(fVar5);
                }
                boolean i14 = fVar9.i();
                if (!i14) {
                    f p13 = fVar9.p();
                    fVar2 = p13.k(fVar2);
                    fVar3 = p13.k(fVar9).k(fVar3);
                }
                f t17 = fVar2.t(fVar4);
                f t18 = fVar3.t(fVar5);
                if (t17.j()) {
                    return t18.j() ? M() : i10.x();
                }
                p10 = t17.p();
                f k13 = p10.k(t17);
                f k14 = p10.k(fVar2);
                f t19 = t18.p().a(k13).t(V(k14));
                l10 = k14.t(t19).l(t18, k13, fVar3);
                f k15 = !i13 ? t17.k(fVar8) : t17;
                k10 = !i14 ? k15.k(fVar9) : k15;
                if (k10 == t17) {
                    fVar = t19;
                    return new e(i10, fVar, l10, t10 != 4 ? new f[]{k10, O(k10, p10)} : new f[]{k10});
                }
                fVar = t19;
            } else {
                f t20 = fVar2.t(fVar4);
                f t21 = fVar3.t(fVar5);
                if (t20.j()) {
                    return t21.j() ? M() : i10.x();
                }
                f p14 = t20.p();
                f k16 = fVar2.k(p14);
                f k17 = fVar4.k(p14);
                f k18 = k16.t(k17).k(fVar3);
                fVar = t21.p().t(k16).t(k17);
                l10 = k16.t(fVar).k(t21).t(k18);
                k10 = t20.k(fVar8);
            }
            p10 = null;
            return new e(i10, fVar, l10, t10 != 4 ? new f[]{k10, O(k10, p10)} : new f[]{k10});
        }

        @Override
        public i d() {
            return new e(null, f(), g());
        }

        @Override
        public f s(int i10) {
            return (i10 == 1 && 4 == j()) ? S() : super.s(i10);
        }

        public e(AbstractC13875e abstractC13875e, f fVar, f fVar2, f[] fVarArr) {
            super(abstractC13875e, fVar, fVar2, fVarArr);
        }
    }

    public i(AbstractC13875e abstractC13875e, f fVar, f fVar2) {
        this(abstractC13875e, fVar, fVar2, m(abstractC13875e));
    }

    public static f[] m(AbstractC13875e abstractC13875e) {
        int t10 = abstractC13875e == null ? 0 : abstractC13875e.t();
        if (t10 == 0 || t10 == 5) {
            return f93911f;
        }
        f o10 = abstractC13875e.o(InterfaceC13874d.f93854b);
        if (t10 != 1 && t10 != 2) {
            if (t10 == 3) {
                return new f[]{o10, o10, o10};
            }
            if (t10 == 4) {
                return new f[]{o10, abstractC13875e.p()};
            }
            if (t10 != 6) {
                throw new IllegalArgumentException("unknown coordinate system");
            }
        }
        return new f[]{o10};
    }

    public abstract i A();

    public i B() {
        int j10;
        if (v() || (j10 = j()) == 0 || j10 == 5) {
            return this;
        }
        f s10 = s(0);
        if (s10.i()) {
            return this;
        }
        if (this.f93912a == null) {
            throw new IllegalStateException("Detached points must be in affine coordinates");
        }
        f I10 = this.f93912a.I(Bi.r.h());
        return C(s10.k(I10).h().k(I10));
    }

    public i C(f fVar) {
        int j10 = j();
        if (j10 != 1) {
            if (j10 == 2 || j10 == 3 || j10 == 4) {
                f p10 = fVar.p();
                return c(p10, p10.k(fVar));
            }
            if (j10 != 6) {
                throw new IllegalStateException("not a projective coordinate system");
            }
        }
        return c(fVar, fVar);
    }

    public abstract boolean D();

    public boolean E() {
        BigInteger A10;
        return InterfaceC13874d.f93854b.equals(this.f93912a.s()) || (A10 = this.f93912a.A()) == null || C13873c.s(this, A10).v();
    }

    public i F(f fVar) {
        return v() ? this : i().k(n().k(fVar), o(), p());
    }

    public i G(f fVar) {
        return v() ? this : i().k(n().k(fVar), o().n(), p());
    }

    public i H(f fVar) {
        return v() ? this : i().k(n(), o().k(fVar), p());
    }

    public i I(f fVar) {
        return v() ? this : i().k(n().n(), o().k(fVar), p());
    }

    public abstract i J(i iVar);

    public i K() {
        return N(this);
    }

    public i L(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("'e' cannot be negative");
        }
        i iVar = this;
        while (true) {
            i10--;
            if (i10 < 0) {
                return iVar;
            }
            iVar = iVar.M();
        }
    }

    public abstract i M();

    public i N(i iVar) {
        return M().a(iVar);
    }

    public abstract i a(i iVar);

    public void b() {
        if (!w()) {
            throw new IllegalStateException("point not in normal form");
        }
    }

    public i c(f fVar, f fVar2) {
        return i().j(n().k(fVar), o().k(fVar2));
    }

    public abstract i d();

    public boolean e(i iVar) {
        i iVar2;
        if (iVar == null) {
            return false;
        }
        AbstractC13875e i10 = i();
        AbstractC13875e i11 = iVar.i();
        boolean z10 = i10 == null;
        boolean z11 = i11 == null;
        boolean v10 = v();
        boolean v11 = iVar.v();
        if (v10 || v11) {
            if (v10 && v11) {
                return z10 || z11 || i10.n(i11);
            }
            return false;
        }
        if (!z10 || !z11) {
            if (!z10) {
                if (z11) {
                    iVar2 = B();
                } else {
                    if (!i10.n(i11)) {
                        return false;
                    }
                    i[] iVarArr = {this, i10.C(iVar)};
                    i10.E(iVarArr);
                    iVar2 = iVarArr[0];
                    iVar = iVarArr[1];
                }
                return iVar2.q().equals(iVar.q()) && iVar2.r().equals(iVar.r());
            }
            iVar = iVar.B();
        }
        iVar2 = this;
        if (iVar2.q().equals(iVar.q())) {
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            return e((i) obj);
        }
        return false;
    }

    public f f() {
        b();
        return q();
    }

    public f g() {
        b();
        return r();
    }

    public abstract boolean h();

    public int hashCode() {
        AbstractC13875e i10 = i();
        int i11 = i10 == null ? 0 : ~i10.hashCode();
        if (v()) {
            return i11;
        }
        i B10 = B();
        return (i11 ^ (B10.q().hashCode() * 17)) ^ (B10.r().hashCode() * 257);
    }

    public AbstractC13875e i() {
        return this.f93912a;
    }

    public int j() {
        AbstractC13875e abstractC13875e = this.f93912a;
        if (abstractC13875e == null) {
            return 0;
        }
        return abstractC13875e.t();
    }

    public final i k() {
        return B().d();
    }

    public byte[] l(boolean z10) {
        if (v()) {
            return new byte[1];
        }
        i B10 = B();
        byte[] e10 = B10.q().e();
        if (z10) {
            byte[] bArr = new byte[e10.length + 1];
            bArr[0] = (byte) (B10.h() ? 3 : 2);
            System.arraycopy(e10, 0, bArr, 1, e10.length);
            return bArr;
        }
        byte[] e11 = B10.r().e();
        byte[] bArr2 = new byte[e10.length + e11.length + 1];
        bArr2[0] = 4;
        System.arraycopy(e10, 0, bArr2, 1, e10.length);
        System.arraycopy(e11, 0, bArr2, e10.length + 1, e11.length);
        return bArr2;
    }

    public final f n() {
        return this.f93913b;
    }

    public final f o() {
        return this.f93914c;
    }

    public final f[] p() {
        return this.f93915d;
    }

    public f q() {
        return this.f93913b;
    }

    public f r() {
        return this.f93914c;
    }

    public f s(int i10) {
        if (i10 >= 0) {
            f[] fVarArr = this.f93915d;
            if (i10 < fVarArr.length) {
                return fVarArr[i10];
            }
        }
        return null;
    }

    public f[] t() {
        f[] fVarArr = this.f93915d;
        int length = fVarArr.length;
        if (length == 0) {
            return f93911f;
        }
        f[] fVarArr2 = new f[length];
        System.arraycopy(fVarArr, 0, fVarArr2, 0, length);
        return fVarArr2;
    }

    public String toString() {
        if (v()) {
            return "INF";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        stringBuffer.append((Object) n());
        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
        stringBuffer.append((Object) o());
        for (int i10 = 0; i10 < this.f93915d.length; i10++) {
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append((Object) this.f93915d[i10]);
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public boolean u(boolean z10, boolean z11) {
        if (v()) {
            return true;
        }
        return !((y) i().G(this, y.f93952d, new a(z10, z11))).b();
    }

    public boolean v() {
        if (this.f93913b != null && this.f93914c != null) {
            f[] fVarArr = this.f93915d;
            if (fVarArr.length <= 0 || !fVarArr[0].j()) {
                return false;
            }
        }
        return true;
    }

    public boolean w() {
        int j10 = j();
        return j10 == 0 || j10 == 5 || v() || this.f93915d[0].i();
    }

    public boolean x() {
        return u(false, true);
    }

    public boolean y() {
        return u(false, false);
    }

    public i z(BigInteger bigInteger) {
        return i().y().a(this, bigInteger);
    }

    public i(AbstractC13875e abstractC13875e, f fVar, f fVar2, f[] fVarArr) {
        this.f93916e = null;
        this.f93912a = abstractC13875e;
        this.f93913b = fVar;
        this.f93914c = fVar2;
        this.f93915d = fVarArr;
    }
}
