package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.AbstractC4481h3;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.T5;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C4;
import com.android.tools.r8.internal.C5800Qk0;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C6993dt;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7572hK;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.TJ;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Z5;
import com.android.tools.r8.shaking.C11245i;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.UnaryOperator;

public final class I {

    public static final boolean f54756c = true;

    public final C4798y f54757a;

    public final C8570nJ f54758b;

    public I(C4798y c4798y) {
        this.f54757a = c4798y;
        this.f54758b = c4798y.E();
    }

    /* JADX WARN: Code restructure failed: missing block: B:158:0x0426, code lost:
    
        if (r5.a(r10, r14) != false) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0224, code lost:
    
        r9 = r20.f54757a.b();
        r8.getClass();
        r9 = r8.a(r14.S(), r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0235, code lost:
    
        if (r9 == r8) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x024f, code lost:
    
        if (((com.android.tools.r8.shaking.C11245i) r20.f54757a.f()).f().a(r3, r9, r20.f54757a.f38408a.g()) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0251, code lost:
    
        r11.a(new com.android.tools.r8.internal.C7572hK(r9, r6.d(), r6.f54321f, r14.isInterface()), (com.android.tools.r8.ir.optimize.C10696a) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /* JADX WARN: Type inference failed for: r12v19, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C7215fB c7215fB) {
        Set set;
        Z5 z52;
        TJ d02;
        com.android.tools.r8.graph.H0 e10;
        com.android.tools.r8.graph.E0 holder;
        H5 h52;
        IdentityHashMap identityHashMap;
        C10340xw0 c10340xw0;
        Z5 z53;
        Set set2;
        boolean z10;
        W5 w52;
        A2 a22;
        Z4.c<?> o10;
        M2 E10;
        Z4.c<?> o11;
        com.android.tools.r8.graph.E0 e02;
        C5800Qk0 c5800Qk0;
        C10696a c10696a = new C10696a();
        H5 j10 = c7215fB.j();
        IdentityHashMap identityHashMap2 = new IdentityHashMap();
        boolean z11 = true;
        C6993dt c6993dt = new C6993dt(c7215fB, 1);
        IdentityHashMap identityHashMap3 = new IdentityHashMap();
        Set c10 = AbstractC5513Ll0.c();
        Z5 u10 = c7215fB.u();
        while (u10.f46159b.hasNext()) {
            W5 w53 = (W5) u10.f46159b.next();
            u10.f46160c = w53;
            Y5 I10 = w53.I();
            while (I10.hasNext()) {
                AbstractC10561zE next = I10.next();
                if (next.r1()) {
                    C4 B10 = next.B();
                    AbstractC10561zE abstractC10561zE = B10.f39118l;
                    abstractC10561zE.getClass();
                    if ((abstractC10561zE instanceof TJ) && !abstractC10561zE.d0().C2().z() && identityHashMap2.containsKey(abstractC10561zE.d0())) {
                        if (abstractC10561zE.d0().C2() == B10.v2()) {
                            C8405mK c8405mK = (C8405mK) identityHashMap2.get(abstractC10561zE.d0());
                            C10340xw0 C22 = c8405mK.C2();
                            if (!C22.j()) {
                                AbstractC10561zE abstractC10561zE2 = C22.f53886c;
                                abstractC10561zE2.getClass();
                                if (abstractC10561zE2 instanceof C5800Qk0) {
                                    C5800Qk0 H02 = C22.f53886c.H0();
                                    if (c10.contains(H02)) {
                                        c5800Qk0 = H02;
                                        if (c5800Qk0 != null) {
                                            C10340xw0 n10 = c5800Qk0.n();
                                            z52 = u10;
                                            set = c10;
                                            if (C22.u().a(n10.u(), this.f54757a) && c6993dt.a(w53, c8405mK.b())) {
                                                boolean z12 = f54756c;
                                                if (!z12 && B10.v2() != n10) {
                                                    throw new AssertionError();
                                                }
                                                if (!z12 && n10.z()) {
                                                    throw new AssertionError();
                                                }
                                                n10.a(C22, new C5978Tm0(B10), C6620bf0.f46817i, c10696a);
                                            }
                                            h52 = j10;
                                        }
                                    }
                                }
                            }
                            c5800Qk0 = null;
                            if (c5800Qk0 != null) {
                            }
                        }
                        h52 = j10;
                        identityHashMap = identityHashMap2;
                        set2 = c10;
                        z53 = u10;
                        z10 = true;
                        c10 = set2;
                        u10 = z53;
                        z11 = z10;
                        j10 = h52;
                        identityHashMap2 = identityHashMap;
                    } else {
                        h52 = j10;
                        identityHashMap = identityHashMap2;
                        z10 = z11;
                        set2 = c10;
                        z53 = u10;
                        c10 = set2;
                        u10 = z53;
                        z11 = z10;
                        j10 = h52;
                        identityHashMap2 = identityHashMap;
                    }
                } else {
                    set = c10;
                    z52 = u10;
                    if (next instanceof C7572hK) {
                        C7572hK j02 = next.j0();
                        if (this.f54758b.f50599F1.f50862b0) {
                            C4798y c4798y = this.f54757a;
                            j02.getClass();
                            Z4.c<?> o12 = ((C4514j) c4798y.f()).a(j02.f45018l, j02.A2()).o();
                            if (o12 != null) {
                                AbstractC4481h3 a10 = o12.a(this.f54757a, (VJ) j02, j10);
                                if ((a10 instanceof T5) && !a10.b().getHolder().isInterface()) {
                                    A2 B22 = j02.B2();
                                    if (a10.b().a(o12.a(this.f54757a, j02, j02.C2().a(this.f54757a), j10).b())) {
                                        I10.a(new C8405mK(B22, j02.d(), j02.f54321f), (C10696a) null);
                                    }
                                }
                            }
                        }
                        A2 B23 = j02.B2();
                        C11245i c11245i = (C11245i) this.f54757a.f();
                        C4798y<?> c4798y2 = this.f54757a;
                        c11245i.getClass();
                        com.android.tools.r8.graph.H0 a11 = c11245i.a(B23, j10.getHolder(), c4798y2, (C4514j) c4798y2.f());
                        if (a11 != null && (!a11.getHolder().isInterface() || a11.p() == j10.getHolder().f36247g)) {
                            com.android.tools.r8.graph.E0 holder2 = a11.getHolder();
                            C4798y c4798y3 = this.f54757a;
                            if (!AbstractC4420e.a(a11, holder2, j10, c4798y3, (C4514j) c4798y3.f()).b()) {
                                if (a11.getHolder().f0()) {
                                    C4798y c4798y4 = this.f54757a;
                                    M2 s02 = B23.s0();
                                    e02 = j10.getHolder();
                                    if (s02 != e02.f36245e) {
                                        e02 = c4798y4.a(s02);
                                    }
                                    while (e02 != null && e02.e0() && e02 != a11.getHolder()) {
                                        C4798y c4798y5 = this.f54757a;
                                        M2 m22 = e02.f36247g;
                                        e02 = e02.d0();
                                        if (m22 != e02.f36245e) {
                                            e02 = c4798y5.a(m22);
                                        }
                                    }
                                } else {
                                    e02 = a11.getHolder();
                                }
                            }
                        }
                        e02 = null;
                    } else if (next.T1()) {
                        C8405mK k02 = next.k0();
                        A2 B24 = k02.B2();
                        C10340xw0 C23 = k02.C2();
                        if (C23.u().s() && (o10 = ((C11245i) this.f54757a.f()).a(B24.s0(), B24).o()) != null && !o10.b(j10, this.f54757a).b() && (E10 = C23.u().b().E()) != B24.f38297f && (o11 = ((C11245i) this.f54757a.f()).a(E10, B24).o()) != null && !o11.b(j10, this.f54757a).b()) {
                            if (o11.q().b(this.f54757a, o10.q())) {
                                C4516j1 q10 = o11.q();
                                q10.L0();
                                if (q10.f37314g.h() || Z4.c.a(o10.q(), o11.q())) {
                                    ?? d10 = o11.d();
                                    if (d10.e0() && !d10.isInterface()) {
                                        a22 = o11.q().getReference();
                                        if (a22 != B24) {
                                            I10.a(new C8405mK(a22, k02.d(), k02.f54321f), (C10696a) null);
                                        }
                                    }
                                }
                            }
                        }
                        a22 = B24;
                        if (a22 != B24) {
                        }
                    } else if ((next instanceof TJ) && (e10 = (d02 = next.d0()).e(this.f54757a, j10)) != null && (holder = e10.getHolder()) != null && !holder.isInterface()) {
                        C4798y c4798y6 = this.f54757a;
                        if (!AbstractC4420e.a(holder, j10, c4798y6, (C4514j) c4798y6.f()).b()) {
                            if (((C11245i) this.f54757a.f()).f().a(j10, e10.getReference(), this.f54757a.f38408a.g())) {
                                C8405mK c8405mK2 = new C8405mK(e10.getReference(), d02.d(), d02.f54321f);
                                I10.a(c8405mK2, (C10696a) null);
                                identityHashMap2.put(d02, c8405mK2);
                                if (holder.getType() != d02.B2().f38297f) {
                                    C10340xw0 C24 = d02.C2();
                                    AbstractC8999pu0 u11 = C24.u();
                                    h52 = j10;
                                    AbstractC8999pu0 a12 = AbstractC8999pu0.a(holder.getType(), u11.B(), (C4798y<?>) this.f54757a);
                                    if (!u11.a(a12, this.f54757a)) {
                                        if (identityHashMap3.containsKey(C24) && ((Map) identityHashMap3.get(C24)).containsKey(holder.getType())) {
                                            c10340xw0 = (C10340xw0) ((Map) identityHashMap3.get(C24)).get(holder.getType());
                                            W5 b10 = c10340xw0.f53886c.b();
                                            if (b10.z()) {
                                                identityHashMap = identityHashMap2;
                                                if (b10.M() == 1) {
                                                    b10 = b10.w();
                                                } else {
                                                    if (!f54756c) {
                                                        throw new AssertionError();
                                                    }
                                                    b10 = null;
                                                }
                                            } else {
                                                identityHashMap = identityHashMap2;
                                            }
                                            if (b10 != null) {
                                            }
                                        } else {
                                            identityHashMap = identityHashMap2;
                                        }
                                        c10340xw0 = null;
                                        if (c10340xw0 == null) {
                                            c10340xw0 = c7215fB.a(a12, (C4515j0) null);
                                            if (!C24.z()) {
                                                identityHashMap3.putIfAbsent(C24, new IdentityHashMap());
                                                ((Map) identityHashMap3.get(C24)).put(holder.getType(), c10340xw0);
                                            }
                                            C5800Qk0 c5800Qk02 = new C5800Qk0(c10340xw0, C24, holder.getType());
                                            c5800Qk02.b(d02.getPosition());
                                            set2 = set;
                                            set2.add(c5800Qk02);
                                            boolean z13 = f54756c;
                                            if (!z13 && I10.n() != c8405mK2) {
                                                throw new AssertionError();
                                            }
                                            I10.previous();
                                            if (w53.z()) {
                                                z53 = z52;
                                                w52 = I10.a(c7215fB, z53, this.f54758b, (UnaryOperator<W5>) null);
                                            } else {
                                                z53 = z52;
                                                w52 = w53;
                                            }
                                            if (w52 != w53) {
                                                z10 = true;
                                                w53.b(w53.l().size() - 1).add(c5800Qk02);
                                                c6993dt = new C6993dt(c7215fB, 1);
                                                Y5 I11 = w52.I();
                                                if (!z13 && I11.h() != c8405mK2) {
                                                    throw new AssertionError();
                                                }
                                                I11.next();
                                                I10 = I11;
                                            } else {
                                                z10 = true;
                                                I10.add(c5800Qk02);
                                                if (!z13 && I10.h() != c8405mK2) {
                                                    throw new AssertionError();
                                                }
                                                I10.next();
                                            }
                                        } else {
                                            z53 = z52;
                                            set2 = set;
                                            z10 = true;
                                        }
                                        if (C24.z()) {
                                            c8405mK2.a(C24, c10340xw0, c10696a);
                                        } else {
                                            C24.a(c10340xw0, new C5978Tm0(c8405mK2), C6620bf0.f46817i, c10696a);
                                        }
                                        c10 = set2;
                                        u10 = z53;
                                        z11 = z10;
                                        j10 = h52;
                                        identityHashMap2 = identityHashMap;
                                    }
                                }
                            }
                        }
                    }
                    h52 = j10;
                }
                identityHashMap = identityHashMap2;
                z53 = z52;
                set2 = set;
                z10 = true;
                c10 = set2;
                u10 = z53;
                z11 = z10;
                j10 = h52;
                identityHashMap2 = identityHashMap;
            }
        }
        c10696a.a(this.f54757a, c7215fB, C6628bi.b());
        c7215fB.x();
        if (!f54756c && !c7215fB.b(this.f54757a)) {
            throw new AssertionError();
        }
    }
}
