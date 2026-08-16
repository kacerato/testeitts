package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4481h3;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4577m5;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.List;
import java.util.function.Consumer;

public abstract class VJ extends NJ {

    public static final boolean f45017m = true;

    public final com.android.tools.r8.graph.A2 f45018l;

    public VJ(com.android.tools.r8.graph.A2 a22, C10340xw0 c10340xw0, List list) {
        super(list, c10340xw0);
        this.f45018l = a22;
    }

    public static void a(com.android.tools.r8.graph.C4 c42) {
    }

    public abstract boolean A2();

    public com.android.tools.r8.graph.A2 B2() {
        return this.f45018l;
    }

    @Override
    public final boolean P1() {
        return true;
    }

    public abstract com.android.tools.r8.ir.optimize.P a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.ir.optimize.H h10, C5721Pc c5721Pc, AbstractC5015Cx0 abstractC5015Cx0);

    @Override
    public boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.P1() && this.f45018l == abstractC10561zE.e0().B2();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0074, code lost:
    
        if (((com.android.tools.r8.shaking.C11245i) r7.f()).c(r2.f36245e, r0.f36245e) == false) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractC8374m80 c(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H2 h22;
        com.android.tools.r8.graph.H4 a10;
        if (!B2().f38297f.I0()) {
            return null;
        }
        if (!(this instanceof TJ) && !T1()) {
            com.android.tools.r8.graph.H5 d10 = d(c4798y, h52);
            if (d10 != null) {
                return AbstractC8374m80.a(d10);
            }
            return null;
        }
        WJ f02 = f0();
        com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(c4798y.g(C8331lu0.a(f02.C2().a(c4798y), f02.B2(), c4798y)));
        C10340xw0 C22 = f0().C2();
        C22.getClass();
        C6949de a12 = C22.a(c4798y, (AbstractC8999pu0) null, C8854p10.h());
        if (a12 != null) {
            h22 = com.android.tools.r8.graph.H2.a(c4798y.g(a12.E()));
            if (a11 != null) {
                if (h22 != null) {
                }
            }
            com.android.tools.r8.graph.Z4 b10 = ((C11245i) c4798y.f()).b(this.f45018l, A2());
            a10 = a11 == null ? b10.a(h52.getHolder(), (C4798y<C11245i>) c4798y, a11, h22) : b10.b(h52.getHolder(), (C4798y<C11245i>) c4798y);
            if (!a10.c()) {
                return null;
            }
            final AbstractC8374m80 c10 = AbstractC8374m80.c();
            a10.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    VJ.a(AbstractC8374m80.this, (com.android.tools.r8.graph.D4) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    VJ.a((com.android.tools.r8.graph.C4) obj);
                }
            });
            return c10;
        }
        h22 = null;
        com.android.tools.r8.graph.Z4 b102 = ((C11245i) c4798y.f()).b(this.f45018l, A2());
        if (a11 == null) {
        }
        if (!a10.c()) {
        }
    }

    public final com.android.tools.r8.graph.H5 d(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H0 e10 = e(c4798y, h52);
        boolean z10 = com.android.tools.r8.graph.H0.f36361e;
        if (e10 != null) {
            return e10.H();
        }
        return null;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    public final com.android.tools.r8.graph.H0 e(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.Z4 f10 = f(c4798y, h52);
        if (!f10.w()) {
            return null;
        }
        AbstractC4481h3 a10 = f10.o().a(c4798y, this, h52);
        if (a10 instanceof com.android.tools.r8.graph.T5) {
            return a10.a().f36831b;
        }
        return null;
    }

    @Override
    public final VJ e0() {
        return this;
    }

    public final com.android.tools.r8.graph.Z4 f(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H0 b10;
        com.android.tools.r8.graph.H2 holder;
        C4516j1 b11;
        if (c4798y.f().h()) {
            return b(c4798y.L());
        }
        if (this.f45018l.s0().a(h52.p()) && (b11 = (holder = h52.getHolder()).b(this.f45018l)) != null) {
            return com.android.tools.r8.graph.Z4.a(holder, holder, b11);
        }
        if (!c4798y.f38387B.f45706c.contains(this.f45018l.s0()) || (b10 = c4798y.b(this.f45018l)) == null) {
            boolean z10 = com.android.tools.r8.graph.Z4.f37016a;
            return C4577m5.f37483b;
        }
        com.android.tools.r8.graph.E0 holder2 = b10.getHolder();
        return com.android.tools.r8.graph.Z4.a(holder2, holder2, b10.d());
    }

    @Override
    public final String toString() {
        return super.toString() + "; method: " + this.f45018l.j0();
    }

    @Override
    public com.android.tools.r8.graph.M2 v2() {
        return this.f45018l.f36127i.f36440e;
    }

    public final C10340xw0 z2() {
        return b(C8704o7.a(Q1()));
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    public final com.android.tools.r8.graph.Z4 b(C4798y c4798y) {
        return ((C4514j) c4798y.f()).a(this.f45018l, A2());
    }

    public static VJ a(EnumC8071kK enumC8071kK, com.android.tools.r8.graph.A2 a22, C10340xw0 c10340xw0, List list, boolean z10) {
        int ordinal = enumC8071kK.ordinal();
        if (ordinal == 0) {
            return new QJ(a22, c10340xw0, list, z10);
        }
        if (ordinal == 1) {
            return new TJ(a22, c10340xw0, list);
        }
        if (ordinal == 2) {
            return new C7405gK(a22, c10340xw0, list, z10);
        }
        if (ordinal == 3) {
            return new C7572hK(a22, c10340xw0, list, z10);
        }
        if (ordinal == 4) {
            if (f45017m || !z10) {
                return new C8405mK(a22, c10340xw0, list);
            }
            throw new AssertionError();
        }
        throw new C5417Jv0("Unexpected invoke type: " + ((Object) enumC8071kK));
    }

    @Override
    public AbstractC8849p b(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return AbstractC6421aS.a(c4798y, this);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        return B2().a(a22);
    }

    public static void a(AbstractC8374m80 abstractC8374m80, com.android.tools.r8.graph.D4 d42) {
        com.android.tools.r8.graph.H0 l10 = d42.l();
        l10.getClass();
        if (l10 instanceof com.android.tools.r8.graph.H5) {
            abstractC8374m80.add((AbstractC8374m80) l10.H());
        }
    }

    @Override
    public final boolean a(AbstractC10561zE abstractC10561zE, InterfaceC5381Je0 interfaceC5381Je0, EW ew) {
        if (!super.a(abstractC10561zE, interfaceC5381Je0, ew)) {
            return false;
        }
        interfaceC5381Je0.e().getClass();
        VJ e02 = abstractC10561zE.e0();
        for (int i10 = 0; i10 < this.f54321f.size(); i10++) {
            C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(i10);
            if (c10340xw0.u().r() && c10340xw0 != e02.f54321f.get(i10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        if (v2().S0()) {
            return;
        }
        nt.a(v2(), this);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return v2();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        AbstractC7455gg abstractC7455gg;
        if (!f45017m && !e1()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H0 e10 = e(c4798y, h52);
        if (e10 == null) {
            return C10504yv0.f54195b;
        }
        C4516j1 d10 = e10.d();
        d10.L0();
        F1 i10 = d10.f37320m.i();
        com.android.tools.r8.graph.M2 p10 = e10.p();
        C4724u1 b10 = c4798y.b();
        switch (p10.v0().f36561e) {
            case 16:
                if (p10.a(b10.f37975W1)) {
                    abstractC7455gg = new C6455ag(c4798y);
                    break;
                } else {
                    if (p10.a(b10.f38012b2)) {
                        abstractC7455gg = new C7288fg(c4798y);
                        break;
                    }
                    abstractC7455gg = null;
                    break;
                }
            case 17:
                if (p10.a(b10.f37996Z1)) {
                    abstractC7455gg = new C6955dg(c4798y);
                    break;
                } else {
                    if (p10.a(b10.f38020c2)) {
                        abstractC7455gg = new C7622hg(c4798y);
                        break;
                    }
                    abstractC7455gg = null;
                    break;
                }
            case 18:
                if (p10.a(b10.f37989Y1)) {
                    abstractC7455gg = new C6788cg(c4798y);
                    break;
                }
                abstractC7455gg = null;
                break;
            case 19:
                if (p10.a(b10.f37968V1)) {
                    abstractC7455gg = new C6306Zf(c4798y);
                    break;
                } else {
                    if (p10.a(b10.f38004a2)) {
                        abstractC7455gg = new C7121eg(c4798y);
                        break;
                    }
                    abstractC7455gg = null;
                    break;
                }
            case 20:
            default:
                abstractC7455gg = null;
                break;
            case 21:
                if (p10.a(b10.f37982X1)) {
                    abstractC7455gg = new C6622bg(c4798y);
                    break;
                }
                abstractC7455gg = null;
                break;
        }
        if (abstractC7455gg != null) {
            F1 a10 = abstractC7455gg.a(this, e10, h52, m12);
            if (!a10.isUnknown()) {
                return a10;
            }
        }
        return i10;
    }

    @Override
    public boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        Z4.c<?> o10;
        if (!c4798y.f().h() || (o10 = b(c4798y.L()).o()) == null) {
            return false;
        }
        TW a10 = o10.a(c4798y, this, e(c4798y, h52));
        if (a10.s() != null) {
            for (int i10 = 0; i10 < this.f54321f.size(); i10++) {
                if (c10340xw0 == b(i10) && a10.s().get(i10)) {
                    return true;
                }
            }
        }
        return false;
    }
}
