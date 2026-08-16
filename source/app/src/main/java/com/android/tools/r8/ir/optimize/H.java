package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.B1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4535k1;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5015Cx0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6931dX;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C10057wD;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5721Pc;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6678bz;
import com.android.tools.r8.internal.C6949de;
import com.android.tools.r8.internal.C7207f80;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7405gK;
import com.android.tools.r8.internal.C8024k3;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8704o7;
import com.android.tools.r8.internal.C9225rE;
import com.android.tools.r8.internal.HD;
import com.android.tools.r8.internal.JD;
import com.android.tools.r8.internal.KD;
import com.android.tools.r8.internal.NN0;
import com.android.tools.r8.internal.OG0;
import com.android.tools.r8.internal.QJ;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.WX;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11295l;
import com.android.tools.r8.shaking.C11297l1;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.shaking.I1;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import v.C15683c;

public class H implements Y {

    public static final boolean f54744i = true;

    public final C4798y f54745a;

    public final C8570nJ f54746b;

    public final C8570nJ.h f54747c;

    public final C11349o2 f54748d;

    public final H5 f54749e;

    public final AbstractC6931dX f54750f;

    public final KD f54751g;

    public int f54752h;

    public H(C4798y c4798y, H5 h52, AbstractC6931dX abstractC6931dX, KD kd2, C7215fB c7215fB) {
        this(c4798y, h52, abstractC6931dX, kd2, c4798y.E().L().f50773g - W.b(c7215fB));
    }

    @Override
    public final C6949de a(VJ vj2, C6949de c6949de) {
        return c6949de;
    }

    @Override
    public final C4798y b() {
        return this.f54745a;
    }

    public final boolean c(VJ vj2, H5 h52, Optional optional) {
        int a10;
        if (!this.f54750f.a(h52)) {
            AbstractC4497i0 Q02 = h52.d().Q0();
            int i10 = this.f54747c.f50770d;
            if (i10 < 0) {
                i10 = 5;
            }
            int i11 = 0;
            if (this.f54746b.L().f50771e) {
                a10 = ((this.f54746b.P() && vj2.e1() && vj2.d().A()) ? 1 : 0) + a(vj2, h52, optional) + b(h52, vj2);
            } else {
                a10 = 0;
            }
            int k10 = Q02.k(a10 + i10);
            if (k10 >= 0) {
                if (k10 <= i10) {
                    return true;
                }
                if (this.f54746b.L().f50771e) {
                    int b10 = b(vj2, h52, optional) + b(h52, vj2);
                    if (this.f54746b.P() && vj2.e1() && vj2.d().A()) {
                        i11 = 1;
                    }
                    i11 += b10;
                }
                if (k10 <= i10 + i11) {
                    return true;
                }
            }
        }
        C4516j1 d10 = h52.d();
        d10.L0();
        return d10.f37320m.u().a(vj2);
    }

    public static int b(H5 h52, VJ vj2) {
        BitSet s10 = h52.A().s();
        int i10 = 0;
        if (s10 == null) {
            return 0;
        }
        for (int a10 = C8704o7.a(vj2.Q1()); a10 < vj2.f54321f.size(); a10++) {
            C10340xw0 b10 = vj2.b(a10);
            if (s10.get(a10) && b10.u().y() && b10.O()) {
                i10 += 4;
            }
        }
        return i10;
    }

    @Override
    public final boolean a() {
        return false;
    }

    public static boolean a(VJ vj2, H5 h52, AbstractC5015Cx0 abstractC5015Cx0) {
        if (!h52.d().f1()) {
            if (!h52.d().b1()) {
                abstractC5015Cx0.g();
                return true;
            }
            int size = vj2.f54321f.size() - C8704o7.a(vj2.Q1());
            int w02 = h52.getReference().w0();
            if (size == w02) {
                return false;
            }
            abstractC5015Cx0.a(size, w02);
            return true;
        }
        throw new C5417Jv0("Unexpected attempt to invoke a class initializer (`" + h52.r() + "`)");
    }

    public H(C4798y c4798y, H5 h52, AbstractC6931dX abstractC6931dX, KD kd2, int i10) {
        this.f54745a = c4798y;
        C8570nJ E10 = c4798y.E();
        this.f54746b = E10;
        this.f54747c = E10.L();
        this.f54751g = kd2;
        this.f54748d = ((C11245i) c4798y.f()).f();
        this.f54749e = h52;
        this.f54750f = abstractC6931dX;
        this.f54752h = i10;
    }

    public final int b(VJ vj2, H5 h52, Optional optional) {
        final B1 b12;
        int i10 = 0;
        if (!C15683c.a(optional) && !vj2.f54321f.isEmpty() && h52.d().Q0().A0()) {
            final C7215fB a10 = ((JD) optional.get()).a(h52, vj2);
            Objects.requireNonNull(a10);
            Iterable<C8024k3> iterable = new Iterable() {
                @Override
                public final Iterator iterator() {
                    return C7215fB.this.b();
                }
            };
            C4724u1 b10 = this.f54745a.b();
            for (C8024k3 c8024k3 : iterable) {
                C10340xw0 d10 = c8024k3.d();
                for (AbstractC10561zE abstractC10561zE : d10.b0()) {
                    if (abstractC10561zE.t1()) {
                        if (vj2.b(c8024k3.b(true)).u().a(abstractC10561zE.D().f49274k.b(this.f54745a), this.f54745a)) {
                            i10 += 2;
                        }
                    } else {
                        M2 a11 = h52.a(c8024k3.b(true));
                        b10.getClass();
                        if (a11.P0()) {
                            b12 = new B1(b10.c(a11), b10.f(a11));
                        } else {
                            b12 = b10.f38152s6.containsValue(a11) ? new B1(b10.f(a11), b10.c(a11)) : null;
                        }
                        if (b12 != null) {
                            C10340xw0 i11 = vj2.b(c8024k3.b(true)).i();
                            if (abstractC10561zE.a(b12.f36145a) && i11.d(new Predicate() {
                                @Override
                                public final boolean test(Object obj) {
                                    return com.android.tools.r8.ir.optimize.H.b(com.android.tools.r8.graph.B1.this, (AbstractC10561zE) obj);
                                }
                            })) {
                                i10 = (i11.U() == 1 && d10.U() == 1) ? i10 + 8 : i10 + 4;
                            }
                        }
                    }
                }
            }
        }
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0167, code lost:
    
        if (r0.M().f().f57409x.contains(r9.getReference()) != false) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0199  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C7215fB c7215fB, Z4.c cVar, H5 h52, AbstractC5015Cx0 abstractC5015Cx0) {
        boolean z10;
        H5 h53 = this.f54749e;
        C4798y c4798y = this.f54745a;
        if (c4798y.E().a().e() && h53.getHolder() != h52.getHolder()) {
            com.android.tools.r8.androidapi.f fVar = h53.d().f37322o;
            com.android.tools.r8.androidapi.f fVar2 = h52.d().f37322o;
            if (fVar.U()) {
                if (!fVar2.isEqualTo(c4798y.f38405T)) {
                    abstractC5015Cx0.a();
                    return false;
                }
            } else if (!h53.d().f37322o.d(fVar2)) {
                abstractC5015Cx0.a(fVar, fVar2);
                return false;
            }
        }
        if (this.f54749e.a((com.android.tools.r8.graph.H0) h52)) {
            if (!f54744i && h52.A().g()) {
                throw new AssertionError();
            }
            abstractC5015Cx0.t();
            return false;
        }
        C8570nJ c8570nJ = this.f54746b;
        c8570nJ.getClass();
        if (c8570nJ.a(C2.N) && ((c7215fB.j().getAccessFlags().L() || c7215fB.f47902i.a(42)) && (h52.getAccessFlags().L() || h52.d().Q0().s0()))) {
            return false;
        }
        if (this.f54750f.a(h52)) {
            abstractC5015Cx0.q();
            return false;
        }
        H5 h54 = this.f54749e;
        C4798y c4798y2 = this.f54745a;
        if (c4798y2.E().I()) {
            C6300Zd c6300Zd = ((C4514j) c4798y2.f()).f37255b;
            c6300Zd.getClass();
            com.android.tools.r8.synthesis.J g10 = c4798y2.f38408a.g();
            if (c6300Zd.a(h54.getReference(), g10) != c6300Zd.a(h52.getReference(), g10)) {
                if (!c6300Zd.a(h52.getReference(), c4798y2.f38408a.g()).isBase() || (c4798y2.E().f50718s.f43762b && h52.d().f37319l != EnumC4535k1.f37409d)) {
                    abstractC5015Cx0.l();
                    return false;
                }
            }
        }
        H5 h55 = this.f54749e;
        C4798y c4798y3 = this.f54745a;
        AbstractC9148qo0 abstractC9148qo0 = c4798y3.f38424q;
        if (!abstractC9148qo0.c() && !c4798y3.E().E().f51620c && !h52.A().g()) {
            if (c4798y3.f().i()) {
            }
            C11297l1 a10 = c4798y3.r().a(h52.getHolder());
            c4798y3.E();
            if (!a10.f57837g && abstractC9148qo0.b(h55.p())) {
                z10 = abstractC9148qo0.b(h52.p());
                if (z10) {
                    abstractC5015Cx0.m();
                    return false;
                }
                if (cVar.a(this.f54749e, this.f54745a).b()) {
                    abstractC5015Cx0.f();
                    return false;
                }
                if (this.f54748d.a(this.f54745a, this.f54749e, h52)) {
                    abstractC5015Cx0.k();
                    return false;
                }
                if (f54744i || !this.f54748d.a(this.f54745a, this.f54749e, h52)) {
                    return true;
                }
                throw new AssertionError();
            }
        }
        z10 = true;
        if (z10) {
        }
    }

    public static boolean b(B1 b12, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.a(b12.f36146b);
    }

    public final boolean a(C7215fB c7215fB, VJ vj2, C7215fB c7215fB2, AbstractC5015Cx0 abstractC5015Cx0) {
        if (!c7215fB.f47902i.a(42) || !c7215fB2.f47902i.a(42)) {
            return false;
        }
        Set c10 = AbstractC5513Ll0.c();
        Set c11 = AbstractC5513Ll0.c();
        HD.a(c7215fB, c10, c11);
        if (c10.isEmpty() && c11.isEmpty()) {
            return false;
        }
        Iterator it = c7215fB2.b((Predicate) new OG0()).iterator();
        while (it.hasNext()) {
            C10340xw0 i10 = ((C10340xw0) ((WX) it.next()).f54321f.get(0)).i();
            if (i10.d(new NN0())) {
                i10 = ((C10340xw0) vj2.f54321f.get(i10.f53886c.v().b(true))).i();
            }
            HD.a(i10, c10, c11);
        }
        int size = c11.size() + c10.size();
        int i11 = this.f54747c.f50774h;
        if (size <= i11) {
            return false;
        }
        abstractC5015Cx0.d(size, i11);
        return true;
    }

    public final int a(VJ vj2, H5 h52, Optional optional) {
        final B1 b12;
        int i10 = 0;
        if (!C15683c.a(optional) && !vj2.f54321f.isEmpty() && h52.d().Q0().A0()) {
            for (int a10 = C8704o7.a(vj2.Q1()); a10 < vj2.f54321f.size(); a10++) {
                C10340xw0 i11 = vj2.b(a10).i();
                if (i11.u().y()) {
                    i10 += 2;
                }
                M2 a11 = h52.a(a10);
                C4724u1 b10 = this.f54745a.b();
                b10.getClass();
                if (a11.P0()) {
                    b12 = new B1(b10.c(a11), b10.f(a11));
                } else {
                    b12 = b10.f38152s6.containsValue(a11) ? new B1(b10.f(a11), b10.c(a11)) : null;
                }
                if (b12 != null && i11.d(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return com.android.tools.r8.ir.optimize.H.a(com.android.tools.r8.graph.B1.this, (AbstractC10561zE) obj);
                    }
                })) {
                    i10 += 8;
                }
            }
        }
        return i10;
    }

    public static Boolean a(H5 h52, C6678bz c6678bz) {
        return Boolean.valueOf(c6678bz.f46927e.contains(h52.getReference()));
    }

    @Override
    public final H5 a(H5 h52, VJ vj2) {
        return vj2.d(this.f54745a, h52);
    }

    /* JADX WARN: Code restructure failed: missing block: B:248:0x008e, code lost:
    
        if (r0.g(r1.f36245e) != false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x046a A[RETURN] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public S a(C7215fB c7215fB, VJ vj2, Z4.c cVar, H5 h52, H5 h53, C5721Pc c5721Pc, JD jd2, AbstractC5015Cx0 abstractC5015Cx0) {
        boolean z10;
        H2 h22;
        boolean z11;
        boolean booleanValue;
        boolean z12;
        boolean z13;
        if (a(vj2, h52, abstractC5015Cx0)) {
            return null;
        }
        A2 a22 = (A2) h52.getReference();
        I1 a10 = this.f54745a.a(h52);
        C8570nJ c8570nJ = this.f54746b;
        a10.getClass();
        if (h52.A().H() || (a10.c(c8570nJ) && a10.f56558q)) {
            C11295l c11295l = this.f54745a.f38412e;
            if (!c11295l.a(vj2.B2()).f40089c && !c11295l.a(com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d).getReference()).f40089c && !c11295l.a(a22).f40089c) {
                if (!this.f54745a.H().f50830M) {
                    com.android.tools.r8.synthesis.J g10 = this.f54745a.f38408a.g();
                    H2 holder = h52.getHolder();
                    g10.getClass();
                }
                z10 = false;
            } else {
                C4516j1 c4516j1 = (C4516j1) h52.d();
                c4516j1.L0();
                z10 = !c4516j1.f37320m.g();
            }
            if (!z10) {
                C4516j1 c4516j12 = (C4516j1) h52.d();
                c4516j12.L0();
                if (!c4516j12.f37320m.g()) {
                    return null;
                }
                throw new C5417Jv0("Unexpected attempt to force inline method `" + h52.r() + "` in `" + h53.r() + "`.");
            }
            U a11 = this.f54751g.a(vj2, h52, h53, this, jd2, this.f54750f, abstractC5015Cx0);
            if (a11 == U.f54812f) {
                return null;
            }
            if (this.f54750f.c().a(h52, h53) && !((C4516j1) h52.d()).o1() && this.f54750f.f()) {
                return new V();
            }
            if (!((C4516j1) h52.d()).a(this.f54745a, this.f54749e, abstractC5015Cx0) || !a(c7215fB, cVar, h52, abstractC5015Cx0)) {
                return null;
            }
            C8570nJ c8570nJ2 = this.f54746b;
            c8570nJ2.getClass();
            if (c8570nJ2.a(C2.N)) {
                if ((h52.getAccessFlags().L() || ((C4516j1) h52.d()).Q0().s0()) && (h53.A().g() || c7215fB.f47902i.a(42))) {
                    return null;
                }
            }
            P a12 = vj2.a(h52, this, c5721Pc, abstractC5015Cx0);
            if (a12 == null) {
                return null;
            }
            C4798y c4798y = this.f54745a;
            if (vj2.Q1()) {
                C10340xw0 C22 = vj2.f0().C2();
                if (!C22.u().s()) {
                    h22 = h52.getHolder();
                } else if (!a(vj2, C22.u().b()).b(h52.p().b(b()).b(), b())) {
                    h22 = h52.getHolder();
                }
                if (h22 != null) {
                    if (AbstractC4420e.a(h22, h53, c4798y, (C4514j) c4798y.f()).b()) {
                        z11 = false;
                        if (!z11) {
                            return null;
                        }
                        C4798y c4798y2 = this.f54745a;
                        c4798y2.E().getClass();
                        if (h53.getHolder().isInterface()) {
                            G g11 = new G(c4798y2, h53);
                            h52.a(g11);
                            booleanValue = g11.f37241e.booleanValue();
                        } else {
                            booleanValue = false;
                        }
                        if (booleanValue) {
                            abstractC5015Cx0.v();
                            return null;
                        }
                        if (((C4516j1) h52.d()).j1()) {
                            QJ c02 = vj2.c0();
                            if (this.f54747c.f50767a) {
                                C7215fB b10 = jd2.b(h52, c02);
                                M2 p10 = this.f54749e.p();
                                M2 p11 = h52.p();
                                if (this.f54749e.d().j1() && p10 == p11 && c02.C2() == c7215fB.m()) {
                                    jd2.a(c02, b10);
                                } else {
                                    C10340xw0 d10 = b10.k().f45293f.a().v().d();
                                    ArrayList arrayList = new ArrayList();
                                    Iterator<AbstractC10561zE> it = b10.q().iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            AbstractC10561zE next = it.next();
                                            if (next.a(this.f54745a.b())) {
                                                QJ c03 = next.c0();
                                                if (c03.C2().i() == d10) {
                                                    if (!this.f54746b.e() && p11 != c03.B2().s0()) {
                                                        abstractC5015Cx0.a(c03);
                                                        break;
                                                    }
                                                    arrayList.add(c03);
                                                } else {
                                                    continue;
                                                }
                                            } else if (next.i()) {
                                                C9225rE m10 = next.m();
                                                com.android.tools.r8.graph.F0 p12 = m10.c(this.f54745a, h52).p();
                                                if (p12 == null) {
                                                    abstractC5015Cx0.b(m10);
                                                    break;
                                                }
                                                if (!p12.getAccessFlags().e()) {
                                                    continue;
                                                } else {
                                                    if (!this.f54747c.f50768b) {
                                                        break;
                                                    }
                                                    C8570nJ c8570nJ3 = this.f54746b;
                                                    M2 m22 = p11;
                                                    C4798y c4798y3 = this.f54745a;
                                                    Iterator<AbstractC10561zE> it2 = it;
                                                    if (c8570nJ3.P()) {
                                                        if (c8570nJ3.z().d(C2.T)) {
                                                            z12 = c4798y3.a(c4798y3.b().f37964U4.f36736a);
                                                            if (z12 || !this.f54750f.e() || !(p12 instanceof F5)) {
                                                                break;
                                                                break;
                                                            }
                                                            F5 W10 = p12.W();
                                                            if (a12.f54795e == null) {
                                                                a12.f54795e = new C7207f80(new IdentityHashMap());
                                                            }
                                                            a12.f54795e.a(W10);
                                                            it = it2;
                                                            p11 = m22;
                                                        }
                                                    }
                                                    z12 = false;
                                                    if (z12) {
                                                        break;
                                                    }
                                                    F5 W102 = p12.W();
                                                    if (a12.f54795e == null) {
                                                    }
                                                    a12.f54795e.a(W102);
                                                    it = it2;
                                                    p11 = m22;
                                                }
                                            } else {
                                                continue;
                                            }
                                            if (!z13) {
                                                return null;
                                            }
                                        } else if (arrayList.isEmpty()) {
                                            for (AbstractC10561zE abstractC10561zE : d10.b0()) {
                                                if (abstractC10561zE.i() && abstractC10561zE.m().n().i() == d10) {
                                                    abstractC5015Cx0.a(abstractC10561zE);
                                                }
                                            }
                                            jd2.a(c02, b10);
                                        } else {
                                            int y10 = b10.y();
                                            int size = arrayList.size();
                                            int i10 = 0;
                                            loop2: while (true) {
                                                if (i10 < size) {
                                                    Object obj = arrayList.get(i10);
                                                    int i11 = i10 + 1;
                                                    AbstractC10561zE abstractC10561zE2 = (QJ) obj;
                                                    W5 b11 = abstractC10561zE2.b();
                                                    Iterator it3 = b11.b(abstractC10561zE2).iterator();
                                                    while (it3.hasNext()) {
                                                        ArrayList arrayList2 = arrayList;
                                                        AbstractC10561zE abstractC10561zE3 = (AbstractC10561zE) it3.next();
                                                        int i12 = size;
                                                        ArrayList arrayList3 = abstractC10561zE3.f54321f;
                                                        int i13 = i11;
                                                        int size2 = arrayList3.size();
                                                        Iterator it4 = it3;
                                                        int i14 = 0;
                                                        while (i14 < size2) {
                                                            Object obj2 = arrayList3.get(i14);
                                                            i14++;
                                                            ArrayList arrayList4 = arrayList3;
                                                            if (((C10340xw0) obj2).i() == d10) {
                                                                b10.a(y10);
                                                                abstractC5015Cx0.a(abstractC10561zE3);
                                                                break loop2;
                                                            }
                                                            arrayList3 = arrayList4;
                                                        }
                                                        arrayList = arrayList2;
                                                        size = i12;
                                                        i11 = i13;
                                                        it3 = it4;
                                                    }
                                                    ArrayList arrayList5 = arrayList;
                                                    int i15 = size;
                                                    int i16 = i11;
                                                    Iterator<W5> it5 = b11.u().iterator();
                                                    while (it5.hasNext()) {
                                                        b10.a(it5.next(), y10);
                                                    }
                                                    arrayList = arrayList5;
                                                    size = i15;
                                                    i10 = i16;
                                                } else {
                                                    Iterator<W5> it6 = b10.f47897d.iterator();
                                                    loop6: while (it6.hasNext()) {
                                                        W5 next2 = it6.next();
                                                        if (next2.a(y10)) {
                                                            Y5 it7 = next2.l().iterator();
                                                            while (it7.hasNext()) {
                                                                AbstractC10561zE next3 = it7.next();
                                                                ArrayList arrayList6 = next3.f54321f;
                                                                int size3 = arrayList6.size();
                                                                Iterator<W5> it8 = it6;
                                                                int i17 = 0;
                                                                while (i17 < size3) {
                                                                    Object obj3 = arrayList6.get(i17);
                                                                    int i18 = i17 + 1;
                                                                    if (((C10340xw0) obj3).i() == d10) {
                                                                        b10.a(y10);
                                                                        abstractC5015Cx0.a(next3);
                                                                    } else {
                                                                        i17 = i18;
                                                                    }
                                                                }
                                                                it6 = it8;
                                                            }
                                                        }
                                                    }
                                                    b10.a(y10);
                                                }
                                            }
                                        }
                                    }
                                }
                                z13 = true;
                                if (!z13) {
                                }
                            }
                            z13 = false;
                            if (!z13) {
                            }
                        }
                        if (a11 == U.f54810d) {
                            if (!f54744i && !this.f54750f.f()) {
                                throw new AssertionError();
                            }
                            if (c(vj2, h52, Optional.of(jd2))) {
                                a11 = U.f54811e;
                            }
                            a12.f54793c = a11;
                        } else {
                            if (a11 == U.f54811e && !c(vj2, h52, Optional.of(jd2))) {
                                abstractC5015Cx0.j();
                                return null;
                            }
                            a12.f54793c = a11;
                        }
                        Q q10 = new Q(a12.f54796f, a12.f54792b, a12.f54793c);
                        H2 h23 = a12.f54791a;
                        if (h23 != null) {
                            q10.f54803f = h23;
                        }
                        if (a12.f54794d) {
                            q10.f54801d = true;
                        }
                        C7207f80 c7207f80 = a12.f54795e;
                        if (c7207f80 != null) {
                            q10.f54802e = c7207f80;
                        }
                        return q10;
                    }
                    a12.f54791a = h22;
                }
                z11 = true;
                if (!z11) {
                }
            }
            h22 = null;
            if (h22 != null) {
            }
            z11 = true;
            if (!z11) {
            }
        } else {
            abstractC5015Cx0.p();
        }
        z10 = true;
        if (!z10) {
        }
    }

    public final boolean a(C7405gK c7405gK, final H5 h52, final H5 h53, C5721Pc c5721Pc) {
        if (((C11245i) this.f54745a.f()).c(h52.p(), h53.p())) {
            return true;
        }
        return (!h52.d().w0() && ((Boolean) this.f54745a.b(new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean valueOf;
                C10057wD c10057wD = (C10057wD) obj;
                valueOf = Boolean.valueOf(c10057wD.a(H5.this.getHolder(), h52));
                return valueOf;
            }
        })).booleanValue()) || c5721Pc.a(h53.p(), c7405gK) || !h53.getHolder().a(this.f54745a, h52) || ((Boolean) this.f54745a.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return com.android.tools.r8.ir.optimize.H.a(H5.this, (C6678bz) obj);
            }
        })).booleanValue();
    }

    @Override
    public final boolean a(Q q10, AbstractC5015Cx0 abstractC5015Cx0) {
        if (q10.f54800c == U.f54808b) {
            return true;
        }
        boolean z10 = this.f54752h > 0;
        if (!z10) {
            abstractC5015Cx0.n();
        }
        return z10;
    }

    @Override
    public final boolean a(Q q10, C7215fB c7215fB, C7215fB c7215fB2, VJ vj2, W5 w52, AbstractC5015Cx0 abstractC5015Cx0) {
        if (q10.f54800c == U.f54808b) {
            return false;
        }
        int b10 = W.b(c7215fB2);
        if (this.f54752h < W.b(c7215fB2)) {
            abstractC5015Cx0.c(b10, this.f54752h);
            return true;
        }
        if (a(c7215fB, vj2, c7215fB2, abstractC5015Cx0)) {
            return true;
        }
        if (w52.z()) {
            Iterator<W5> it = c7215fB2.f47897d.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                Y5 it2 = it.next().l().iterator();
                int i11 = 0;
                while (it2.hasNext()) {
                    if (it2.next().o()) {
                        i11++;
                    }
                }
                i10 += i11;
            }
            int size = w52.f45292e.size() * i10;
            int i12 = this.f54747c.f50775i;
            if (size >= i12) {
                abstractC5015Cx0.b(size, i12);
                return true;
            }
        }
        return false;
    }

    @Override
    public final void a(C7215fB c7215fB) {
        this.f54752h -= W.b(c7215fB);
    }

    public static boolean a(B1 b12, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.a(b12.f36146b);
    }
}
