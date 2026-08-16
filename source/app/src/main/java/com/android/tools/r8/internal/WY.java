package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.BitSet;
import java.util.Set;
import java.util.function.Consumer;

public class WY extends TW {

    public static final int f45445w;

    public static final boolean f45446x = true;

    public F8 f45447b;

    public Set f45448c;

    public int f45449d;

    public InterfaceC6078Vf f45450e;

    public F1 f45451f;

    public InterfaceC6297Zc f45452g;

    public boolean f45453h;

    public AbstractC4892Au f45454i;

    public AbstractC10330xt f45455j;

    public AbstractC9530t40 f45456k;

    public S7 f45457l;

    public AbstractC7391gE f45458m;

    public BitSet f45459n;

    public BitSet f45460o;

    public AbstractC6205Xl0 f45461p;

    public AbstractC6205Xl0 f45462q;

    public int f45463r;

    public BitSet f45464s;

    public BitSet f45465t;

    public int f45466u;

    public int f45467v;

    static {
        C5160Fj c5160Fj = C5160Fj.f40293b;
        f45445w = (C8704o7.a(false) * 256) | C8704o7.a(false) | (C8704o7.a(false) * 2) | (C8704o7.a(false) * 4) | (C8704o7.a(true) * 8) | (C8704o7.a(false) * 16) | (C8704o7.a(false) * 32) | (C8704o7.a(false) * 128);
    }

    public WY() {
        this.f45447b = C9994vs0.f53360a;
        this.f45448c = C5160Fj.f40294c;
        this.f45449d = -1;
        int i10 = F1.f40064a;
        C10504yv0 c10504yv0 = C10504yv0.f54195b;
        this.f45450e = c10504yv0;
        this.f45451f = c10504yv0;
        this.f45452g = C7355g2.f48169a;
        this.f45453h = false;
        this.f45454i = C8000jv0.f49417a;
        this.f45455j = AbstractC10330xt.m();
        this.f45467v = 3;
        this.f45456k = AbstractC9530t40.f52519c;
        this.f45457l = null;
        this.f45458m = C5875Rt.f44015a;
        this.f45459n = null;
        this.f45460o = null;
        C8602nZ c8602nZ = C8602nZ.f50980b;
        this.f45461p = c8602nZ;
        this.f45462q = c8602nZ;
        this.f45463r = 0;
        this.f45464s = null;
        this.f45465t = null;
        this.f45466u = f45445w;
    }

    @Override
    public final boolean A() {
        return this.f45467v == 1;
    }

    @Override
    public final AbstractC9530t40 B() {
        return this.f45456k;
    }

    @Override
    public final boolean C() {
        return a(8);
    }

    @Override
    public final boolean D() {
        return a(32);
    }

    @Override
    public final boolean E() {
        return a(256);
    }

    @Override
    public final boolean F() {
        return a(16);
    }

    @Override
    public final boolean G() {
        return this.f45449d != -1;
    }

    @Override
    public final boolean H() {
        return this.f45467v == 4;
    }

    public void I() {
        int i10;
        if (!f45446x && (i10 = this.f45467v) != 3 && i10 != 2) {
            throw new AssertionError();
        }
        this.f45467v = 2;
    }

    public final void J() {
        this.f45451f = C10504yv0.f54195b;
    }

    public final void K() {
        this.f45457l = null;
    }

    public final void L() {
        this.f45466u &= -3;
    }

    public final void M() {
        this.f45452g = C7355g2.f48169a;
    }

    public final WY N() {
        return a(AbstractC10330xt.m());
    }

    public final void O() {
        this.f45454i = C8000jv0.f49417a;
    }

    public final void P() {
        this.f45467v = 3;
    }

    public final void Q() {
        this.f45448c = C5160Fj.f40294c;
    }

    public final void R() {
        this.f45466u &= -129;
    }

    public final void S() {
        this.f45466u &= -5;
    }

    public final void T() {
        this.f45458m = C5875Rt.f44015a;
    }

    public final void U() {
        this.f45466u |= 8;
    }

    public final void V() {
        this.f45466u &= -33;
    }

    public final void W() {
        this.f45460o = null;
    }

    public final void X() {
        this.f45459n = null;
    }

    public final void Y() {
        this.f45461p = C8602nZ.f50980b;
    }

    public final void Z() {
        this.f45466u &= -17;
    }

    @Override
    public final KV a() {
        return this;
    }

    public final void a0() {
        this.f45449d = -1;
    }

    public final void b(int i10) {
        int i11;
        boolean z10 = f45446x;
        if (!z10 && i10 < 0) {
            throw new AssertionError();
        }
        if (!z10 && (i11 = this.f45449d) != -1 && i11 != i10) {
            throw new AssertionError();
        }
        this.f45449d = i10;
    }

    public final void b0() {
        this.f45462q = C8602nZ.f50980b;
    }

    @Override
    public final WY c() {
        return this;
    }

    public final void c0() {
        this.f45465t = null;
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final boolean e() {
        return a(1);
    }

    @Override
    public final boolean f() {
        return a(2);
    }

    @Override
    public final boolean g() {
        return this.f45467v == 2;
    }

    @Override
    public final r h() {
        return this.f45450e;
    }

    @Override
    public final F1 i() {
        return this.f45451f;
    }

    @Override
    public final F8 j() {
        return this.f45447b;
    }

    @Override
    public final S7 k() {
        return this.f45457l;
    }

    @Override
    public final InterfaceC6297Zc l() {
        return this.f45452g;
    }

    @Override
    public final AbstractC7224fE m() {
        return this.f45458m.b();
    }

    @Override
    public final AbstractC10330xt n() {
        return this.f45455j;
    }

    @Override
    public final AbstractC4892Au o() {
        return this.f45454i;
    }

    @Override
    public final Set p() {
        return this.f45448c;
    }

    @Override
    public final int q() {
        return this.f45463r;
    }

    @Override
    public final BitSet r() {
        return this.f45460o;
    }

    @Override
    public final BitSet s() {
        return this.f45459n;
    }

    @Override
    public final int t() {
        return this.f45449d;
    }

    @Override
    public final AbstractC6205Xl0 u() {
        return this.f45462q;
    }

    @Override
    public final BitSet v() {
        return this.f45465t;
    }

    @Override
    public final boolean w() {
        return a(4);
    }

    @Override
    public final boolean y() {
        return this.f45453h;
    }

    @Override
    public final boolean z() {
        return a(128);
    }

    public final void a(boolean z10, Consumer consumer, Consumer consumer2) {
        if (z10) {
            consumer.accept(this);
        } else {
            consumer2.accept(this);
        }
    }

    public final WY a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, Set set) {
        AbstractC10330xt a10 = this.f45455j.a(c4798y, abstractC5308Hz, set);
        if (a10.f() && a10.a().n().x()) {
            boolean z10 = f45446x;
            if (!z10) {
                AbstractC10330xt abstractC10330xt = this.f45455j;
                if (!z10 && !abstractC10330xt.h()) {
                    throw new AssertionError();
                }
                AbstractC8999pu0 n10 = abstractC10330xt.a().n();
                if (!z10 && !n10.s()) {
                    throw new AssertionError();
                }
                C6949de b10 = n10.b();
                if (!z10 && !c4798y.w()) {
                    throw new AssertionError();
                }
                if (!z10 && !c4798y.I().b(b10.E())) {
                    throw new AssertionError();
                }
            }
            return a(AbstractC10330xt.m());
        }
        return a(a10);
    }

    public final boolean a(int i10) {
        return (i10 & this.f45466u) != 0;
    }

    public final void a(C4798y c4798y, com.android.tools.r8.graph.S5 s52) {
        WY a10;
        F8 f82 = this.f45447b;
        f82.getClass();
        if (f82 instanceof C7954jg) {
            C7954jg a11 = this.f45447b.a();
            F8 f83 = a11;
            if (!s52.f36799a.c()) {
                f83 = a11.a(s52.f36799a);
            }
            this.f45447b = f83;
        }
        S7 s72 = this.f45457l;
        BitSet bitSet = null;
        if (s72 != null) {
            if (!s52.f36799a.f37623b.b()) {
                s72 = null;
            }
            this.f45457l = s72;
        }
        InterfaceC6297Zc interfaceC6297Zc = this.f45452g;
        if (!s52.f36799a.f37623b.b()) {
            interfaceC6297Zc = interfaceC6297Zc.a(s52.f36799a.f37623b);
        }
        this.f45452g = interfaceC6297Zc;
        if (this.f45455j.l()) {
            a10 = this;
        } else {
            AbstractC10330xt abstractC10330xt = this.f45455j;
            if (s52.f36799a.b()) {
                com.android.tools.r8.graph.proto.k kVar = s52.f36799a.f37624c;
                if (kVar.e().P0() || kVar.e().S0()) {
                    abstractC10330xt = AbstractC10330xt.m();
                }
            }
            a10 = a(abstractC10330xt);
        }
        if (!a10.f45451f.isUnknown()) {
            F1 f12 = a10.f45451f;
            if (s52.f36799a.b() && s52.f36799a.f37624c.e().P0() && f12.d0()) {
                f12 = c4798y.f38427t.a(f12.J().j0());
            }
            a10.f45451f = f12;
        }
        AbstractC4892Au abstractC4892Au = a10.f45454i;
        if (!s52.f36799a.f37623b.b()) {
            abstractC4892Au = abstractC4892Au.a(s52.f36799a.f37623b);
        }
        a10.f45454i = abstractC4892Au;
        AbstractC7391gE abstractC7391gE = a10.f45458m;
        if (!s52.f36799a.f37623b.b()) {
            abstractC7391gE = abstractC7391gE.a(c4798y, s52.f36799a.f37623b);
        }
        a10.f45458m = abstractC7391gE;
        a10.f45460o = s52.a(a10.f45460o);
        a10.f45459n = s52.a(a10.f45459n);
        int i10 = a10.f45449d;
        if (!s52.f36799a.f37623b.b() && i10 >= 0) {
            i10 = s52.f36799a.f37623b.a(i10).c() ? -1 : s52.f36799a.f37623b.b(i10);
        }
        a10.f45449d = i10;
        BitSet a12 = s52.a(a10.f45465t);
        if (a12 != null && !a12.isEmpty()) {
            a10.f45464s = a12;
        } else {
            a10.f45464s = null;
        }
        AbstractC6205Xl0 abstractC6205Xl0 = a10.f45461p;
        C6807cm0 c6807cm0 = c4798y.f38432y;
        if (!s52.f36799a.f37623b.b()) {
            abstractC6205Xl0 = abstractC6205Xl0.a(c4798y, s52.f36799a.f37623b, c6807cm0);
        }
        a10.f45461p = abstractC6205Xl0;
        AbstractC6205Xl0 abstractC6205Xl02 = a10.f45462q;
        C6807cm0 c6807cm02 = c4798y.f38432y;
        if (!s52.f36799a.f37623b.b()) {
            abstractC6205Xl02 = abstractC6205Xl02.a(c4798y, s52.f36799a.f37623b, c6807cm02);
        }
        a10.f45462q = abstractC6205Xl02;
        BitSet a13 = s52.a(a10.f45465t);
        if (a13 != null && !a13.isEmpty()) {
            bitSet = a13;
        }
        a10.f45465t = bitSet;
    }

    public WY(WY wy) {
        this.f45447b = C9994vs0.f53360a;
        this.f45448c = C5160Fj.f40294c;
        this.f45449d = -1;
        int i10 = F1.f40064a;
        C10504yv0 c10504yv0 = C10504yv0.f54195b;
        this.f45450e = c10504yv0;
        this.f45451f = c10504yv0;
        this.f45452g = C7355g2.f48169a;
        this.f45453h = false;
        this.f45454i = C8000jv0.f49417a;
        this.f45455j = AbstractC10330xt.m();
        this.f45467v = 3;
        this.f45456k = AbstractC9530t40.f52519c;
        this.f45457l = null;
        this.f45458m = C5875Rt.f44015a;
        this.f45459n = null;
        this.f45460o = null;
        C8602nZ c8602nZ = C8602nZ.f50980b;
        this.f45461p = c8602nZ;
        this.f45462q = c8602nZ;
        this.f45463r = 0;
        this.f45464s = null;
        this.f45465t = null;
        this.f45466u = f45445w;
        this.f45450e = wy.f45450e;
        this.f45447b = wy.f45447b;
        this.f45466u = wy.f45466u;
        this.f45448c = wy.f45448c;
        this.f45449d = wy.f45449d;
        this.f45451f = wy.f45451f;
        a(wy.f45455j);
        this.f45467v = wy.f45467v;
        this.f45461p = wy.f45461p;
        this.f45462q = wy.f45462q;
        this.f45457l = wy.f45457l;
        this.f45458m = wy.f45458m;
        this.f45459n = wy.f45459n;
        this.f45460o = wy.f45460o;
        this.f45452g = wy.f45452g;
        this.f45454i = wy.f45454i;
        this.f45463r = wy.f45463r;
    }

    public final WY a(AbstractC4892Au abstractC4892Au) {
        if (!f45446x) {
            AbstractC4892Au abstractC4892Au2 = this.f45454i;
            abstractC4892Au2.getClass();
            if (abstractC4892Au2 instanceof C9945vc) {
                abstractC4892Au.getClass();
                if (!(abstractC4892Au instanceof C9945vc)) {
                    throw new AssertionError();
                }
            }
        }
        this.f45454i = abstractC4892Au;
        return this;
    }

    @Override
    public final AbstractC7224fE a(QJ qj2) {
        return this.f45458m.a();
    }

    public final void a(BitSet bitSet) {
        boolean z10 = f45446x;
        if (!z10) {
            x();
        }
        if (!z10 && x()) {
            BitSet bitSet2 = this.f45465t;
            if (!O6.f42779a) {
                BitSet bitSet3 = (BitSet) bitSet2.clone();
                bitSet3.or(bitSet);
                if (!bitSet.equals(bitSet3)) {
                    throw new AssertionError();
                }
            }
        }
        if (bitSet.isEmpty()) {
            bitSet = null;
        }
        this.f45465t = bitSet;
    }

    @Override
    public final boolean a(VJ vj2) {
        return a(8) && !this.f45461p.a(vj2);
    }

    public final void a(F1 f12, C4516j1 c4516j1) {
        if (!f45446x) {
            f12.getClass();
            if ((f12 instanceof C5283Hm0) && !c4516j1.Y0().Q0()) {
                throw new AssertionError();
            }
        }
        a(f12);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        if (r4.f45451f.N().f40306c.a(r5.N().f40306c) != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(F1 f12) {
        if (!f45446x && this.f45451f.r() && !this.f45451f.equals(f12)) {
            F1 f13 = this.f45451f;
            f13.getClass();
            if (f13 instanceof C5630Nm0) {
                f12.getClass();
                if (f12 instanceof C5572Mm0) {
                }
            }
            throw new AssertionError((Object) ("return single value changed from " + ((Object) this.f45451f) + " to " + ((Object) f12)));
        }
        this.f45451f = f12;
    }

    public final void a(C4798y c4798y, C4516j1 c4516j1, AbstractC10330xt abstractC10330xt) {
        AbstractC8999pu0 b10 = c4516j1.Y0().b((C4798y<?>) c4798y);
        if (!f45446x) {
            a(c4798y, abstractC10330xt, b10);
        }
        a(abstractC10330xt);
    }

    public final WY a(AbstractC10330xt abstractC10330xt) {
        if (!f45446x && abstractC10330xt.f() && abstractC10330xt.a().n().x()) {
            throw new AssertionError();
        }
        this.f45455j = abstractC10330xt;
        return this;
    }

    public final void a(C4798y c4798y, AbstractC10330xt abstractC10330xt, AbstractC8999pu0 abstractC8999pu0) {
        if (c4798y.m()) {
            AbstractC8999pu0 a10 = this.f45455j.a(abstractC8999pu0);
            AbstractC8999pu0 a11 = abstractC10330xt.a(abstractC8999pu0);
            if (f45446x || a11.b(a10, c4798y)) {
                return;
            }
            throw new AssertionError((Object) ("upper bound type changed from " + ((Object) a10) + " to " + ((Object) a11)));
        }
    }
}
