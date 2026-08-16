package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4517j2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4650q2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.UnaryOperator;

public final class C5703Ou implements com.android.tools.r8.ir.optimize.A {

    public static final boolean f43066h = true;

    public final C4798y f43067b;

    public final InterfaceC7200f6 f43068c;

    public final C4724u1 f43069d;

    public final C8570nJ f43070e;

    public final C8664nu f43071f;

    public final C5993Tu f43072g;

    public C5703Ou(C4798y c4798y, InterfaceC7200f6 interfaceC7200f6, C8664nu c8664nu, C5993Tu c5993Tu) {
        this.f43067b = c4798y;
        this.f43069d = c4798y.b();
        this.f43070e = c4798y.E();
        this.f43068c = interfaceC7200f6;
        this.f43071f = c8664nu;
        this.f43072g = c5993Tu;
    }

    /* JADX WARN: Code restructure failed: missing block: B:282:0x0a0b, code lost:
    
        if (r26.f43071f.b(r1) != false) goto L381;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01a9, code lost:
    
        if (r26.f43071f.b(r0) != false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0a33  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0a99  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0a93  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x04db  */
    /* JADX WARN: Type inference failed for: r2v28, types: [java.util.Map, com.android.tools.r8.internal.Q] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Set a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, com.android.tools.r8.graph.proto.j jVar, R00 r00) {
        Set set;
        Set set2;
        Z5 z52;
        W5 w52;
        C5645Nu c5645Nu;
        com.android.tools.r8.graph.A2 a22;
        C10340xw0 b10;
        com.android.tools.r8.graph.M2 a10;
        com.android.tools.r8.graph.A2 a23;
        Z5 z53;
        int i10;
        ArrayList arrayList;
        Set set3;
        Set set4;
        Set set5;
        Set set6;
        C5645Nu c5645Nu2;
        com.android.tools.r8.graph.M2 m22;
        boolean z10;
        J3 j32;
        com.android.tools.r8.graph.H5 a11;
        C10340xw0 c10340xw0;
        com.android.tools.r8.graph.M2 m23;
        Iterator<C7201f60> it;
        Set set7;
        int i11;
        C7201f60 c7201f60;
        int i12;
        C5645Nu c5645Nu3;
        C7215fB c7215fB2 = c7215fB;
        com.android.tools.r8.graph.proto.j jVar2 = jVar;
        if (this.f43071f.a()) {
            return AbstractC5513Ll0.c();
        }
        boolean z11 = f43066h;
        if (!z11 && !(r00 instanceof C5645Nu)) {
            throw new AssertionError();
        }
        C5645Nu a12 = r00.a();
        if (!z11) {
            c7215fB.r();
        }
        AbstractC7264fX d10 = abstractC6931dX.d();
        Set c10 = AbstractC5513Ll0.c();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        ArrayList arrayList2 = new ArrayList();
        Y5 I10 = c7215fB.k().I();
        int a13 = com.android.tools.r8.graph.proto.c.a(Integer.MAX_VALUE, jVar2.f37623b.f37604a) + c7215fB.l();
        int i13 = 0;
        while (i13 < a13) {
            com.android.tools.r8.graph.proto.b a14 = jVar2.f37623b.a(i13);
            if (!a14.c()) {
                AbstractC10561zE next = I10.next();
                boolean z12 = f43066h;
                if (!z12 && !next.k1()) {
                    throw new AssertionError();
                }
                if (a14 instanceof com.android.tools.r8.graph.proto.k) {
                    com.android.tools.r8.graph.proto.k b11 = a14.b();
                    com.android.tools.r8.graph.M2 a15 = b11.f().a(this.f43069d);
                    com.android.tools.r8.graph.M2 m24 = this.f43071f.b(a15) ? a15 : null;
                    AbstractC5746Pm0 abstractC5746Pm0 = b11.f37629e;
                    if (abstractC5746Pm0 == null || !(abstractC5746Pm0 instanceof C5341Im0)) {
                        i12 = a13;
                        c5645Nu3 = a12;
                        if (m24 != null) {
                            identityHashMap.put(next, m24);
                        }
                    } else {
                        if (!z12 && !abstractC5746Pm0.b(this.f43067b, c7215fB.j())) {
                            throw new AssertionError();
                        }
                        AbstractC5746Pm0 abstractC5746Pm02 = b11.f37629e;
                        C4798y c4798y = this.f43067b;
                        i12 = a13;
                        c5645Nu3 = a12;
                        CV cv = new CV(next.q(), b11.e().b(this.f43067b), next.getPosition());
                        abstractC5746Pm02.getClass();
                        AbstractC10561zE[] a16 = abstractC5746Pm02.a(c4798y, c7215fB.j(), c7215fB2, cv);
                        if (!z12 && a16.length != 1) {
                            throw new AssertionError();
                        }
                        boolean z13 = X3.f45604a;
                        AbstractC10561zE abstractC10561zE = a16[0];
                        arrayList2.add(abstractC10561zE);
                        c10.addAll(next.d().a0());
                        next.d().f(abstractC10561zE.d());
                        identityHashMap.put(abstractC10561zE, m24);
                    }
                    i13++;
                    jVar2 = jVar;
                    a13 = i12;
                    a12 = c5645Nu3;
                }
            }
            i12 = a13;
            c5645Nu3 = a12;
            i13++;
            jVar2 = jVar;
            a13 = i12;
            a12 = c5645Nu3;
        }
        C5645Nu c5645Nu4 = a12;
        if (!arrayList2.isEmpty()) {
            if (!f43066h && arrayList2.size() != 1) {
                throw new AssertionError();
            }
            int size = arrayList2.size();
            int i14 = 0;
            while (i14 < size) {
                Object obj = arrayList2.get(i14);
                i14++;
                I10.add((AbstractC10561zE) obj);
            }
        }
        Z5 u10 = c7215fB.u();
        Set c11 = AbstractC5513Ll0.c();
        Set c12 = AbstractC5513Ll0.c();
        C10340xw0 c10340xw02 = null;
        while (u10.f46159b.hasNext()) {
            W5 w53 = (W5) u10.f46159b.next();
            u10.f46160c = w53;
            c11.add(w53);
            Iterator<C7201f60> it2 = w53.s().iterator();
            C10340xw0 c10340xw03 = c10340xw02;
            while (it2.hasNext()) {
                C7201f60 next2 = it2.next();
                AbstractC8999pu0 u11 = next2.u();
                if (u11.s()) {
                    m23 = u11.b().E();
                }
                m23 = null;
                if (m23 != null) {
                    int i15 = 0;
                    while (i15 < next2.c0().size()) {
                        AbstractC8999pu0 u12 = ((C10340xw0) next2.f47863q.get(i15)).u();
                        u12.getClass();
                        if (u12 instanceof C6301Zd0) {
                            if (c10340xw03 == null) {
                                Y5 I11 = c7215fB.k().I();
                                while (I11.hasNext() && I11.h().k1()) {
                                    I11.next();
                                }
                                it = it2;
                                i11 = i15;
                                set7 = c11;
                                c7201f60 = next2;
                                c10340xw03 = I11.a(c7215fB, this.f43070e, 0, AbstractC8999pu0.k());
                            } else {
                                it = it2;
                                set7 = c11;
                                i11 = i15;
                                c7201f60 = next2;
                            }
                            C10340xw0 c10340xw04 = c10340xw03;
                            c7201f60.a(i11, c10340xw04, (C10696a) null);
                            c10340xw03 = c10340xw04;
                        } else {
                            it = it2;
                            set7 = c11;
                            i11 = i15;
                            c7201f60 = next2;
                        }
                        i15 = i11 + 1;
                        it2 = it;
                        next2 = c7201f60;
                        c11 = set7;
                    }
                }
            }
            Set set8 = c11;
            Y5 I12 = w53.I();
            while (I12.hasNext()) {
                AbstractC10561zE next3 = I12.next();
                if (c12.contains(next3)) {
                    I12.i();
                } else if (next3.I1()) {
                    com.android.tools.r8.graph.M2 m25 = next3.W().f52317k;
                    if (!this.f43071f.b(m25)) {
                        m25 = null;
                    }
                    if (m25 != null) {
                        I12.i();
                    }
                } else if (next3.H1()) {
                    EB V10 = next3.V();
                    if (!V10.x2()) {
                        int i16 = 0;
                        while (i16 < 2) {
                            if (a(identityHashMap, V10.a(i16)) != null) {
                                int i17 = 1 - i16;
                                AbstractC8999pu0 u13 = V10.a(i17).u();
                                u13.getClass();
                                if (u13 instanceof C6301Zd0) {
                                    I12.previous();
                                    set = c12;
                                    set2 = c10;
                                    V10.a(i17, I12.a(c7215fB, this.f43070e, 0, AbstractC8999pu0.k()));
                                    I12.next();
                                    c12 = set;
                                    c10 = set2;
                                    break;
                                }
                            }
                            i16++;
                            V10 = V10;
                            c12 = c12;
                            c10 = c10;
                        }
                    }
                } else {
                    set2 = c10;
                    set = c12;
                    if (next3.Q1()) {
                        WJ f02 = next3.f0();
                        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
                        com.android.tools.r8.graph.M2 a17 = a(identityHashMap, f02.C2());
                        com.android.tools.r8.graph.A2 B22 = f02.B2();
                        if (a17 != null) {
                            com.android.tools.r8.graph.J1 j12 = this.f43069d.f37943R4;
                            if (B22 != j12.f36485d && !B22.c(j12.f36491j)) {
                                if (B22.c(this.f43069d.f37943R4.f36490i)) {
                                    com.android.tools.r8.graph.H5 f10 = this.f43072g.f44609b.f(this.f43067b);
                                    d10.d(f10, j10);
                                    a(I12, f02, f10, f02.f54321f);
                                } else {
                                    com.android.tools.r8.graph.J1 j13 = this.f43069d.f37943R4;
                                    if (B22 != j13.f36488g && B22 != j13.f36489h) {
                                        if (B22 == j13.f36486e) {
                                            com.android.tools.r8.graph.H5 a18 = this.f43072g.a(this.f43071f.c(a17)).a(this.f43067b, this.f43069d.f37943R4.f36482a);
                                            d10.f(a18, j10);
                                            I12.a(new C7405gK(a18.getReference(), f02.d(), f02.f54321f), (C10696a) null);
                                        } else {
                                            if (B22.c(j13.f36487f)) {
                                                com.android.tools.r8.graph.A2 a19 = B22.a(this.f43071f.c(a17), this.f43069d);
                                                C5645Nu c5645Nu5 = c5645Nu4;
                                                z52 = u10;
                                                c5645Nu = c5645Nu5;
                                                w52 = w53;
                                                com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) c5645Nu5.a(a19, j10.getReference(), f02.w2(), c5645Nu5.f43777d, AbstractC9530t40.f52519c).f41111a;
                                                if (a24 == a19) {
                                                    com.android.tools.r8.graph.H5 a20 = this.f43072g.a(this.f43071f.c(a17)).a(this.f43067b, this.f43069d.f37943R4.f36482a);
                                                    d10.f(a20, j10);
                                                    I12.a(new C7405gK(a20.getReference(), f02.d(), f02.f54321f), (C10696a) null);
                                                } else {
                                                    com.android.tools.r8.graph.H0 b12 = this.f43067b.b(a24);
                                                    boolean z14 = f43066h;
                                                    if (!z14 && b12 == null) {
                                                        throw new AssertionError();
                                                    }
                                                    if (!z14) {
                                                        b12.getClass();
                                                        if (!(b12 instanceof com.android.tools.r8.graph.H5)) {
                                                            throw new AssertionError();
                                                        }
                                                    }
                                                    a(I12, f02, b12.H(), f02.f54321f);
                                                }
                                            } else {
                                                z52 = u10;
                                                w52 = w53;
                                                c5645Nu = c5645Nu4;
                                                if (B22 == this.f43069d.f37859F4.f38226d) {
                                                    if (!f43066h && f02.e1() && f02.d().w()) {
                                                        throw new AssertionError();
                                                    }
                                                    com.android.tools.r8.graph.H5 c13 = this.f43072g.f44609b.c(this.f43067b);
                                                    d10.d(c13, j10);
                                                    a(I12, f02, c13, f02.f54321f);
                                                } else if (f02.T1() || (f02 instanceof TJ)) {
                                                    com.android.tools.r8.graph.A2 reference = j10.getReference();
                                                    EnumC8071kK w22 = f02.w2();
                                                    AbstractC5308Hz abstractC5308Hz = c5645Nu.f43777d;
                                                    F1 a21 = f02.b(0).a(this.f43067b, j10, M1.f42128a);
                                                    boolean z15 = C5645Nu.f42728t;
                                                    if (!z15 && abstractC5308Hz != c5645Nu.f43777d) {
                                                        throw new AssertionError();
                                                    }
                                                    if (c5645Nu.f42732s.contains((com.android.tools.r8.graph.A2) c5645Nu.a(B22, reference, w22, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a)) {
                                                        a21.getClass();
                                                        if (a21 instanceof C5341Im0) {
                                                            com.android.tools.r8.graph.A2 a25 = B22.a((com.android.tools.r8.graph.M2) c5645Nu.f42731r.a(a17).f50450b.getOrDefault(Integer.valueOf(((int) a21.m().f41207c) - 1), a17), c5645Nu.f43776c);
                                                            com.android.tools.r8.graph.A2 a26 = B22.a(a17, c5645Nu.f43776c);
                                                            InterfaceC8033k6 interfaceC8033k6 = c5645Nu.f50001i;
                                                            Object obj2 = (com.android.tools.r8.graph.A2) interfaceC8033k6.b(a26);
                                                            Object b13 = interfaceC8033k6.b(a25);
                                                            if (b13 != null) {
                                                                obj2 = b13;
                                                            }
                                                            a22 = (com.android.tools.r8.graph.A2) obj2;
                                                            if (!z15 && a22 == null) {
                                                                throw new AssertionError();
                                                            }
                                                            if (a22 != null) {
                                                                C4798y c4798y2 = this.f43067b;
                                                                c4798y2.getClass();
                                                                com.android.tools.r8.graph.E0 g10 = c4798y2.g(a22.s0());
                                                                com.android.tools.r8.graph.H0 a27 = g10 != null ? g10.a(a22) : null;
                                                                boolean z16 = f43066h;
                                                                if (!z16 && a27 == null) {
                                                                    throw new AssertionError();
                                                                }
                                                                if (!z16) {
                                                                    a27.getClass();
                                                                    if (!(a27 instanceof com.android.tools.r8.graph.H5)) {
                                                                        throw new AssertionError();
                                                                    }
                                                                }
                                                                a(I12, f02, a27.H(), f02.f54321f);
                                                            }
                                                        }
                                                    }
                                                    a22 = null;
                                                    if (a22 != null) {
                                                    }
                                                }
                                            }
                                            c5645Nu4 = c5645Nu;
                                            c12 = set;
                                            c10 = set2;
                                            w53 = w52;
                                            u10 = z52;
                                        }
                                    } else {
                                        z52 = u10;
                                        w52 = w53;
                                        c5645Nu = c5645Nu4;
                                        com.android.tools.r8.graph.H5 e10 = this.f43072g.f44609b.e(this.f43067b);
                                        d10.d(e10, j10);
                                        a(I12, f02, e10, f02.f54321f);
                                    }
                                }
                                c12 = set;
                                c10 = set2;
                                break;
                                break;
                            }
                            z52 = u10;
                            w52 = w53;
                            c5645Nu = c5645Nu4;
                            com.android.tools.r8.graph.H5 h10 = this.f43072g.f44609b.h(this.f43067b);
                            d10.d(h10, j10);
                            a(I12, f02, h10, f02.f54321f);
                        } else {
                            z52 = u10;
                            w52 = w53;
                            c5645Nu = c5645Nu4;
                            C4724u1 c4724u1 = this.f43069d;
                            if ((B22 == c4724u1.f38174v4.f37659k || B22 == c4724u1.f38182w4.f37659k) && (a10 = a(identityHashMap, (b10 = f02.b(1)))) != null) {
                                com.android.tools.r8.graph.H5 b14 = this.f43072g.a(this.f43071f.c(a10)).b(this.f43067b);
                                d10.f(b14, j10);
                                boolean z17 = C7405gK.f48231o;
                                C7238fK c7238fK = new C7238fK();
                                c7238fK.f44718d = b14.getReference();
                                C7238fK c7238fK2 = (C7238fK) c7238fK.a(b10);
                                c7215fB2 = c7215fB;
                                C7238fK c7238fK3 = (C7238fK) ((UJ) c7238fK2.a(c7215fB2, AbstractC8999pu0.a(c7238fK2.f44718d.z0(), C8854p10.h(), (C4798y<?>) this.f43067b)));
                                c7238fK3.f52322b = f02.getPosition();
                                C7405gK c14 = c7238fK3.c();
                                C4724u1 c4724u12 = this.f43069d;
                                C4650q2 c4650q2 = c4724u12.f38174v4;
                                if (B22 == c4650q2.f37659k) {
                                    a23 = c4650q2.f37660l;
                                } else {
                                    a23 = c4724u12.f38182w4.f37660l;
                                }
                                C8405mK c8405mK = new C8405mK(a23, f02.d((C10340xw0) null), AbstractC7552hC.a(f02.C2(), c14.d()));
                                c8405mK.b(f02.getPosition());
                                I12.a(c14, (C10696a) null);
                                if (w52.z()) {
                                    z53 = z52;
                                    I12.a(c7215fB2, z53, this.f43067b.E(), (UnaryOperator<W5>) null).I().add(c8405mK);
                                } else {
                                    z53 = z52;
                                    I12.add(c8405mK);
                                }
                                c5645Nu4 = c5645Nu;
                                u10 = z53;
                                c12 = set;
                                c10 = set2;
                            }
                        }
                        c7215fB2 = c7215fB;
                        c5645Nu4 = c5645Nu;
                        c12 = set;
                        c10 = set2;
                        w53 = w52;
                        u10 = z52;
                    } else {
                        z53 = u10;
                        w52 = w53;
                        c5645Nu = c5645Nu4;
                        if (next3.a2()) {
                            C9103qZ u02 = next3.u0();
                            com.android.tools.r8.graph.M2 a28 = u02.f51805l.a(this.f43069d);
                            if (AbstractC5066Du.a(u02, this.f43069d)) {
                                com.android.tools.r8.graph.M2 m26 = u02.f51805l;
                                C4724u1 c4724u13 = this.f43069d;
                                com.android.tools.r8.graph.M2 a29 = m26.a(c4724u13, c4724u13.f38068i2);
                                C8936pZ c8936pZ = new C8936pZ();
                                c8936pZ.f51549d = u02.f54321f;
                                C4798y c4798y3 = this.f43067b;
                                C8854p10 b15 = C8854p10.b();
                                a29.getClass();
                                c8936pZ.f52321a = c7215fB2.a(AbstractC8999pu0.a(a29, b15, (C4798y<?>) c4798y3), (C4515j0) null);
                                C8936pZ c8936pZ2 = (C8936pZ) c8936pZ.a();
                                c8936pZ2.f51550e = a29;
                                C9103qZ c9103qZ = new C9103qZ(c8936pZ2.f51550e, c8936pZ2.f52321a, c8936pZ2.f51549d);
                                B60 b60 = c8936pZ2.f52322b;
                                if (b60 != null) {
                                    c9103qZ.b(b60);
                                }
                                I12.a(c9103qZ, (C10696a) null);
                            } else if (this.f43071f.b(a28)) {
                                com.android.tools.r8.graph.M2 m27 = u02.f51805l;
                                C4724u1 c4724u14 = this.f43069d;
                                com.android.tools.r8.graph.M2 a30 = m27.a(c4724u14, c4724u14.f37884J1);
                                ArrayList arrayList3 = new ArrayList(u02.f54321f.size());
                                ArrayList arrayList4 = u02.f54321f;
                                int size2 = arrayList4.size();
                                C10340xw0 c10340xw05 = null;
                                int i18 = 0;
                                while (i18 < size2) {
                                    int i19 = i18 + 1;
                                    C10340xw0 c10340xw06 = (C10340xw0) arrayList4.get(i18);
                                    AbstractC8999pu0 u14 = c10340xw06.u();
                                    u14.getClass();
                                    if (u14 instanceof C6301Zd0) {
                                        if (c10340xw05 == null) {
                                            I12.previous();
                                            i10 = size2;
                                            arrayList = arrayList4;
                                            c10340xw05 = I12.a(c7215fB, this.f43070e, 0, AbstractC8999pu0.k());
                                            AbstractC10561zE next4 = I12.next();
                                            if (!f43066h && next4 != u02) {
                                                throw new AssertionError();
                                            }
                                        } else {
                                            i10 = size2;
                                            arrayList = arrayList4;
                                        }
                                        arrayList3.add(c10340xw05);
                                        i18 = i19;
                                        size2 = i10;
                                        arrayList4 = arrayList;
                                    } else {
                                        arrayList3.add(c10340xw06);
                                        i18 = i19;
                                    }
                                }
                                com.android.tools.r8.graph.M2 m28 = this.f43069d.f37947S1;
                                C4798y c4798y4 = this.f43067b;
                                C8854p10 b16 = C8854p10.b();
                                m28.getClass();
                                C9103qZ c9103qZ2 = new C9103qZ(a30, c7215fB2.a(AbstractC8999pu0.a(m28, b16, (C4798y<?>) c4798y4), (C4515j0) null), arrayList3);
                                I12.a(c9103qZ2, (C10696a) null);
                                identityHashMap.put(c9103qZ2, u02.f51805l);
                            }
                        } else if (next3.R1()) {
                            a(next3.i0(), c7215fB, identityHashMap, I12, set2, d10);
                        } else if (next3 instanceof C5576Mo0) {
                            C5576Mo0 K02 = next3.K0();
                            C4554l1 field = K02.getField();
                            com.android.tools.r8.graph.M2 m29 = field.f38297f;
                            if (this.f43071f.b(m29)) {
                                if (!K02.f1()) {
                                    I12.i();
                                } else {
                                    set5 = set2;
                                    set5.addAll(K02.d().a0());
                                    C8664nu c8664nu = this.f43071f;
                                    c8664nu.getClass();
                                    boolean z18 = C8664nu.f51107c;
                                    if (!z18) {
                                        if (!c8664nu.f51108a.containsKey(field.s0())) {
                                            throw new AssertionError();
                                        }
                                    }
                                    if (c8664nu.a(field.s0()).f50452d.contains(field)) {
                                        I12.previous();
                                        C8570nJ c8570nJ = this.f43070e;
                                        C8664nu c8664nu2 = this.f43071f;
                                        if (!z18 && !c8664nu2.f51108a.containsKey(m29)) {
                                            throw new AssertionError();
                                        }
                                        C8497mu a31 = c8664nu2.a(m29);
                                        if (!C8497mu.f50448f && a31.f50453e == -1) {
                                            throw new AssertionError();
                                        }
                                        C10340xw0 a32 = I12.a(c7215fB, c8570nJ, a31.f50453e, AbstractC8999pu0.k());
                                        I12.next();
                                        boolean z19 = C7405gK.f48231o;
                                        C7238fK c7238fK4 = new C7238fK();
                                        C5628Nl0 c5628Nl0 = this.f43072g.f44609b;
                                        d10.d(c5628Nl0.f42691c, c7215fB.j());
                                        com.android.tools.r8.graph.A2 reference2 = c5628Nl0.f42691c.getReference();
                                        c7238fK4.f44718d = reference2;
                                        C7405gK c15 = ((C7238fK) ((C7238fK) ((UJ) c7238fK4.a(c7215fB2, AbstractC8999pu0.a(reference2.z0(), C8854p10.h(), (C4798y<?>) this.f43067b)))).a(a32)).c();
                                        I12.a(c15, (C10696a) null);
                                        identityHashMap.put(c15, m29);
                                        C10340xw0 d11 = c15.d();
                                        d11.getClass();
                                        C9132qj c9132qj = C9132qj.f51861a;
                                        Set<AbstractC10561zE> c16 = AbstractC5513Ll0.c();
                                        C10340xw0.a(c9132qj, d11, c16);
                                        for (AbstractC10561zE abstractC10561zE2 : c16) {
                                            if (abstractC10561zE2.T1()) {
                                                C8405mK k02 = abstractC10561zE2.k0();
                                                if (k02.B2().c(this.f43067b.b().f37859F4.f38224b)) {
                                                    if (k02.e1()) {
                                                        k02.d().f(c15.d());
                                                    }
                                                    W5 b17 = k02.b();
                                                    Set set9 = set8;
                                                    if (b17 != c15.b() && set9.contains(b17)) {
                                                        b17.f45293f.b(k02);
                                                    } else {
                                                        Set set10 = set;
                                                        set10.add(k02);
                                                        set = set10;
                                                    }
                                                    set8 = set9;
                                                }
                                            }
                                        }
                                        c5645Nu4 = c5645Nu;
                                        u10 = z53;
                                        c10 = set5;
                                        c12 = set;
                                    } else {
                                        set3 = set8;
                                        set4 = set;
                                        if (this.f43071f.b(field)) {
                                            C9126qh a33 = c7215fB2.a(this.f43071f.a(field), (C4515j0) null);
                                            I12.a(a33, (C10696a) null);
                                            identityHashMap.put(a33, m29);
                                        }
                                        c5645Nu4 = c5645Nu;
                                        u10 = z53;
                                        c10 = set5;
                                        set8 = set3;
                                        w53 = w52;
                                        c12 = set4;
                                    }
                                }
                            }
                        } else {
                            set3 = set8;
                            set4 = set;
                            set5 = set2;
                            if (next3 instanceof C6558bE) {
                                C6558bE c17 = next3.c();
                                if (this.f43071f.b(c17.getField().f38297f)) {
                                    C4554l1 field2 = c17.getField();
                                    com.android.tools.r8.graph.H5 j11 = c7215fB.j();
                                    C8664nu c8664nu3 = this.f43071f;
                                    com.android.tools.r8.graph.M2 m210 = field2.f38297f;
                                    if (!C8664nu.f51107c && !c8664nu3.b(m210)) {
                                        throw new AssertionError();
                                    }
                                    C8497mu a34 = c8664nu3.a(m210);
                                    if (!C8497mu.f50448f && !a34.f50449a.containsKey(field2)) {
                                        throw new AssertionError();
                                    }
                                    if (((AbstractC9165qu) a34.f50449a.get(field2)).e()) {
                                        a11 = this.f43072g.f44609b.h(this.f43067b);
                                        d10.d(a11, j11);
                                    } else {
                                        a11 = this.f43072g.a(this.f43071f.c(field2.s0())).a(this.f43067b, field2);
                                        d10.f(a11, j11);
                                    }
                                    com.android.tools.r8.graph.H5 h52 = a11;
                                    C10340xw0 a35 = c7215fB2.a(AbstractC8999pu0.a(h52.E(), C8854p10.h(), (C4798y<?>) this.f43067b), (C4515j0) null);
                                    C10340xw0 n10 = c17.n();
                                    AbstractC8999pu0 u15 = n10.u();
                                    u15.getClass();
                                    if (u15 instanceof C6301Zd0) {
                                        I12.previous();
                                        c5645Nu2 = c5645Nu;
                                        c10340xw0 = a35;
                                        set6 = set4;
                                        n10 = I12.a(c7215fB, this.f43070e, 0, AbstractC8999pu0.k());
                                        I12.next();
                                    } else {
                                        set6 = set4;
                                        c5645Nu2 = c5645Nu;
                                        c10340xw0 = a35;
                                    }
                                    com.android.tools.r8.graph.A2 reference3 = h52.getReference();
                                    int i20 = AbstractC7552hC.f48487c;
                                    C7405gK c7405gK = new C7405gK(reference3, c10340xw0, new C5920Sm0(n10));
                                    I12.a(c7405gK, (C10696a) null);
                                    if (this.f43071f.b(c17.getField().f37449i)) {
                                        identityHashMap.put(c7405gK, c17.getField().f37449i);
                                    }
                                } else {
                                    c5645Nu4 = c5645Nu;
                                    u10 = z53;
                                    c10 = set5;
                                    set8 = set3;
                                    w53 = w52;
                                    c12 = set4;
                                }
                            } else {
                                set6 = set4;
                                c5645Nu2 = c5645Nu;
                                if (next3.m1()) {
                                    J3 x10 = next3.x();
                                    W3 a36 = x10.u2().u().a();
                                    if (a36 == null) {
                                        if (!f43066h) {
                                            AbstractC8999pu0 u16 = x10.u2().u();
                                            u16.getClass();
                                            if (!(u16 instanceof C6301Zd0)) {
                                                throw new AssertionError();
                                            }
                                        }
                                    } else if (a36.H() == 1) {
                                        AbstractC8999pu0 E10 = a36.E();
                                        if (E10.s()) {
                                            m22 = E10.b().E();
                                        } else if ((a36.E() instanceof C9736uI) && !x10.u2().j()) {
                                            m22 = (com.android.tools.r8.graph.M2) identityHashMap.get(x10.u2().r());
                                            if (m22 != null) {
                                                if (x10.e1()) {
                                                    set5.addAll(x10.d().a0());
                                                }
                                                J3 w23 = x10.w2();
                                                I12.a(w23, (C10696a) null);
                                                identityHashMap.put(w23, m22);
                                                if (w23.o1()) {
                                                    T3 A10 = w23.A();
                                                    AbstractC8999pu0 u17 = A10.value().u();
                                                    u17.getClass();
                                                    if (u17 instanceof C6301Zd0) {
                                                        I12.previous();
                                                        j32 = w23;
                                                        A10.a(2, I12.a(c7215fB, this.f43070e, 0, AbstractC8999pu0.k()));
                                                        I12.next();
                                                        x10 = j32;
                                                    }
                                                }
                                                j32 = w23;
                                                x10 = j32;
                                            }
                                            z10 = f43066h;
                                            if (!z10) {
                                                W3 a37 = x10.u2().u().a();
                                                if (a37 == null) {
                                                    if (!z10) {
                                                        AbstractC8999pu0 u18 = x10.u2().u();
                                                        u18.getClass();
                                                        if (!(u18 instanceof C6301Zd0)) {
                                                            throw new AssertionError();
                                                        }
                                                    }
                                                } else if (!z10 && x10.f() == YV.f45995b && a37.H() <= 1 && !a37.E().y()) {
                                                    throw new AssertionError();
                                                }
                                            }
                                        }
                                    }
                                    m22 = null;
                                    if (m22 != null) {
                                    }
                                    z10 = f43066h;
                                    if (!z10) {
                                    }
                                } else if (next3 instanceof C9937vZ) {
                                    C9937vZ x02 = next3.x0();
                                    if (!f43066h && !this.f43071f.b(x02.f53141k)) {
                                        throw new AssertionError();
                                    }
                                    I12.a(c7215fB2.a(x02.f53142l + 1, (C4515j0) null), (C10696a) null);
                                }
                            }
                            u10 = z53;
                            c10 = set5;
                            set8 = set3;
                            c5645Nu4 = c5645Nu2;
                            c12 = set6;
                        }
                        c5645Nu4 = c5645Nu;
                        u10 = z53;
                        c12 = set;
                        c10 = set2;
                    }
                    w53 = w52;
                }
            }
            c10340xw02 = c10340xw03;
            c11 = set8;
            c12 = c12;
        }
        Set set11 = c10;
        if (c7215fB2.f47902i.a(36)) {
            a(c7215fB2, identityHashMap, d10);
        }
        c7215fB.x();
        if (!f43066h) {
            c7215fB.r();
        }
        return set11;
    }

    public final boolean b(Map map, C10340xw0 c10340xw0) {
        return a(map, c10340xw0) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final C7215fB c7215fB, IdentityHashMap identityHashMap, final AbstractC7264fX abstractC7264fX) {
        Z5 u10 = c7215fB.u();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            EE I10 = w52.I();
            while (true) {
                C9103qZ c9103qZ = (C9103qZ) I10.a(new C8251lQ0());
                if (c9103qZ != null) {
                    if (AbstractC5066Du.a(c9103qZ, this.f43069d)) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (int i10 = 0; i10 < c9103qZ.f54321f.size(); i10++) {
                            C10340xw0 b10 = c9103qZ.b(i10);
                            final B60 position = c9103qZ.getPosition();
                            if (a(identityHashMap, b10) != null) {
                                c9103qZ.a(i10, ((C7405gK) linkedHashMap.computeIfAbsent(b10, new Function() {
                                    @Override
                                    public final Object apply(Object obj) {
                                        return C5703Ou.this.a(c7215fB, abstractC7264fX, position, (C10340xw0) obj);
                                    }
                                })).d());
                            }
                        }
                        if (!linkedHashMap.isEmpty()) {
                            I10.previous();
                            I10 = I10.a(c7215fB, u10, linkedHashMap.values(), this.f43070e);
                        }
                    }
                }
            }
        }
    }

    public final C7405gK a(C7215fB c7215fB, InterfaceC5008Cu interfaceC5008Cu, B60 b60, C10340xw0 c10340xw0) {
        boolean z10 = C7405gK.f48231o;
        C7238fK c7238fK = (C7238fK) ((C7238fK) new C7238fK().a(c7215fB, this.f43069d.f38004a2.b(this.f43067b))).a(c10340xw0);
        C5628Nl0 c5628Nl0 = this.f43072g.f44609b;
        C4798y c4798y = this.f43067b;
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        com.android.tools.r8.graph.H5 b10 = c5628Nl0.b(c4798y);
        interfaceC5008Cu.d(b10, j10);
        c7238fK.f44718d = b10.getReference();
        c7238fK.f52322b = b60;
        return c7238fK.c();
    }

    public final void a(C7405gK c7405gK, C7215fB c7215fB, final IdentityHashMap identityHashMap, Y5 y52, Set set, AbstractC7264fX abstractC7264fX) {
        ArrayList arrayList;
        C10340xw0 c10340xw0;
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        com.android.tools.r8.graph.H0 e10 = c7405gK.e(this.f43067b, j10);
        if (e10 == null) {
            return;
        }
        com.android.tools.r8.graph.A2 reference = e10.getReference();
        com.android.tools.r8.graph.M2 s02 = reference.s0();
        C4724u1 c4724u1 = this.f43069d;
        if (s02 == c4724u1.f38108n2) {
            if (reference == c4724u1.f37943R4.f36484c && c7405gK.b(0).I()) {
                com.android.tools.r8.graph.M2 m22 = c7405gK.b(0).n().F().f49303l;
                if (this.f43071f.b(m22)) {
                    com.android.tools.r8.graph.H5 c10 = this.f43072g.a(this.f43071f.c(m22)).c(this.f43067b);
                    abstractC7264fX.f(c10, j10);
                    C10340xw0 d10 = c7405gK.d();
                    if (d10 != null) {
                        c10340xw0 = c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null);
                        set.addAll(d10.a0());
                    } else {
                        c10340xw0 = null;
                    }
                    C7405gK c7405gK2 = new C7405gK(c10.getReference(), c10340xw0, Collections.singletonList((C10340xw0) c7405gK.f54321f.get(1)));
                    y52.a(c7405gK2, (C10696a) null);
                    identityHashMap.put(c7405gK2, m22);
                    return;
                }
                return;
            }
            return;
        }
        com.android.tools.r8.graph.M2 s03 = reference.s0();
        C4724u1 c4724u12 = this.f43069d;
        if (s03 == c4724u12.f38132q2) {
            C4517j2 c4517j2 = c4724u12.f37852E4;
            if (reference == c4517j2.f37354f) {
                boolean z10 = f43066h;
                if (!z10 && c7405gK.f54321f.size() != 1) {
                    throw new AssertionError();
                }
                if (a(identityHashMap, c7405gK.b(0)) != null) {
                    if (!z10 && c7405gK.e1() && c7405gK.d().w()) {
                        throw new AssertionError();
                    }
                    com.android.tools.r8.graph.H5 c11 = this.f43072g.f44609b.c(this.f43067b);
                    abstractC7264fX.d(c11, j10);
                    a(y52, c7405gK, c11, c7405gK.f54321f);
                    return;
                }
                return;
            }
            if (reference == c4517j2.f37355g) {
                if (!f43066h && c7405gK.f54321f.size() != 2) {
                    throw new AssertionError();
                }
                if (a(identityHashMap, c7405gK.b(0)) != null) {
                    com.android.tools.r8.graph.H5 d11 = this.f43072g.f44609b.d(this.f43067b);
                    abstractC7264fX.d(d11, j10);
                    a(y52, c7405gK, d11, c7405gK.f54321f);
                    return;
                }
                return;
            }
            if (reference == c4517j2.f37359k) {
                a(c7405gK, j10, identityHashMap, y52, abstractC7264fX);
                return;
            }
            if (reference == c4517j2.f37349a) {
                boolean z11 = f43066h;
                if (!z11 && c7405gK.f54321f.size() != 2) {
                    throw new AssertionError();
                }
                if (AbstractC9907vK.b(c7405gK.f54321f, new V60() {
                    @Override
                    public final boolean apply(Object obj) {
                        return C5703Ou.this.b(identityHashMap, (C10340xw0) obj);
                    }
                })) {
                    ArrayList arrayList2 = new ArrayList(c7405gK.f54321f.size());
                    ArrayList arrayList3 = c7405gK.f54321f;
                    int size = arrayList3.size();
                    int i10 = 0;
                    while (i10 < size) {
                        Object obj = arrayList3.get(i10);
                        i10++;
                        C10340xw0 c10340xw02 = (C10340xw0) obj;
                        AbstractC8999pu0 u10 = c10340xw02.u();
                        u10.getClass();
                        if (u10 instanceof C6301Zd0) {
                            Y5 I10 = c7215fB.k().I();
                            while (I10.hasNext() && I10.h().k1()) {
                                I10.next();
                            }
                            arrayList = arrayList3;
                            arrayList2.add(I10.a(c7215fB, this.f43070e, 0, AbstractC8999pu0.k()));
                        } else {
                            arrayList = arrayList3;
                            if (!f43066h && a(identityHashMap, c10340xw02) == null) {
                                throw new AssertionError();
                            }
                            arrayList2.add(c10340xw02);
                        }
                        arrayList3 = arrayList;
                    }
                    com.android.tools.r8.graph.H5 g10 = this.f43072g.f44609b.g(this.f43067b);
                    abstractC7264fX.d(g10, j10);
                    a(y52, c7405gK, g10, arrayList2);
                    return;
                }
                if (!z11 && !c7405gK.b(0).u().y()) {
                    throw new AssertionError();
                }
                if (!z11 && !c7405gK.b(1).u().y()) {
                    throw new AssertionError();
                }
                return;
            }
            return;
        }
        com.android.tools.r8.graph.M2 s04 = reference.s0();
        C4724u1 c4724u13 = this.f43069d;
        if (s04 == c4724u13.f38052g2) {
            if (reference == c4724u13.f37887J4.f38236A) {
                a(c7405gK, j10, identityHashMap, y52, abstractC7264fX);
                return;
            }
            return;
        }
        com.android.tools.r8.graph.M2 s05 = reference.s0();
        C4724u1 c4724u14 = this.f43069d;
        if (s05 == c4724u14.f37899L2) {
            com.android.tools.r8.graph.T1 t12 = c4724u14.f37971V4;
            if (reference != t12.f36820a && reference == t12.f36821b) {
                if (!f43066h && c7405gK.f54321f.size() != 1) {
                    throw new AssertionError();
                }
                C10340xw0 b10 = c7405gK.b(0);
                if (a(identityHashMap, b10) != null) {
                    c7405gK.d().f(b10);
                    y52.i();
                    return;
                }
                return;
            }
            return;
        }
        if ((e10 instanceof com.android.tools.r8.graph.H5) && this.f43068c.containsKey(e10.getReference())) {
            com.android.tools.r8.graph.H5 r10 = ((C11245i) this.f43067b.f()).c((com.android.tools.r8.graph.A2) this.f43068c.get(e10.getReference())).r();
            if (r10 != null) {
                AbstractC4892Au o10 = r10.A().o();
                o10.getClass();
                if (o10 instanceof C9945vc) {
                    com.android.tools.r8.graph.M2 a10 = a(identityHashMap, c7405gK.b(o10.a().f53153a));
                    if (a10 != null) {
                        C7238fK c7238fK = new C7238fK();
                        c7238fK.f44718d = r10.getReference();
                        C7238fK c7238fK2 = (C7238fK) c7238fK.a(c7405gK.f54321f);
                        c7238fK2.f52322b = c7405gK.getPosition();
                        C7405gK c12 = c7238fK2.c();
                        y52.a(c12, (C10696a) null);
                        identityHashMap.put(c12, a10);
                        abstractC7264fX.b(r10, j10);
                        return;
                    }
                    return;
                }
                if (!f43066h) {
                    throw new AssertionError();
                }
                return;
            }
            if (!f43066h) {
                throw new AssertionError();
            }
        }
    }

    public final void a(C7405gK c7405gK, com.android.tools.r8.graph.H5 h52, IdentityHashMap identityHashMap, Y5 y52, AbstractC7264fX abstractC7264fX) {
        if (!f43066h && c7405gK.f54321f.size() != 1) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 a10 = a(identityHashMap, c7405gK.b(0));
        if (a10 != null) {
            com.android.tools.r8.graph.H5 b10 = this.f43072g.a(this.f43071f.c(a10)).b(this.f43067b);
            abstractC7264fX.f(b10, h52);
            y52.a(new C7405gK(b10.getReference(), c7405gK.d(), c7405gK.f54321f), (C10696a) null);
        }
    }

    public static void a(Y5 y52, VJ vj2, com.android.tools.r8.graph.H5 h52, ArrayList arrayList) {
        C7405gK c7405gK = new C7405gK(h52.getReference(), !vj2.f1() ? null : vj2.d(), arrayList);
        if (!f43066h && c7405gK.e1() && c7405gK.B2().z0().S0()) {
            throw new AssertionError();
        }
        y52.a(c7405gK, (C10696a) null);
    }

    public final com.android.tools.r8.graph.M2 a(Map map, C10340xw0 c10340xw0) {
        AbstractC8999pu0 u10 = c10340xw0.u();
        u10.getClass();
        if (u10 instanceof C9736uI) {
            if (c10340xw0.j()) {
                return null;
            }
            return (com.android.tools.r8.graph.M2) map.get(c10340xw0.r());
        }
        if (!u10.s()) {
            return null;
        }
        com.android.tools.r8.graph.M2 E10 = u10.b().E();
        if (this.f43071f.b(E10)) {
            return E10;
        }
        return null;
    }
}
