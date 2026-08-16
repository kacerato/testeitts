package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11295l;
import java.util.function.Function;

public final class C7107eb0 extends ZV {

    public static final C8696o40 f47724c = C8696o40.f51162b;

    public static final boolean f47725d = true;

    public C7107eb0(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final void a(C7215fB c7215fB, C10696a c10696a, Z5 z52, EE ee2, N3 n32) {
        boolean a10;
        AbstractC8999pu0 u10 = n32.u2().u();
        if (u10.r()) {
            AbstractC8999pu0 F10 = u10.a().F();
            if (F10.s()) {
                C6949de b10 = F10.b();
                if (b10.E().a(this.f46253a)) {
                    a10 = true;
                } else {
                    a10 = b10.F().c() != null ? b10.F().c().a(this.f46253a) : false;
                }
                if (a10) {
                    W5 b11 = n32.b();
                    this.f46253a.f38427t.getClass();
                    if (!G1.f40367f && !F10.y()) {
                        throw new AssertionError();
                    }
                    C9126qh a11 = C5283Hm0.f40867c.a(this.f46253a, c7215fB, n32);
                    c10696a.addAll(n32.d().a());
                    n32.d().f(a11.d());
                    if (b11.z()) {
                        ee2.a(c7215fB, z52, this.f46253a.E()).I().add(a11);
                    } else {
                        ee2.add(a11);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0091, code lost:
    
        if (r0 == false) goto L44;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final EE a(C7215fB c7215fB, com.android.tools.r8.graph.H5 h52, C10696a c10696a, Z5 z52, EE ee2, VJ vj2) {
        Z4.c<?> o10;
        F1 i10;
        boolean containsKey;
        com.android.tools.r8.shaking.F1 a10;
        if (vj2.f1()) {
            com.android.tools.r8.graph.A2 B22 = vj2.B2();
            if (B22.s0().I0() && (o10 = ((C11245i) this.f46253a.f()).f(B22).o()) != null) {
                com.android.tools.r8.graph.H0 e10 = vj2.e(this.f46253a, h52);
                if (!a(c7215fB, c10696a, z52, ee2, vj2, G4.a(this.f46253a, o10, e10))) {
                    if (e10 != null) {
                        if (e10.a0()) {
                            com.android.tools.r8.graph.G5 O10 = e10.O();
                            C4798y c4798y = this.f46253a;
                            c4798y.getClass();
                            if (O10.J()) {
                                a10 = c4798y.a(O10.W());
                            } else {
                                a10 = c4798y.a(O10.H());
                            }
                            containsKey = a10.a(this.f46253a, O10);
                        } else {
                            containsKey = this.f46253a.f38412e.f57488a.containsKey(e10.getReference());
                        }
                    }
                    if (B22.z0().a(this.f46253a)) {
                        G1 g12 = this.f46253a.f38427t;
                        com.android.tools.r8.graph.M2 z02 = B22.z0();
                        g12.getClass();
                        i10 = G1.b(z02);
                    } else {
                        i10 = o10.a(this.f46253a, vj2, e10).i();
                    }
                    if (i10.r()) {
                        AbstractC5746Pm0 w10 = i10.w();
                        if (w10.b(this.f46253a, h52)) {
                            AbstractC10561zE[] a11 = w10.a(this.f46253a, c7215fB.j(), c7215fB, vj2);
                            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) X3.b(a11);
                            vj2.c(abstractC10561zE);
                            vj2.d().a(abstractC10561zE.d(), c10696a);
                            vj2.d((C10340xw0) null);
                            if (vj2.Q1()) {
                                ee2.a(this.f46253a, h52);
                            } else if (vj2.R1() && e10 != null) {
                                ee2.a(this.f46253a, c7215fB, e10.p());
                            }
                            EE a12 = ee2.a(c7215fB, z52, a11, this.f46253a.E());
                            if (e10 != null) {
                                e10.d().T0().f45466u |= 256;
                            }
                            return a12;
                        }
                    }
                }
            }
        }
        return ee2;
    }

    @Override
    public final EE a(C7215fB c7215fB, C10696a c10696a, Z5 z52, EE ee2, C6558bE c6558bE) {
        return a(c7215fB, c10696a, z52, ee2, (AbstractC7670hw) c6558bE);
    }

    @Override
    public final EE a(C7215fB c7215fB, C10696a c10696a, Z5 z52, EE ee2, C5576Mo0 c5576Mo0) {
        return a(c7215fB, c10696a, z52, ee2, (AbstractC7670hw) c5576Mo0);
    }

    public final EE a(C7215fB c7215fB, C10696a c10696a, Z5 z52, EE ee2, AbstractC7670hw abstractC7670hw) {
        boolean containsKey;
        F1 a10;
        VY vy;
        com.android.tools.r8.shaking.F1 a11;
        final C4554l1 field = abstractC7670hw.getField();
        D3.a<?> l10 = ((C11245i) this.f46253a.f()).c(field).l();
        if (l10 == null) {
            if (((Boolean) this.f46253a.a(Boolean.FALSE, new Function() {
                @Override
                public final Object apply(Object obj) {
                    Boolean valueOf;
                    valueOf = Boolean.valueOf(((C5711Oy) obj).a(C4554l1.this));
                    return valueOf;
                }
            })).booleanValue()) {
                c7215fB.getClass();
                ee2.b(c7215fB.a(0L, AbstractC8999pu0.m()));
                return ee2;
            }
        } else if (!l10.a(c7215fB.j(), this.f46253a).b()) {
            com.android.tools.r8.graph.F0 a12 = com.android.tools.r8.graph.F0.a(l10.f36224c, l10.f36225d);
            C4460g1 d10 = a12.d();
            boolean z10 = abstractC7670hw instanceof C5576Mo0;
            if (d10.w0() == z10) {
                if (z10 && !abstractC7670hw.f1()) {
                    ee2.a(this.f46253a, c7215fB, field.s0());
                    return ee2;
                }
                if (a12.a0()) {
                    com.android.tools.r8.graph.G5 O10 = a12.O();
                    C4798y c4798y = this.f46253a;
                    c4798y.getClass();
                    if (O10.J()) {
                        a11 = c4798y.a(O10.W());
                    } else {
                        a11 = c4798y.a(O10.H());
                    }
                    containsKey = a11.a(this.f46253a, O10);
                } else {
                    containsKey = this.f46253a.f38412e.f57488a.containsKey(a12.getReference());
                }
                if (containsKey) {
                    C11295l c11295l = this.f46253a.f38412e;
                    c11295l.getClass();
                    if (!a(c7215fB, c10696a, z52, ee2, abstractC7670hw, c11295l.a(a12.getReference()))) {
                        if (field.getType().a(this.f46253a)) {
                            G1 g12 = this.f46253a.f38427t;
                            com.android.tools.r8.graph.M2 type = field.getType();
                            g12.getClass();
                            a10 = G1.b(type);
                        } else {
                            C11245i c11245i = (C11245i) this.f46253a.f();
                            if (!C11245i.f57385J) {
                                c11245i.c();
                            }
                            C4613o3 c4613o3 = (C4613o3) c11245i.f57404s.f37507a.get(a12.getReference());
                            if ((c4613o3 == null || !c4613o3.f()) ? true ^ (a12 instanceof com.android.tools.r8.graph.F5) : true) {
                                a10 = d10.f37207l.f();
                                if (!d10.w0()) {
                                    F1 a13 = abstractC7670hw.c().n().a(this.f46253a, c7215fB.j(), M1.f42128a);
                                    if (a13.X()) {
                                        Q30 U10 = a13.U();
                                        U10.getClass();
                                        F1 a14 = U10.a(d10.getReference());
                                        if (!a14.isUnknown()) {
                                            a10 = a14;
                                        }
                                    }
                                }
                            } else if (d10.w0()) {
                                a10 = d10.K0().a(this.f46253a.f38427t);
                                boolean z11 = f47725d;
                                if (!z11) {
                                    C4798y c4798y2 = this.f46253a;
                                    F1 f10 = d10.f37207l.f();
                                    F1 a15 = d10.K0().a(c4798y2.f38427t);
                                    if (!z11 && !f10.isUnknown() && d10.L0() && !c4798y2.f38428u.b(a15, f10, AbstractC8999pu0.a(d10.getReference().getType(), C8854p10.h(), (C4798y<?>) c4798y2)).equals(f10)) {
                                        throw new AssertionError();
                                    }
                                }
                            } else {
                                a10 = this.f46253a.f38427t.a(field.getType());
                            }
                        }
                        if (a10.r()) {
                            AbstractC5746Pm0 w10 = a10.w();
                            if ((!w10.f0() || w10.N().f40306c != field) && w10.b(this.f46253a, c7215fB.j())) {
                                com.android.tools.r8.graph.H5 j10 = c7215fB.j();
                                AbstractC10561zE[] a16 = w10.a(this.f46253a, c7215fB.j(), c7215fB, abstractC7670hw);
                                abstractC7670hw.d().a(((AbstractC10561zE) X3.b(a16)).d(), c10696a);
                                if (abstractC7670hw instanceof C6558bE) {
                                    ee2.a(this.f46253a, j10);
                                } else {
                                    if (!f47725d && !z10) {
                                        throw new AssertionError();
                                    }
                                    ee2.a(this.f46253a, c7215fB, a12.p());
                                }
                                EE a17 = ee2.a(c7215fB, z52, a16, this.f46253a.E());
                                f47724c.getClass();
                                synchronized (d10) {
                                    vy = (VY) d10.f37207l.a();
                                    d10.f37207l = vy;
                                }
                                vy.f45080b |= 4;
                                return a17;
                            }
                        }
                    }
                }
            }
        }
        return ee2;
    }

    @Override
    public final void a(C7215fB c7215fB, EE ee2, C9225rE c9225rE) {
        com.android.tools.r8.graph.F0 p10 = ((C11245i) this.f46253a.f()).c(c9225rE.getField()).p();
        if (p10 == null || p10.getAccessFlags().n()) {
            return;
        }
        if (!p10.getReference().getType().a(this.f46253a) && ((C11245i) this.f46253a.f()).a(p10)) {
            C4798y c4798y = this.f46253a;
            if (c4798y.f38412e.a(c4798y, p10)) {
                ee2.a(this.f46253a, c7215fB.j());
                return;
            }
            return;
        }
        ee2.a(this.f46253a, c7215fB.j());
    }

    @Override
    public final void a(C7215fB c7215fB, EE ee2, C5634No0 c5634No0) {
        com.android.tools.r8.graph.F0 p10 = ((C11245i) this.f46253a.f()).c(c5634No0.getField()).p();
        if (p10 == null || !p10.getAccessFlags().n()) {
            return;
        }
        if (!p10.getReference().getType().a(this.f46253a) && ((C11245i) this.f46253a.f()).a(p10)) {
            C4798y c4798y = this.f46253a;
            if (c4798y.f38412e.a(c4798y, p10)) {
                ee2.a(this.f46253a, c7215fB, p10.p());
                return;
            }
            return;
        }
        ee2.a(this.f46253a, c7215fB, p10.p());
    }
}
