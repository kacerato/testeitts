package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.shaking.C11447u;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class AbstractC10561zE implements I, FE, DV {

    public static final boolean f54316j = true;

    public W5 f54317b;

    public AbstractC10561zE f54318c;

    public AbstractC10561zE f54319d;

    public C10340xw0 f54320e;

    public final ArrayList f54321f = new ArrayList();

    public int f54322g = -1;

    public Set f54323h;

    public B60 f54324i;

    public AbstractC10561zE(C10340xw0 c10340xw0) {
        d(c10340xw0);
    }

    public T3 A() {
        return null;
    }

    public A40 A0() {
        return null;
    }

    public final boolean A1() {
        return (this instanceof C7631hj) || (this instanceof C7297fj) || (this instanceof C6797cj) || (this instanceof C7130ej) || (this instanceof C6964dj);
    }

    public C4 B() {
        return null;
    }

    public F40 B0() {
        return null;
    }

    public boolean B1() {
        return this instanceof C7130ej;
    }

    public AbstractC9702u6 C() {
        return null;
    }

    public C9870v60 C0() {
        return null;
    }

    public boolean C1() {
        return this instanceof C7631hj;
    }

    public C7942jc D() {
        return null;
    }

    public C9278rc0 D0() {
        return null;
    }

    public boolean D1() {
        return this instanceof C6558bE;
    }

    public C9450se E() {
        return null;
    }

    public C7786if0 E0() {
        return null;
    }

    public boolean E1() {
        return false;
    }

    public C7957jh F() {
        return null;
    }

    public C5731Pf0 F0() {
        return null;
    }

    public boolean F1() {
        return this instanceof C9225rE;
    }

    public AbstractC8291lh G() {
        return null;
    }

    public C10471yk0 G0() {
        return null;
    }

    public boolean G1() {
        return false;
    }

    public C8458mh H() {
        return null;
    }

    public C5800Qk0 H0() {
        return null;
    }

    public boolean H1() {
        return false;
    }

    public C8625nh I() {
        return null;
    }

    public C5686Ol0 I0() {
        return null;
    }

    public boolean I1() {
        return false;
    }

    public C9126qh J() {
        return null;
    }

    public C5918Sl0 J0() {
        return null;
    }

    public boolean J1() {
        return this instanceof C6558bE;
    }

    public C9960vh K() {
        return null;
    }

    public C5576Mo0 K0() {
        return null;
    }

    public boolean K1() {
        return this instanceof C6558bE;
    }

    public C7130ej L() {
        return null;
    }

    public C5634No0 L0() {
        return null;
    }

    public boolean L1() {
        return this instanceof C8391mE;
    }

    public C7297fj M() {
        return null;
    }

    public C5692Oo0 M0() {
        return null;
    }

    public boolean M1() {
        return false;
    }

    public C7631hj N() {
        return null;
    }

    public C5924So0 N0() {
        return null;
    }

    public boolean N1() {
        return false;
    }

    public C9820uq O() {
        return null;
    }

    public C8319lq0 O0() {
        return null;
    }

    public boolean O1() {
        return false;
    }

    public C6161Ws P() {
        return null;
    }

    public C5812Qq0 P0() {
        return null;
    }

    public boolean P1() {
        return false;
    }

    public C9662tt Q() {
        return null;
    }

    public AbstractC6489ar0 Q0() {
        return null;
    }

    public boolean Q1() {
        return false;
    }

    public InterfaceC7169ew R() {
        return null;
    }

    public C5698Or0 R0() {
        return null;
    }

    public boolean R1() {
        return false;
    }

    public AbstractC7670hw S() {
        return null;
    }

    public C8504mw0 S0() {
        return null;
    }

    public boolean S1() {
        return this instanceof C7572hK;
    }

    public InterfaceC10172ww T() {
        return null;
    }

    public C7343fy0 T0() {
        return null;
    }

    public boolean T1() {
        return false;
    }

    public C4960Bz U() {
        return null;
    }

    public final AbstractC10561zE U0() {
        ArrayList arrayList = this.f54321f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw0 = (C10340xw0) obj;
            c10340xw0.f53887d.remove(this);
            c10340xw0.f53888e = null;
        }
        Set set = this.f54323h;
        if (set != null) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                ((C10340xw0) it.next()).c(this);
            }
        }
        if (q() != null) {
            for (AbstractC10561zE abstractC10561zE : this.f54320e.g()) {
                C10340xw0 c10340xw02 = this.f54320e;
                boolean z10 = f54316j;
                if (!z10) {
                    abstractC10561zE.getClass();
                    if (!c10340xw02.z()) {
                        throw new AssertionError();
                    }
                }
                Set set2 = abstractC10561zE.f54323h;
                if (set2 != null) {
                    if (!z10 && !set2.contains(c10340xw02)) {
                        throw new AssertionError();
                    }
                    if (abstractC10561zE.f54323h.remove(c10340xw02)) {
                        c10340xw02.c(abstractC10561zE);
                    }
                } else if (!z10) {
                    throw new AssertionError();
                }
            }
        }
        return this;
    }

    public boolean U1() {
        return false;
    }

    public EB V() {
        return null;
    }

    public final Set V0() {
        Set set = this.f54323h;
        if (set != null) {
            return set;
        }
        int i10 = QC.f43505c;
        return C7119ef0.f47742j;
    }

    public boolean V1() {
        return this instanceof JT;
    }

    public C9389sD W() {
        return null;
    }

    public C10340xw0 W0() {
        return a(0);
    }

    public boolean W1() {
        return false;
    }

    public WD X() {
        return null;
    }

    public String X0() {
        return getClass().getSimpleName();
    }

    public boolean X1() {
        return false;
    }

    public C8391mE Y() {
        return null;
    }

    public AbstractC10561zE Y0() {
        return this.f54319d;
    }

    public boolean Y1() {
        return false;
    }

    public C9569tI Z() {
        return null;
    }

    public C10340xw0 Z0() {
        throw new C5417Jv0("Should conform to throwsOnNullInput.");
    }

    public final boolean Z1() {
        return (this instanceof C8769oZ) || a2();
    }

    public C9126qh a(long j10) {
        return null;
    }

    public abstract com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52);

    public abstract Object a(C10391yD c10391yD);

    public abstract void a(C5458Kn c5458Kn);

    public abstract void a(NT nt);

    public abstract void a(PS ps);

    public abstract void a(C7543h9 c7543h9);

    public abstract boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52);

    public NJ a0() {
        return null;
    }

    public AbstractC8291lh a1() {
        return null;
    }

    public boolean a2() {
        return false;
    }

    public A40 b(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        return null;
    }

    public abstract boolean b(AbstractC10561zE abstractC10561zE);

    public OJ b0() {
        return null;
    }

    public AbstractC10561zE b1() {
        return this.f54318c;
    }

    public boolean b2() {
        return false;
    }

    public C5686Ol0 c(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        return null;
    }

    public QJ c0() {
        return null;
    }

    public final boolean c1() {
        return a(new C9774ua1());
    }

    public boolean c2() {
        return false;
    }

    public C5918Sl0 d(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        return null;
    }

    public TJ d0() {
        return null;
    }

    public abstract boolean d1();

    public boolean d2() {
        return false;
    }

    public boolean e() {
        return false;
    }

    public VJ e0() {
        return null;
    }

    public boolean e1() {
        return this.f54320e != null;
    }

    public boolean e2() {
        return this instanceof C7957jh;
    }

    public WJ f0() {
        return null;
    }

    public final boolean f1() {
        return e1() && d().w();
    }

    public boolean f2() {
        return this instanceof C9870v60;
    }

    public XJ g0() {
        return null;
    }

    public boolean g1() {
        return this instanceof C7957jh;
    }

    public boolean g2() {
        return false;
    }

    @Override
    public final B60 getPosition() {
        if (f54316j || this.f54324i != null) {
            return this.f54324i;
        }
        throw new AssertionError();
    }

    public YJ h0() {
        return null;
    }

    public boolean h1() {
        return false;
    }

    public boolean h2() {
        return this instanceof C5576Mo0;
    }

    public boolean i() {
        return false;
    }

    public C7405gK i0() {
        return null;
    }

    public boolean i1() {
        return this instanceof C6797cj;
    }

    public boolean i2() {
        return this instanceof C5576Mo0;
    }

    public C7572hK j0() {
        return null;
    }

    public boolean j1() {
        return this instanceof C9523t2;
    }

    public boolean j2() {
        return this instanceof C5692Oo0;
    }

    @Override
    public final AbstractC10561zE k() {
        return this;
    }

    public C8405mK k0() {
        return null;
    }

    public boolean k1() {
        return false;
    }

    public boolean k2() {
        return false;
    }

    public AbstractC9408sL l0() {
        return null;
    }

    public boolean l1() {
        return false;
    }

    public boolean l2() {
        return false;
    }

    public C9225rE m() {
        return null;
    }

    public JT m0() {
        return null;
    }

    public boolean m1() {
        return false;
    }

    public boolean m2() {
        return false;
    }

    public VT n0() {
        return null;
    }

    public boolean n1() {
        return false;
    }

    public boolean n2() {
        return false;
    }

    @Override
    public boolean o() {
        return false;
    }

    public WX o0() {
        return null;
    }

    public boolean o1() {
        return false;
    }

    public boolean o2() {
        return this instanceof C7170ew0;
    }

    @Override
    public final boolean p() {
        return true;
    }

    public C6433aY p0() {
        return null;
    }

    public boolean p1() {
        return this instanceof C4;
    }

    public abstract int p2();

    @Override
    public C4515j0 q() {
        C10340xw0 c10340xw0 = this.f54320e;
        if (c10340xw0 == null) {
            return null;
        }
        return c10340xw0.s();
    }

    public C6600bY q0() {
        return null;
    }

    public final boolean q1() {
        return (this instanceof C4) && B().u2();
    }

    public abstract int q2();

    public C7433gY r0() {
        return null;
    }

    public final boolean r1() {
        return (this instanceof C4) && B().f39117k.d().d();
    }

    public abstract int r2();

    public C7268fZ s0() {
        return null;
    }

    public boolean s1() {
        return false;
    }

    public final EnumC5477Kw0 s2() {
        return this.f54320e.Y();
    }

    public C6855d2 t() {
        return null;
    }

    public C8769oZ t0() {
        return null;
    }

    public boolean t1() {
        return false;
    }

    public boolean t2() {
        return false;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(X0());
        for (int length = sb2.length(); length < 20; length++) {
            sb2.append(" ");
        }
        sb2.append(" ");
        C10340xw0 c10340xw0 = this.f54320e;
        if (c10340xw0 != null) {
            sb2.append((Object) c10340xw0);
            sb2.append(" <- ");
        }
        if (!this.f54321f.isEmpty()) {
            C10656zq0.a(sb2, this.f54321f, ", ", C10656zq0.a.f54552e);
        }
        return sb2.toString();
    }

    public C9523t2 u() {
        return null;
    }

    public C9103qZ u0() {
        return null;
    }

    public boolean u1() {
        return this instanceof C7957jh;
    }

    public C8024k3 v() {
        return null;
    }

    public C9269rZ v0() {
        return null;
    }

    public boolean v1() {
        return false;
    }

    public I3 w() {
        return null;
    }

    public C9603tZ w0() {
        return null;
    }

    public boolean w1() {
        return false;
    }

    public J3 x() {
        return null;
    }

    public C9937vZ x0() {
        return null;
    }

    public boolean x1() {
        return false;
    }

    public N3 y() {
        return null;
    }

    public C7019e10 y0() {
        return null;
    }

    public boolean y1() {
        return (this instanceof C8769oZ) || b2() || a2() || (this instanceof XJ) || (this instanceof C9278rc0);
    }

    public P3 z() {
        return null;
    }

    public C10022w10 z0() {
        return null;
    }

    public final boolean z1() {
        return c2() || y1();
    }

    public C9523t2 a(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        return null;
    }

    public void b(B60 b60) {
        if (!f54316j && this.f54324i != null) {
            throw new AssertionError();
        }
        this.f54324i = b60;
    }

    public C6558bE c() {
        return null;
    }

    public C10340xw0 d() {
        return this.f54320e;
    }

    public final void e(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        boolean z10 = f54316j;
        if (!z10 && !c10340xw0.z()) {
            throw new AssertionError();
        }
        if (!z10 && !c10340xw02.z()) {
            throw new AssertionError();
        }
        if (!z10 && c10340xw02.s() != c10340xw0.s()) {
            throw new AssertionError((Object) ("Replacing debug values with inconsistent locals " + ((Object) c10340xw0.s()) + " and " + ((Object) c10340xw02.s()) + ". This is likely a code transformation bug that has not taken local information into account"));
        }
        boolean remove = this.f54323h.remove(c10340xw0);
        if (!z10 && !remove) {
            throw new AssertionError();
        }
        if (remove && c10340xw02.z()) {
            c10340xw02.a(this);
        }
    }

    public void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
    }

    public boolean c(C10340xw0 c10340xw0) {
        return true;
    }

    public C10340xw0 d(C10340xw0 c10340xw0) {
        C10340xw0 d10 = d();
        this.f54320e = c10340xw0;
        if (c10340xw0 != null) {
            c10340xw0.f53886c = this;
        }
        return d10;
    }

    public void a(C11447u c11447u) {
    }

    public final void c(AbstractC10561zE abstractC10561zE) {
        Set<C10340xw0> set = this.f54323h;
        if (set == null) {
            return;
        }
        for (C10340xw0 c10340xw0 : set) {
            boolean remove = c10340xw0.f53895l.f53378b.remove(this);
            if (!C10340xw0.f53884o && !remove) {
                throw new AssertionError();
            }
            if (remove) {
                c10340xw0.a(abstractC10561zE);
            }
        }
        this.f54323h.clear();
    }

    public AbstractC10561zE(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        b(c10340xw02);
        d(c10340xw0);
    }

    public boolean a(com.android.tools.r8.graph.A2 a22) {
        return false;
    }

    public boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        return false;
    }

    public void b(C10340xw0 c10340xw0) {
        if (c10340xw0 != null) {
            this.f54321f.add(c10340xw0);
            if (!f54316j && !c10340xw0.F()) {
                throw new AssertionError();
            }
            if (c10340xw0.F()) {
                c10340xw0.f53887d.add(this);
                c10340xw0.f53888e = null;
            }
        }
    }

    public final void d(AbstractC10561zE abstractC10561zE) {
        this.f54317b.l().a(this, abstractC10561zE, null);
    }

    public boolean a(C4724u1 c4724u1) {
        return false;
    }

    public boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        return false;
    }

    public boolean a(C4798y c4798y, C10340xw0 c10340xw0) {
        return false;
    }

    public AbstractC10561zE(List list, C10340xw0 c10340xw0) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                b((C10340xw0) it.next());
            }
        }
        d(c10340xw0);
    }

    public boolean a(InterfaceC5381Je0 interfaceC5381Je0) {
        return false;
    }

    public boolean a(Set set) {
        return this instanceof C8391mE;
    }

    @Override
    public W5 b() {
        if (f54316j || this.f54317b != null) {
            return this.f54317b;
        }
        throw new AssertionError();
    }

    public static boolean a(C8146ko0 c8146ko0, C8146ko0 c8146ko02) {
        return c8146ko0.f49762p == c8146ko02.f49762p && EnumC5477Kw0.a(c8146ko0.f53896m) == EnumC5477Kw0.a(c8146ko02.f53896m);
    }

    public boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        return a(c4798y, h52, m12, c10394yE);
    }

    public void a(B60 b60) {
        boolean z10 = f54316j;
        if (!z10 && b60 == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f54324i == null) {
            throw new AssertionError();
        }
        this.f54324i = b60;
    }

    public AbstractC8849p b(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        if (a(c4798y, h52) && b(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a)) {
            return C8835ov0.f51388a;
        }
        return C5701Ot.f43063a;
    }

    public final C10340xw0 a(int i10) {
        return (C10340xw0) this.f54321f.get(i10);
    }

    public final boolean a(Predicate predicate) {
        ArrayList arrayList = this.f54321f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            if (predicate.test((C10340xw0) obj)) {
                return true;
            }
        }
        return false;
    }

    public F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        if (!f54316j && !e1()) {
            throw new AssertionError();
        }
        if (this.f54320e.G()) {
            C8091kU v10 = this.f54320e.v();
            G1 g12 = c4798y.f38427t;
            long b10 = v10.b();
            long a10 = v10.a();
            g12.getClass();
            return new C10189x10(b10, a10);
        }
        return C10504yv0.f54195b;
    }

    @Override
    public AbstractC8999pu0 a() {
        if (e1()) {
            return d().u();
        }
        return null;
    }

    public static void a(AbstractC10561zE abstractC10561zE) {
        C10340xw0 c10340xw0 = abstractC10561zE.f54320e;
        if (c10340xw0 != null) {
            c10340xw0.e();
        }
        abstractC10561zE.f54321f.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C10340xw0) obj).e();
            }
        });
        Set set = abstractC10561zE.f54323h;
        if (set != null) {
            set.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C10340xw0) obj).e();
                }
            });
            abstractC10561zE.f54323h = null;
        }
    }

    public final void a(C10340xw0 c10340xw0, C10340xw0 c10340xw02, Set set) {
        for (int i10 = 0; i10 < this.f54321f.size(); i10++) {
            if (c10340xw0 == this.f54321f.get(i10)) {
                this.f54321f.set(i10, c10340xw02);
                c10340xw02.f53887d.add(this);
                c10340xw02.f53888e = null;
            }
        }
        c10340xw0.f53887d.remove(this);
        c10340xw0.f53888e = null;
        if (set == null || !e1()) {
            return;
        }
        set.add(d());
    }

    public void a(int i10, C10340xw0 c10340xw0) {
        C10340xw0 c10340xw02 = (C10340xw0) this.f54321f.get(i10);
        this.f54321f.set(i10, c10340xw0);
        c10340xw0.f53887d.add(this);
        c10340xw0.f53888e = null;
        c10340xw02.f53887d.remove(this);
        c10340xw02.f53888e = null;
    }

    public boolean a(AbstractC10561zE abstractC10561zE, InterfaceC5381Je0 interfaceC5381Je0) {
        if (!f54316j && getClass() != abstractC10561zE.getClass()) {
            throw new AssertionError();
        }
        if (!b(abstractC10561zE)) {
            return false;
        }
        if (!o() && !interfaceC5381Je0.e().f50690i1) {
            return true;
        }
        B60 b60 = this.f54324i;
        B60 b602 = abstractC10561zE.f54324i;
        b60.getClass();
        return InterfaceC7166ev.a(b60, b602);
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x00c8, code lost:
    
        if (r0.Y() == r3.Y()) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0192, code lost:
    
        if (r3.Y() == r4.Y()) goto L107;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x019a A[LOOP:0: B:32:0x00e5->B:41:0x019a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0199 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(AbstractC10561zE abstractC10561zE, InterfaceC5381Je0 interfaceC5381Je0, EW ew) {
        boolean z10;
        boolean z11;
        if (abstractC10561zE.getClass() != getClass() || !a(abstractC10561zE, interfaceC5381Je0)) {
            return false;
        }
        if (O1()) {
            QJ c02 = c0();
            NJ a02 = abstractC10561zE.a0();
            if (c02.B2().f38298g.toString().equals(ConstantDescs.INIT_NAME) && c02.f54321f.get(0) != a02.f54321f.get(0)) {
                return false;
            }
        }
        C10340xw0 c10340xw0 = this.f54320e;
        if (c10340xw0 != null) {
            C10340xw0 c10340xw02 = abstractC10561zE.f54320e;
            if (c10340xw02 == null) {
                return false;
            }
            int i10 = this.f54322g;
            int i11 = abstractC10561zE.f54322g;
            boolean z12 = c10340xw0 instanceof C8146ko0;
            boolean z13 = c10340xw0 instanceof C8313lo0;
            if (z12 == (c10340xw02 instanceof C8146ko0) && z13 == (c10340xw02 instanceof C8313lo0)) {
                if (z12) {
                    z11 = a((C8146ko0) c10340xw0, (C8146ko0) c10340xw02);
                } else if (z13) {
                    C8146ko0[] c8146ko0Arr = ((C8313lo0) c10340xw0).f50108p;
                    C8146ko0[] c8146ko0Arr2 = ((C8313lo0) c10340xw02).f50108p;
                    if (c8146ko0Arr.length == c8146ko0Arr2.length) {
                        for (int i12 = 0; i12 < c8146ko0Arr.length; i12++) {
                            if (a(c8146ko0Arr[i12], c8146ko0Arr2[i12])) {
                            }
                        }
                        z11 = true;
                    }
                } else if (c10340xw0.T() == c10340xw02.T()) {
                    if (c10340xw0.T()) {
                    }
                }
                if (!z11) {
                    return false;
                }
            }
            z11 = false;
            if (!z11) {
            }
        } else if (abstractC10561zE.f54320e != null) {
            return false;
        }
        if (this.f54321f.size() != abstractC10561zE.f54321f.size()) {
            return false;
        }
        for (int i13 = 0; i13 < this.f54321f.size(); i13++) {
            C10340xw0 c10340xw03 = (C10340xw0) this.f54321f.get(i13);
            C10340xw0 c10340xw04 = (C10340xw0) abstractC10561zE.f54321f.get(i13);
            int i14 = this.f54322g;
            int i15 = abstractC10561zE.f54322g;
            boolean z14 = c10340xw03 instanceof C8146ko0;
            boolean z15 = c10340xw03 instanceof C8313lo0;
            if (z14 == (c10340xw04 instanceof C8146ko0) && z15 == (c10340xw04 instanceof C8313lo0)) {
                if (z14) {
                    z10 = a((C8146ko0) c10340xw03, (C8146ko0) c10340xw04);
                } else if (z15) {
                    C8146ko0[] c8146ko0Arr3 = ((C8313lo0) c10340xw03).f50108p;
                    C8146ko0[] c8146ko0Arr4 = ((C8313lo0) c10340xw04).f50108p;
                    if (c8146ko0Arr3.length == c8146ko0Arr4.length) {
                        for (int i16 = 0; i16 < c8146ko0Arr3.length; i16++) {
                            if (a(c8146ko0Arr3[i16], c8146ko0Arr4[i16])) {
                            }
                        }
                        z10 = true;
                    }
                } else if (c(c10340xw03) == abstractC10561zE.c(c10340xw04)) {
                    if (!c(c10340xw03)) {
                    }
                }
                if (z10) {
                    return false;
                }
            }
            z10 = false;
            if (z10) {
            }
        }
        if (ew.b()) {
            C5458Kn c5458Kn = new C5458Kn(null, C9875v8.b(), interfaceC5381Je0, interfaceC5381Je0.e(), ew);
            a(c5458Kn);
            boolean z16 = C5458Kn.f41761r;
            if (!z16 && c5458Kn.f41773l.length != 1) {
                throw new AssertionError();
            }
            AbstractC5168Fn abstractC5168Fn = c5458Kn.f41773l[0];
            abstractC10561zE.a(c5458Kn);
            if (!z16 && c5458Kn.f41773l.length != 1) {
                throw new AssertionError();
            }
            if (!abstractC5168Fn.a(c5458Kn.f41773l[0], c5458Kn)) {
                return false;
            }
        }
        return true;
    }

    public boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        return o();
    }

    public com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        if (b(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
            return com.android.tools.r8.ir.optimize.E.f54734b;
        }
        return com.android.tools.r8.ir.optimize.E.f54733a;
    }

    public com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        C10340xw0 c10340xw0;
        if (f54316j || (c10340xw0 = this.f54320e) == null || !c10340xw0.u().y()) {
            throw new C5417Jv0("Instruction without object outValue cannot compute verification type");
        }
        throw new AssertionError();
    }

    public AbstractC8999pu0 a(C4798y c4798y) {
        if (!f54316j && this.f54320e != null) {
            throw new AssertionError();
        }
        throw new C6501av0("Implement type lattice evaluation for: " + X0());
    }

    public final void a(boolean z10) {
        boolean z11 = f54316j;
        if (!z11 && this.f54324i == null) {
            throw new AssertionError((Object) toString());
        }
        if (!z11 && z10 && getPosition().o()) {
            throw new AssertionError((Object) toString());
        }
        if (z11 || !o() || x1() || (this instanceof C9820uq) || !getPosition().o()) {
            return;
        }
        B60 position = getPosition();
        position.getClass();
        if (position != B60.c.f38822h) {
            throw new AssertionError((Object) toString());
        }
    }
}
