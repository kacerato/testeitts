package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10729u;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;

public final class C5113Eo0 extends AbstractC5881Rw {

    public static final boolean f40024k = true;

    public final AbstractC5171Fo0 f40025i;

    public final IdentityHashMap f40026j;

    public C5113Eo0(C4798y c4798y, C7215fB c7215fB, AbstractC8028k40 abstractC8028k40) {
        super(c4798y, c7215fB, abstractC8028k40);
        this.f40026j = new IdentityHashMap();
        this.f40025i = c7215fB.j().getHolder().o1() ? new C5345Io0() : new C5229Go0();
    }

    @Override
    public final void a(C10729u c10729u) {
        super.a(c10729u);
        c10729u.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5113Eo0.this.a((com.android.tools.r8.graph.F5) obj, (com.android.tools.r8.graph.R2) obj2);
            }
        }, this.f44027a);
    }

    public final AbstractC5167Fm0 b(C10340xw0 c10340xw0) {
        int b10;
        C5572Mm0 c5572Mm0 = null;
        if (!c10340xw0.f53886c.Z1()) {
            return null;
        }
        F1 f12 = (F1) this.f40026j.get(c10340xw0);
        if (f12 != null) {
            if (f12.f0()) {
                AbstractC5167Fm0 N10 = f12.N();
                Q30 U10 = N10.U();
                U10.getClass();
                if (U10 instanceof C6336Zu) {
                    return N10;
                }
            }
            return null;
        }
        C8769oZ t02 = c10340xw0.f53886c.t0();
        C9103qZ u02 = c10340xw0.f53886c.u0();
        if (!f40024k && t02 == null && u02 == null) {
            throw new AssertionError();
        }
        if ((t02 != null ? t02.f51273k : u02.f51805l).a(this.f44027a.b()) == this.f44029c.getHolder().f36245e && !c10340xw0.y() && !c10340xw0.B()) {
            int u22 = t02 != null ? t02.u2() : u02.f54321f.size();
            if (u22 >= 1) {
                com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[u22];
                Q30[] q30Arr = new Q30[u22];
                if (u02 != null) {
                    ArrayList arrayList = u02.f54321f;
                    for (int i10 = 0; i10 < u22; i10++) {
                        if (!a(q30Arr, m2Arr, i10, (C10340xw0) arrayList.get(i10))) {
                            break;
                        }
                    }
                }
                C9132qj c9132qj = C9132qj.f51861a;
                Set c10 = AbstractC5513Ll0.c();
                C10340xw0.a(c9132qj, c10340xw0, c10);
                Iterator it = c10.iterator();
                C4460g1 c4460g1 = null;
                while (true) {
                    if (it.hasNext()) {
                        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) it.next();
                        int r22 = abstractC10561zE.r2();
                        if (r22 != 8) {
                            if (r22 == 9) {
                                if (abstractC10561zE.d().B()) {
                                    break;
                                }
                            } else {
                                if (r22 != 60) {
                                    break;
                                }
                                C4460g1 c11 = this.f44029c.getHolder().f36251k.f37700b.c(abstractC10561zE.L0().getField());
                                if (c11 == null || c4460g1 != null) {
                                    break;
                                }
                                c4460g1 = c11;
                            }
                        } else {
                            T3 A10 = abstractC10561zE.A();
                            if (A10.u2() != c10340xw0 || (b10 = A10.b(u22)) < 0 || !a(q30Arr, m2Arr, b10, A10.value())) {
                                break;
                            }
                        }
                    } else if (c4460g1 != null && !X3.a((Object[]) q30Arr, (com.android.tools.r8.graph.M2) null)) {
                        if (!f40024k && X3.a((Object[]) m2Arr, (com.android.tools.r8.graph.M2) null)) {
                            throw new AssertionError();
                        }
                        G1 g12 = this.f44027a.f38427t;
                        C4554l1 c4554l1 = (C4554l1) c4460g1.getReference();
                        C6336Zu c6336Zu = new C6336Zu(q30Arr, m2Arr);
                        g12.getClass();
                        c5572Mm0 = new C5572Mm0(c4554l1, c6336Zu);
                    }
                }
            }
        }
        this.f40026j.put(c10340xw0, c5572Mm0 == null ? C10504yv0.f54195b : c5572Mm0);
        return c5572Mm0;
    }

    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.R2 r22) {
        if (!this.f44033g.f43368b.containsKey(new C7333fv(C5573Mn.f42399a, f52)) && ((C11245i) this.f44027a.f()).a(f52, this.f44029c.d()) && this.f44027a.a(f52).a(this.f44027a, f52)) {
            G1 g12 = this.f44027a.f38427t;
            if (!r22.P0() && !r22.R0()) {
                if (!(r22 instanceof com.android.tools.r8.graph.Q2) && !f40024k) {
                    throw new AssertionError((Object) r22.getClass().getName());
                }
            } else {
                AbstractC8028k40 abstractC8028k40 = this.f44030d;
                C4798y c4798y = this.f44027a;
                F1 a10 = r22.a(g12);
                abstractC8028k40.getClass();
                abstractC8028k40.a(f52.d(), c4798y, a10);
            }
        }
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.F5 f52) {
        return f52.getAccessFlags().n() && f52.p() == this.f44029c.p() && ((C11245i) this.f44027a.f()).a(f52, this.f44029c.d());
    }

    @Override
    public final void a(com.android.tools.r8.graph.F0 f02, AbstractC7670hw abstractC7670hw, C10340xw0 c10340xw0) {
        if (!f40024k && !(f02 instanceof com.android.tools.r8.graph.F5)) {
            throw new AssertionError();
        }
        a(f02.W(), c10340xw0, a(f02, c10340xw0), false);
    }

    public final void a(com.android.tools.r8.graph.F5 f52, C10340xw0 c10340xw0, F1 f12, boolean z10) {
        this.f40025i.a(f52, f12, this.f44027a.b());
        if (this.f44027a.a(f52).a(this.f44027a, f52)) {
            AbstractC8028k40 abstractC8028k40 = this.f44030d;
            C4798y c4798y = this.f44027a;
            abstractC8028k40.getClass();
            abstractC8028k40.a(f52.d(), c4798y, f12);
            if (f52.getReference().getType().Q0()) {
                com.android.tools.r8.graph.M2 type = f52.getReference().getType();
                C4798y c4798y2 = this.f44027a;
                type.getClass();
                C10664zt a10 = AbstractC10330xt.a(c4798y2, AbstractC8999pu0.a(type, C8854p10.h(), (C4798y<?>) c4798y2));
                C10664zt a11 = c10340xw0.a(this.f44027a);
                if (a11.b(this.f44027a, a10)) {
                    if (z10 && a11.f54564b.B().d()) {
                        if (!f40024k && !a11.n().y()) {
                            throw new AssertionError();
                        }
                        a11 = a11.a(C8854p10.h());
                    }
                    AbstractC8028k40 abstractC8028k402 = this.f44030d;
                    abstractC8028k402.getClass();
                    abstractC8028k402.a(f52.d(), a11);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final F1 a(com.android.tools.r8.graph.F0 f02, C10340xw0 c10340xw0) {
        AbstractC5167Fm0 abstractC5167Fm0;
        C10340xw0 i10 = c10340xw0.i();
        F1 a10 = i10.a(this.f44027a, this.f44029c, M1.f42128a);
        if (a10.r()) {
            return a10;
        }
        boolean z10 = f40024k;
        if (!z10 && i10.i() != i10) {
            throw new AssertionError();
        }
        if (this.f44029c.getHolder().o1()) {
            if (!z10 && i10.i() != i10) {
                throw new AssertionError();
            }
            if (!i10.j()) {
                if (i10.f53886c.Z1()) {
                    abstractC5167Fm0 = b(i10);
                } else if (i10.f53886c.c2()) {
                    abstractC5167Fm0 = a(i10);
                }
                if (abstractC5167Fm0 == null) {
                    return abstractC5167Fm0;
                }
                G1 g12 = this.f44027a.f38427t;
                C4554l1 reference = f02.getReference();
                Q30 b10 = R30.b(this.f44027a, this.f44029c, i10);
                g12.getClass();
                if (b10.e()) {
                    return new C5630Nm0(reference);
                }
                return new C5572Mm0(reference, b10);
            }
        }
        abstractC5167Fm0 = null;
        if (abstractC5167Fm0 == null) {
        }
    }

    public final boolean a(Q30[] q30Arr, com.android.tools.r8.graph.M2[] m2Arr, int i10, C10340xw0 c10340xw0) {
        F1 a10;
        C10340xw0 i11 = c10340xw0.i();
        if (i11.j()) {
            return false;
        }
        AbstractC10561zE r10 = i11.r();
        r10.getClass();
        if (r10 instanceof C5576Mo0) {
            return false;
        }
        Q30 b10 = r10.c2() ? R30.b(this.f44027a, this.f44029c, r10.d()) : null;
        if (b10 != null && !b10.e()) {
            C11245i c11245i = (C11245i) this.f44027a.f();
            C4554l1 c4554l1 = this.f44027a.b().f37943R4.f36483b;
            com.android.tools.r8.graph.H5 h52 = this.f44029c;
            c11245i.getClass();
            C4460g1 q10 = c11245i.a(c4554l1.f38297f, c4554l1, h52).q();
            if (q10 == null || (a10 = b10.a(q10.getReference())) == null || !(a10 instanceof C5341Im0) || ((int) a10.m().f41207c) != i10 || q30Arr[i10] != null) {
                return false;
            }
            if (!f40024k && !r10.c2()) {
                throw new AssertionError();
            }
            m2Arr[i10] = r10.w0().u2();
            q30Arr[i10] = b10;
            return true;
        }
        return false;
    }

    public final AbstractC5167Fm0 a(C10340xw0 c10340xw0) {
        AbstractC5167Fm0 b10;
        com.android.tools.r8.graph.E0 g10;
        if (!f40024k && !c10340xw0.d(new C7680hz0())) {
            throw new AssertionError();
        }
        C9603tZ w02 = c10340xw0.f53886c.w0();
        if ((w02.f52627k != this.f44029c.p() && ((g10 = this.f44027a.g(w02.f52627k)) == null || g10.f36247g != this.f44029c.p())) || c10340xw0.y() || c10340xw0.B()) {
            return null;
        }
        C4460g1 c4460g1 = null;
        for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
            int r22 = abstractC10561zE.r2();
            if (r22 == 8) {
                T3 A10 = abstractC10561zE.A();
                if (A10.value().i() == c10340xw0 && (b10 = b(A10.u2())) != null) {
                    Q30 U10 = b10.U();
                    U10.getClass();
                    if (U10 instanceof C6336Zu) {
                    }
                }
                return null;
            }
            if (r22 != 33) {
                if (r22 != 60) {
                    return null;
                }
                C4460g1 c10 = this.f44029c.getHolder().f36251k.f37700b.c(abstractC10561zE.L0().getField());
                if (c10 != null && AbstractC4458g.d(c10.f37202g.f37197c, 16384)) {
                    if (c4460g1 != null) {
                        return null;
                    }
                    c4460g1 = c10;
                }
            } else {
                QJ c02 = abstractC10561zE.c0();
                if (!this.f44027a.b().a(c02.B2()) || c02.C2() != c10340xw0) {
                    return null;
                }
            }
        }
        if (c4460g1 == null) {
            return null;
        }
        G1 g12 = this.f44027a.f38427t;
        C4554l1 c4554l1 = (C4554l1) c4460g1.getReference();
        Q30 b11 = R30.b(this.f44027a, this.f44029c, c10340xw0);
        g12.getClass();
        if (b11.e()) {
            return new C5630Nm0(c4554l1);
        }
        return new C5572Mm0(c4554l1, b11);
    }
}
