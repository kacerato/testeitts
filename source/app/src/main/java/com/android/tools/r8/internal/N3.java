package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Arrays;
import java.util.Set;
import java.util.function.Consumer;

public class N3 extends J3 {

    public static final boolean f42486l = true;

    public YV f42487k;

    public N3(YV yv, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(Arrays.asList(c10340xw02, c10340xw03), c10340xw0);
        this.f42487k = yv;
    }

    @Override
    public final C10340xw0 Z0() {
        return u2();
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.n1() && abstractC10561zE.y().f42487k == this.f42487k;
    }

    @Override
    public final boolean d1() {
        return false;
    }

    @Override
    public final YV f() {
        return this.f42487k;
    }

    @Override
    public final boolean n1() {
        return true;
    }

    @Override
    public final int p2() {
        return 255;
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 6;
    }

    @Override
    public final boolean t2() {
        return true;
    }

    @Override
    public final J3 w2() {
        return new N3(YV.f45999f, d(), u2(), (C10340xw0) this.f54321f.get(1));
    }

    @Override
    public final N3 y() {
        return this;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (!u2().j() && ((C10340xw0) this.f54321f.get(1)).M()) {
            F1 a10 = u2().i().a(c4798y, h52, M1.f42128a);
            if (!a10.W()) {
                return true;
            }
            int T10 = a10.T();
            int u22 = ((C10340xw0) this.f54321f.get(1)).n().J().u2();
            if (T10 > 0 && u22 >= 0 && T10 > u22) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final boolean a(AbstractC10561zE abstractC10561zE, InterfaceC5381Je0 interfaceC5381Je0, EW ew) {
        return false;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c6809cn;
        int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        int b11 = c5458Kn.f41765d.b(u2(), this.f54322g);
        int b12 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(1), this.f54322g);
        switch (this.f42487k) {
            case f45995b:
                c6809cn = new C6809cn(b10, b11, b12);
                break;
            case f45996c:
                W3 a10 = u2().u().a();
                if (a10 != null && a10.F() == AbstractC8999pu0.e()) {
                    c6809cn = new C6320Zm(b10, b11, b12);
                    break;
                } else {
                    if (!f42486l && !u2().u().B().e() && a10.F() != AbstractC8999pu0.g()) {
                        throw new AssertionError();
                    }
                    c6809cn = new C6476an(b10, b11, b12);
                    break;
                }
                break;
            case f45997d:
                c6809cn = new C6643bn(b10, b11, b12);
                break;
            case f45998e:
                c6809cn = new C6976dn(b10, b11, b12);
                break;
            case f45999f:
            case f46000g:
                c6809cn = new C6263Ym(b10, b11, b12);
                break;
            case f46001h:
            case f46002i:
                if (!f42486l) {
                    C8570nJ c8570nJ = c5458Kn.f41766e;
                    c8570nJ.getClass();
                    if (!c8570nJ.c(C2.P) && b10 == b11) {
                        throw new AssertionError();
                    }
                }
                c6809cn = new C7142en(b10, b11, b12);
                break;
            case f46003j:
            case f46004k:
                throw new C5417Jv0("Unexpected imprecise type: " + ((Object) this.f42487k));
            default:
                throw new C5417Jv0("Unexpected type " + ((Object) this.f42487k));
        }
        c5458Kn.a(this, c6809cn);
    }

    @Override
    public final void a(PS ps) {
        ps.a(this.f42487k, u2(), (C10340xw0) this.f54321f.get(1));
    }

    @Override
    public final boolean a(C4798y c4798y, C10340xw0 c10340xw0) {
        boolean z10 = f42486l;
        if (!z10 && (c10340xw0 == null || !c10340xw0.u().y())) {
            throw new AssertionError();
        }
        if (z10 || this.f54320e != null) {
            return this.f54320e.u().y();
        }
        throw new AssertionError();
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        if (!f42486l && !this.f54320e.u().y()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 a10 = c5473Ku0.a(u2());
        return a10 == C4724u1.f37808E6 ? a10 : a10.a(1, c4798y.b());
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new X8(this.f42487k), this);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        AbstractC8999pu0 G10;
        W3 a10 = u2().u().r() ? u2().u().a() : null;
        switch (this.f42487k) {
            case f45995b:
                if (a10 == null) {
                    G10 = AbstractC8999pu0.m();
                } else {
                    G10 = a10.G();
                }
                if (f42486l || G10.y()) {
                    return G10;
                }
                throw new AssertionError();
            case f45996c:
            case f45997d:
            case f45998e:
            case f45999f:
                if (!f42486l && a10 != null) {
                    AbstractC8999pu0 G11 = a10.G();
                    G11.getClass();
                    if (!(G11 instanceof C9736uI)) {
                        throw new AssertionError();
                    }
                }
                return AbstractC8999pu0.k();
            case f46000g:
                if (!f42486l && a10 != null) {
                    AbstractC8999pu0 G12 = a10.G();
                    G12.getClass();
                    if (!(G12 instanceof C5188Fx)) {
                        throw new AssertionError();
                    }
                }
                return AbstractC8999pu0.j();
            case f46001h:
                if (!f42486l && a10 != null) {
                    AbstractC8999pu0 G13 = a10.G();
                    G13.getClass();
                    if (!(G13 instanceof C9593tU)) {
                        throw new AssertionError();
                    }
                }
                return AbstractC8999pu0.l();
            case f46002i:
                if (!f42486l && a10 != null) {
                    AbstractC8999pu0 G14 = a10.G();
                    G14.getClass();
                    if (!(G14 instanceof C8160kt)) {
                        throw new AssertionError();
                    }
                }
                return AbstractC8999pu0.i();
            case f46003j:
                if (!f42486l && a10 != null && !a10.G().z()) {
                    throw new AssertionError();
                }
                return a(this.f54320e, EnumC5592Mw0.f42464e);
            case f46004k:
                if (!f42486l && a10 != null && !a10.G().A()) {
                    throw new AssertionError();
                }
                return a(this.f54320e, EnumC5592Mw0.f42468i);
            default:
                throw new C5417Jv0("Unexpected member type: " + ((Object) this.f42487k));
        }
    }

    public static AbstractC8999pu0 a(C10340xw0 c10340xw0, EnumC5592Mw0 enumC5592Mw0) {
        AbstractC8999pu0 a10 = c10340xw0.a(enumC5592Mw0);
        if (a10 != null) {
            return a10;
        }
        throw new C5325If("Failure to constrain value: " + ((Object) c10340xw0) + " by constraint: " + ((Object) enumC5592Mw0));
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        return u2() == c10340xw0;
    }

    @Override
    public final boolean a(Set set) {
        return u2().u().r() && u2().u().a().F() == AbstractC8999pu0.e();
    }

    @Override
    public final void a(C8832ou0 c8832ou0) {
        c8832ou0.a(this.f42487k, this.f54320e, u2(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                N3.this.a((YV) obj);
            }
        });
    }

    public final void a(YV yv) {
        this.f42487k = yv;
    }
}
