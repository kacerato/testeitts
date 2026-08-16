package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class QR {

    public static final boolean f43578d = true;

    public final C4798y f43579a;

    public final C4724u1 f43580b;

    public final C8570nJ f43581c;

    public QR(C4798y c4798y) {
        this.f43579a = c4798y;
        this.f43580b = c4798y.b();
        this.f43581c = c4798y.E();
    }

    public static boolean a(W5 w52, W5 w53) {
        return w53 == w52;
    }

    public static boolean b(W5 w52, W5 w53) {
        return w53 == w52;
    }

    public static boolean c(W5 w52, W5 w53) {
        return w53 == w52;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C7215fB c7215fB, Z5 z52, EE ee2, InterfaceC7169ew interfaceC7169ew, C7835iw c7835iw, C10340xw0 c10340xw0, Set set) {
        C10340xw0 a10 = c7215fB.a(AbstractC8999pu0.a(c7835iw.f49118c, c10340xw0.u().B(), (C4798y<?>) this.f43579a), (C4515j0) null);
        c10340xw0.f(a10);
        int i10 = C5800Qk0.f43725n;
        C5742Pk0 c5742Pk0 = new C5742Pk0();
        c5742Pk0.f48982d = c7835iw.f49118c;
        c5742Pk0.f48983e = c10340xw0;
        c5742Pk0.f52321a = a10;
        c5742Pk0.f52322b = ((AbstractC7670hw) interfaceC7169ew).getPosition();
        C7942jc c10 = c5742Pk0.c();
        int i11 = AbstractC7552hC.f48487c;
        ee2.a(c7215fB, z52, new C5920Sm0(c10), this.f43581c);
        set.addAll(c10.d().a0());
    }

    public final AbstractC10561zE b(com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        return new C6600bY(c10340xw0, m22, this.f43581c);
    }

    public final AbstractC10561zE c(com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        if (!m22.P0() && !m22.S0()) {
            return new C7957jh(c10340xw0, m22, false);
        }
        boolean z10 = C5576Mo0.f42407m;
        C5519Lo0 c5519Lo0 = new C5519Lo0();
        c5519Lo0.f42081d = this.f43580b.e(m22).a();
        c5519Lo0.f52321a = c10340xw0;
        C5576Mo0 c5576Mo0 = new C5576Mo0(c5519Lo0.f42081d, c5519Lo0.f52321a);
        B60 b60 = c5519Lo0.f52322b;
        if (b60 != null) {
            c5576Mo0.b(b60);
        }
        return c5576Mo0;
    }

    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, InterfaceC10172ww interfaceC10172ww, C7835iw c7835iw) {
        if (c7835iw.f49119d != null) {
            ee2.previous();
            int i10 = C5800Qk0.f43725n;
            C5742Pk0 c5742Pk0 = new C5742Pk0();
            c5742Pk0.f48983e = interfaceC10172ww.value();
            com.android.tools.r8.graph.M2 m22 = c7835iw.f49119d;
            C4798y c4798y = this.f43579a;
            C8854p10 B10 = interfaceC10172ww.value().u().B();
            m22.getClass();
            C7777ic c7777ic = (C7777ic) c5742Pk0.a(c7215fB, AbstractC8999pu0.a(m22, B10, (C4798y<?>) c4798y));
            c7777ic.f48982d = c7835iw.f49119d;
            c7777ic.f52322b = interfaceC10172ww.getPosition();
            C7942jc c10 = c7777ic.c();
            ee2.add(c10);
            interfaceC10172ww.a(c10.d());
            if (c10.b().z()) {
                final W5 a10 = ee2.a(c7215fB, z52, this.f43579a.E());
                W5 w52 = (W5) AbstractC10241xK.a(z52, new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return QR.a(W5.this, (W5) obj);
                    }
                });
                if (!f43578d && w52 != a10) {
                    throw new AssertionError();
                }
                z52.f46160c = (W5) z52.f46159b.next();
                ee2 = a10.I();
            }
            AbstractC10561zE next = ee2.next();
            if (!f43578d && next != interfaceC10172ww) {
                throw new AssertionError();
            }
        }
        return ee2;
    }

    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, NW nw) {
        com.android.tools.r8.graph.proto.j jVar = nw.f42624e;
        if (jVar.c()) {
            return ee2;
        }
        for (int i10 = 0; i10 < vj2.f54321f.size(); i10++) {
            com.android.tools.r8.graph.proto.k b10 = jVar.f37623b.a(i10).b();
            if (b10 != null && b10.f37626b != null) {
                ee2.previous();
                C10340xw0 b11 = vj2.b(i10);
                int i11 = C5800Qk0.f43725n;
                C5742Pk0 c5742Pk0 = new C5742Pk0();
                c5742Pk0.f48983e = b11;
                com.android.tools.r8.graph.M2 m22 = b10.f37626b;
                C4798y c4798y = this.f43579a;
                C8854p10 B10 = b11.u().B();
                m22.getClass();
                C7777ic c7777ic = (C7777ic) c5742Pk0.a(c7215fB, AbstractC8999pu0.a(m22, B10, (C4798y<?>) c4798y));
                c7777ic.f48982d = b10.f37626b;
                c7777ic.f52322b = vj2.getPosition();
                C7942jc c10 = c7777ic.c();
                ee2.add(c10);
                vj2.a(i10, c10.d());
                if (c10.b().z()) {
                    final W5 a10 = ee2.a(c7215fB, z52, this.f43579a.E());
                    W5 w52 = (W5) AbstractC10241xK.a(z52, new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return QR.c(W5.this, (W5) obj);
                        }
                    });
                    if (!f43578d && w52 != a10) {
                        throw new AssertionError();
                    }
                    z52.f46160c = (W5) z52.f46159b.next();
                    ee2 = a10.I();
                }
                AbstractC10561zE next = ee2.next();
                if (!f43578d && next != vj2) {
                    throw new AssertionError();
                }
            }
        }
        return ee2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:122:0x0159. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:81:0x0153. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:82:0x0156. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0640  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x06a0  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x011c  */
    /* JADX WARN: Type inference failed for: r11v19, types: [com.android.tools.r8.internal.EE] */
    /* JADX WARN: Type inference failed for: r13v11, types: [com.android.tools.r8.internal.EE] */
    /* JADX WARN: Type inference failed for: r1v82, types: [com.android.tools.r8.internal.EE] */
    /* JADX WARN: Type inference failed for: r37v0, types: [com.android.tools.r8.internal.QR] */
    /* JADX WARN: Type inference failed for: r5v27, types: [com.android.tools.r8.internal.EE] */
    /* JADX WARN: Type inference failed for: r5v45, types: [com.android.tools.r8.internal.EE] */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v72, types: [com.android.tools.r8.internal.EE] */
    /* JADX WARN: Type inference failed for: r7v54, types: [com.android.tools.r8.internal.EE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final C7215fB c7215fB, com.android.tools.r8.graph.H5 h52, R00 r00, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.proto.j jVar, Set set, C10696a c10696a, Set set2) {
        C7215fB c7215fB2;
        C10696a c10696a2;
        KI ki2;
        AbstractC8186l10 abstractC8186l10;
        boolean z10;
        Y5 I10;
        W5 w52;
        C9420sR c9420sR;
        AbstractC5308Hz abstractC5308Hz2;
        boolean z11;
        KI ki3;
        AbstractC8186l10 abstractC8186l102;
        boolean z12;
        R00 r002;
        Set set3;
        Y5 y52;
        com.android.tools.r8.graph.M2 m22;
        C10340xw0 c10340xw0;
        C9420sR c9420sR2;
        KI ki4;
        Y5 y53;
        W5 w53;
        W5 w54;
        KI ki5;
        C9420sR c9420sR3;
        Y5 y54;
        Y5 y55;
        Y5 y56;
        Y5 y57;
        R00 r003;
        C10340xw0 c10340xw02;
        W5 w55;
        Y5 y58;
        Y5 y59;
        C9420sR c9420sR4;
        com.android.tools.r8.graph.proto.c cVar;
        EE ee2;
        EnumC8071kK enumC8071kK;
        NW nw;
        com.android.tools.r8.graph.A2 a22;
        int i10;
        List list;
        com.android.tools.r8.graph.proto.c cVar2;
        Object obj;
        EnumC8071kK enumC8071kK2;
        NW nw2;
        List list2;
        com.android.tools.r8.graph.proto.j jVar2;
        com.android.tools.r8.graph.A2 a23;
        int i11;
        int i12;
        int i13;
        C10340xw0 b10;
        C7215fB c7215fB3;
        Set set4;
        AbstractC10561zE[] abstractC10561zEArr;
        C10340xw0 a10;
        C10340xw0 c10340xw03;
        C10340xw0 c10340xw04;
        AbstractC10561zE[] abstractC10561zEArr2;
        C9420sR c9420sR5;
        W5 w56;
        KI ki6;
        AbstractC8186l10 abstractC8186l103;
        C7215fB c7215fB4;
        com.android.tools.r8.graph.proto.k kVar;
        final ArrayList arrayList;
        Y5 y510;
        Y5 y511;
        C10340xw0 c10340xw05;
        Y5 y512;
        boolean z13;
        C7215fB c7215fB5 = c7215fB;
        com.android.tools.r8.graph.H5 h53 = h52;
        final R00 r004 = r00;
        final AbstractC5308Hz abstractC5308Hz3 = abstractC5308Hz;
        Set set5 = set;
        Z5 u10 = c7215fB.u();
        C9420sR c9420sR6 = new C9420sR(new Supplier() {
            @Override
            public final Object get() {
                return QR.this.a(r004, abstractC5308Hz3);
            }
        });
        KI a11 = KI.a(this.f43579a, c7215fB5, r004, abstractC5308Hz3);
        AbstractC8186l10 a12 = AbstractC8186l10.a(this.f43579a, c7215fB5, r004, abstractC5308Hz3);
        boolean z14 = false;
        while (u10.f46159b.hasNext()) {
            W5 w57 = (W5) u10.f46159b.next();
            u10.f46160c = w57;
            KI ki7 = a11;
            if (w57.z() && !this.f43579a.f38393H.b()) {
                if (!W5.f45287q && !w57.z()) {
                    throw new AssertionError();
                }
                ArrayList arrayList2 = new ArrayList(w57.f45292e.f42510b.size());
                boolean z15 = false;
                for (com.android.tools.r8.graph.M2 m23 : w57.f45292e.f42510b) {
                    com.android.tools.r8.graph.M2 c10 = r004.c(abstractC5308Hz3, m23);
                    arrayList2.add(c10);
                    z15 |= c10 != m23;
                }
                if (z15) {
                    w57.f45292e = new N8(arrayList2, w57.f45292e.f42511c);
                }
                if (z15) {
                    if (!f43578d && !w57.z()) {
                        throw new AssertionError();
                    }
                    N8 j10 = w57.j();
                    AbstractC7552hC abstractC7552hC = j10.f42510b;
                    AbstractC7552hC abstractC7552hC2 = j10.f42511c;
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList3 = new ArrayList();
                    abstractC8186l10 = a12;
                    for (int i14 = 0; i14 < abstractC7552hC.size(); i14++) {
                        if (!hashSet.add(r004.c(abstractC5308Hz3, (com.android.tools.r8.graph.M2) abstractC7552hC.get(i14)))) {
                            arrayList3.add((W5) abstractC7552hC2.get(i14));
                        }
                    }
                    int size = arrayList3.size();
                    int i15 = 0;
                    while (i15 < size) {
                        Object obj2 = arrayList3.get(i15);
                        i15++;
                        ((W5) obj2).R();
                    }
                    if (!f43578d) {
                        w57.c();
                    }
                    boolean isEmpty = arrayList3.isEmpty();
                    z10 = true;
                    z14 |= !isEmpty;
                    boolean z16 = z14;
                    I10 = w57.I();
                    while (I10.hasNext()) {
                        AbstractC10561zE next = I10.next();
                        int r22 = next.r2();
                        if (r22 != 5) {
                            if (r22 == 20) {
                                w52 = w57;
                                c9420sR = c9420sR6;
                                abstractC5308Hz2 = abstractC5308Hz3;
                                z11 = z16;
                                ki3 = ki7;
                                abstractC8186l102 = abstractC8186l10;
                                z12 = z10;
                                r002 = r004;
                                set3 = set5;
                                Y5 y513 = I10;
                                C9820uq O10 = next.O();
                                y513.b(new C9820uq(O10.d(), r002.a(O10.f52961l, abstractC5308Hz2), O10.f52962m.a(r002, abstractC5308Hz2)));
                                y52 = y513;
                            } else if (r22 == 44) {
                                w52 = w57;
                                c9420sR = c9420sR6;
                                abstractC5308Hz2 = abstractC5308Hz3;
                                z11 = z16;
                                ki3 = ki7;
                                abstractC8186l102 = abstractC8186l10;
                                z12 = z10;
                                r002 = r004;
                                set3 = set5;
                                Y5 y514 = I10;
                                new PR(this, c7215fB, next, y514, set).a(next.q0().f46785k, new BiFunction() {
                                    @Override
                                    public final Object apply(Object obj3, Object obj4) {
                                        return QR.this.b((com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                    }
                                }, r002, abstractC5308Hz2);
                                y52 = y514;
                            } else if (r22 == 47) {
                                w52 = w57;
                                c9420sR = c9420sR6;
                                abstractC5308Hz2 = abstractC5308Hz3;
                                z11 = z16;
                                ki3 = ki7;
                                abstractC8186l102 = abstractC8186l10;
                                z12 = z10;
                                r002 = r004;
                                set3 = set5;
                                Y5 y515 = I10;
                                final C8769oZ t02 = next.t0();
                                new PR(this, c7215fB, next, y515, set).a(t02.f51273k, new BiFunction() {
                                    @Override
                                    public final Object apply(Object obj3, Object obj4) {
                                        return QR.a(C8769oZ.this, (com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                    }
                                }, r002, abstractC5308Hz2);
                                y52 = y515;
                            } else if (r22 == 56) {
                                w52 = w57;
                                c9420sR = c9420sR6;
                                abstractC5308Hz2 = abstractC5308Hz3;
                                z11 = z16;
                                ki3 = ki7;
                                abstractC8186l102 = abstractC8186l10;
                                z12 = z10;
                                r002 = r004;
                                set3 = set5;
                                ?? r13 = I10;
                                C10471yk0 G02 = next.G0();
                                y52 = r13;
                                if (!G02.v2()) {
                                    a(c7215fB, u10, r13, G02, jVar);
                                    com.android.tools.r8.graph.M2 E10 = c7215fB.j().E();
                                    C10340xw0 w22 = G02.w2();
                                    if (w22.u().x()) {
                                        m22 = w22.u().c().a(this.f43580b);
                                    } else {
                                        m22 = this.f43580b.f38068i2;
                                    }
                                    C10340xw0 a13 = a(c7215fB, r13, m22, E10, w22);
                                    if (w22 != a13) {
                                        G02 = new C10471yk0(a13);
                                        r13.b(G02);
                                    }
                                    ki3.a(G02, w52);
                                    y52 = r13;
                                }
                            } else if (r22 == 9) {
                                w52 = w57;
                                c9420sR = c9420sR6;
                                abstractC5308Hz2 = abstractC5308Hz3;
                                z11 = z16;
                                ki3 = ki7;
                                abstractC8186l102 = abstractC8186l10;
                                z12 = z10;
                                r002 = r004;
                                set3 = set5;
                                y52 = I10;
                                if (!f43578d) {
                                    throw new AssertionError();
                                }
                            } else if (r22 == 10) {
                                w52 = w57;
                                c9420sR = c9420sR6;
                                abstractC5308Hz2 = abstractC5308Hz3;
                                z11 = z16;
                                ki3 = ki7;
                                abstractC8186l102 = abstractC8186l10;
                                z12 = z10;
                                r002 = r004;
                                set3 = set5;
                                Y5 y516 = I10;
                                final C7942jc D10 = next.D();
                                new PR(this, c7215fB, next, y516, set).a(D10.f49274k, new BiFunction() {
                                    @Override
                                    public final Object apply(Object obj3, Object obj4) {
                                        return QR.a(C7942jc.this, (com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                    }
                                }, r002, abstractC5308Hz2);
                                y52 = y516;
                            } else if (r22 == 49) {
                                w52 = w57;
                                c9420sR = c9420sR6;
                                abstractC5308Hz2 = abstractC5308Hz3;
                                z11 = z16;
                                ki3 = ki7;
                                abstractC8186l102 = abstractC8186l10;
                                z12 = z10;
                                r002 = r004;
                                set3 = set5;
                                Y5 y517 = I10;
                                new PR(this, c7215fB, next, y517, set).a(next.w0().f52627k, new BiFunction() {
                                    @Override
                                    public final Object apply(Object obj3, Object obj4) {
                                        return new C9603tZ((com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                    }
                                }, r002, abstractC5308Hz2);
                                y52 = y517;
                            } else if (r22 != 50) {
                                if (r22 == 59) {
                                    Y5 y518 = I10;
                                    c9420sR = c9420sR6;
                                    z11 = z16;
                                    KI ki8 = ki7;
                                    abstractC8186l102 = abstractC8186l10;
                                    W5 w58 = w57;
                                    z12 = z10;
                                    C7215fB c7215fB6 = c7215fB5;
                                    com.android.tools.r8.graph.H5 h54 = h53;
                                    abstractC5308Hz2 = abstractC5308Hz3;
                                    r002 = r004;
                                    C5576Mo0 K02 = next.K0();
                                    C4554l1 field = K02.getField();
                                    C7835iw f10 = r002.f(abstractC5308Hz2, field);
                                    C4554l1 a14 = a(f10, h54);
                                    if (a14 != field) {
                                        C10340xw0 a15 = K02.e1() ? c7215fB6.a(AbstractC8999pu0.a(a14.getType(), K02.a().B(), (C4798y<?>) this.f43579a), K02.q()) : null;
                                        y518.b(new C5576Mo0(a14, a15));
                                        c10340xw0 = a15;
                                    } else {
                                        c10340xw0 = null;
                                    }
                                    if (c10340xw0 == null) {
                                        set3 = set;
                                        w52 = w58;
                                        ki3 = ki8;
                                        y52 = y518;
                                    } else if (f10.b() && c10340xw0.A()) {
                                        w52 = w58;
                                        ki3 = ki8;
                                        a(c7215fB, u10, y518, K02, f10, c10340xw0, set);
                                        set3 = set;
                                        y52 = y518;
                                    } else {
                                        set3 = set;
                                        w52 = w58;
                                        ki3 = ki8;
                                        y52 = y518;
                                        if (c10340xw0.u() != K02.a()) {
                                            set3.addAll(c10340xw0.a0());
                                            y52 = y518;
                                        }
                                    }
                                } else if (r22 != 60) {
                                    switch (r22) {
                                        case 12:
                                            w54 = w57;
                                            Y5 y519 = I10;
                                            z11 = z16;
                                            ki5 = ki7;
                                            abstractC8186l102 = abstractC8186l10;
                                            z12 = z10;
                                            C7215fB c7215fB7 = c7215fB5;
                                            abstractC5308Hz2 = abstractC5308Hz3;
                                            r002 = r004;
                                            c9420sR3 = c9420sR6;
                                            AbstractC10561zE a16 = new PR(this, c7215fB, next, y519, set).a(next.F().f49303l, new BiFunction() {
                                                @Override
                                                public final Object apply(Object obj3, Object obj4) {
                                                    return QR.this.c((com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                                }
                                            }, r002, abstractC5308Hz2);
                                            y54 = y519;
                                            if (a16 != null) {
                                                y54 = y519;
                                                if (a16 instanceof C5576Mo0) {
                                                    C10340xw0 d10 = a16.d();
                                                    C10340xw0 a17 = c7215fB7.a(d10.u().d().a(C8854p10.h()), d10.s());
                                                    a16.d(a17);
                                                    boolean z17 = AbstractC10330xt.f53865a;
                                                    C4 a18 = C4.a(C7520h10.f48413b, d10, a17, a16, this.f43579a, h52);
                                                    B60 position = a16.getPosition();
                                                    C8570nJ c8570nJ = this.f43581c;
                                                    if (!a18.o() && !c8570nJ.f50690i1) {
                                                        a18.b(B60.s());
                                                    } else {
                                                        a18.b(position);
                                                    }
                                                    y519.add(a18);
                                                    y54 = y519;
                                                }
                                            }
                                            set3 = set;
                                            y55 = y54;
                                            c9420sR = c9420sR3;
                                            y57 = y55;
                                            w52 = w54;
                                            y56 = y57;
                                            ki3 = ki5;
                                            y52 = y56;
                                            break;
                                        case 13:
                                            w54 = w57;
                                            Y5 y520 = I10;
                                            z11 = z16;
                                            ki5 = ki7;
                                            abstractC8186l102 = abstractC8186l10;
                                            z12 = z10;
                                            abstractC5308Hz2 = abstractC5308Hz3;
                                            r002 = r004;
                                            c9420sR3 = c9420sR6;
                                            com.android.tools.r8.graph.C2 c22 = next.H().f50386l;
                                            RR rr = (RR) c9420sR3.a(c9420sR3.f52359b);
                                            rr.getClass();
                                            com.android.tools.r8.graph.C2 a19 = rr.a(c22, 2, h52.getReference());
                                            y54 = y520;
                                            if (a19 != c22) {
                                                y520.b(new C8458mh(next.d(), a19));
                                                y54 = y520;
                                            }
                                            set3 = set;
                                            y55 = y54;
                                            c9420sR = c9420sR3;
                                            y57 = y55;
                                            w52 = w54;
                                            y56 = y57;
                                            ki3 = ki5;
                                            y52 = y56;
                                            break;
                                        case 14:
                                            w54 = w57;
                                            Y5 y521 = I10;
                                            z11 = z16;
                                            ki5 = ki7;
                                            abstractC8186l102 = abstractC8186l10;
                                            z12 = z10;
                                            abstractC5308Hz2 = abstractC5308Hz3;
                                            r002 = r004;
                                            c9420sR3 = c9420sR6;
                                            C8625nh I11 = next.I();
                                            com.android.tools.r8.graph.I2 a20 = ((RR) c9420sR3.a(c9420sR3.f52359b)).a(I11.f51030l);
                                            y54 = y521;
                                            if (I11.f51030l != a20) {
                                                y521.b(new C8625nh(I11.d(), a20));
                                                y54 = y521;
                                            }
                                            set3 = set;
                                            y55 = y54;
                                            c9420sR = c9420sR3;
                                            y57 = y55;
                                            w52 = w54;
                                            y56 = y57;
                                            ki3 = ki5;
                                            y52 = y56;
                                            break;
                                        default:
                                            switch (r22) {
                                                case 27:
                                                    w54 = w57;
                                                    z11 = z16;
                                                    ki5 = ki7;
                                                    abstractC8186l102 = abstractC8186l10;
                                                    z12 = z10;
                                                    abstractC5308Hz2 = abstractC5308Hz3;
                                                    r002 = r004;
                                                    c9420sR3 = c9420sR6;
                                                    Y5 y522 = I10;
                                                    new PR(this, c7215fB, next, y522, set).a(next.W().f52317k, new BiFunction() {
                                                        @Override
                                                        public final Object apply(Object obj3, Object obj4) {
                                                            return QR.a((com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                                        }
                                                    }, r002, abstractC5308Hz2);
                                                    y54 = y522;
                                                    set3 = set;
                                                    y55 = y54;
                                                    c9420sR = c9420sR3;
                                                    y57 = y55;
                                                    w52 = w54;
                                                    y56 = y57;
                                                    ki3 = ki5;
                                                    y52 = y56;
                                                    break;
                                                case 28:
                                                    Y5 y523 = I10;
                                                    c9420sR = c9420sR6;
                                                    z11 = z16;
                                                    abstractC8186l102 = abstractC8186l10;
                                                    C7215fB c7215fB8 = c7215fB5;
                                                    KI ki9 = ki7;
                                                    z12 = z10;
                                                    com.android.tools.r8.graph.H5 h55 = h53;
                                                    abstractC5308Hz2 = abstractC5308Hz3;
                                                    r002 = r004;
                                                    W5 w59 = w57;
                                                    C6558bE c11 = next.c();
                                                    C4554l1 field2 = c11.getField();
                                                    C7835iw f11 = r002.f(abstractC5308Hz2, field2);
                                                    C4554l1 a21 = a(f11, h55);
                                                    if (a21 != field2) {
                                                        C10340xw0 a24 = c11.e1() ? c7215fB8.a(AbstractC8999pu0.a(a21.getType(), c11.a().B(), (C4798y<?>) this.f43579a), c11.q()) : null;
                                                        Y5 y524 = y523;
                                                        y524.b(new C6558bE(a24, c11.n(), a21));
                                                        c10340xw05 = a24;
                                                        y511 = y524;
                                                    } else {
                                                        y511 = y523;
                                                        c10340xw05 = null;
                                                    }
                                                    if (c10340xw05 == null) {
                                                        ki5 = ki9;
                                                        set3 = set;
                                                        w52 = w59;
                                                        y56 = y511;
                                                        ki3 = ki5;
                                                        y52 = y56;
                                                    } else if (f11.b() && c10340xw05.A()) {
                                                        ki5 = ki9;
                                                        w54 = w59;
                                                        a(c7215fB, u10, y511, c11, f11, c10340xw05, set);
                                                        set3 = set;
                                                        y57 = y511;
                                                        w52 = w54;
                                                        y56 = y57;
                                                        ki3 = ki5;
                                                        y52 = y56;
                                                    } else {
                                                        ki5 = ki9;
                                                        w54 = w59;
                                                        c9420sR3 = c9420sR;
                                                        y54 = y511;
                                                        if (c10340xw05.u() != c11.a()) {
                                                            set.addAll(c10340xw05.a0());
                                                            set3 = set;
                                                            y55 = y511;
                                                            c9420sR = c9420sR3;
                                                            y57 = y55;
                                                            w52 = w54;
                                                            y56 = y57;
                                                            ki3 = ki5;
                                                            y52 = y56;
                                                            break;
                                                        }
                                                        set3 = set;
                                                        y55 = y54;
                                                        c9420sR = c9420sR3;
                                                        y57 = y55;
                                                        w52 = w54;
                                                        y56 = y57;
                                                        ki3 = ki5;
                                                        y52 = y56;
                                                    }
                                                    break;
                                                case 29:
                                                    Y5 y525 = I10;
                                                    c9420sR = c9420sR6;
                                                    abstractC5308Hz2 = abstractC5308Hz3;
                                                    z11 = z16;
                                                    abstractC8186l102 = abstractC8186l10;
                                                    r002 = r004;
                                                    KI ki10 = ki7;
                                                    final C8391mE Y10 = next.Y();
                                                    z12 = z10;
                                                    new PR(this, c7215fB, next, y525, set).a(Y10.f50246k, new BiFunction() {
                                                        @Override
                                                        public final Object apply(Object obj3, Object obj4) {
                                                            return QR.a(C8391mE.this, (com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                                        }
                                                    }, r002, abstractC5308Hz2);
                                                    set3 = set;
                                                    ki3 = ki10;
                                                    w52 = w57;
                                                    y52 = y525;
                                                    break;
                                                case 30:
                                                    Y5 y526 = I10;
                                                    com.android.tools.r8.graph.H5 h56 = h53;
                                                    R00 r005 = r004;
                                                    AbstractC5308Hz abstractC5308Hz4 = abstractC5308Hz3;
                                                    boolean z18 = z16;
                                                    AbstractC8186l10 abstractC8186l104 = abstractC8186l10;
                                                    W5 w510 = w57;
                                                    C7215fB c7215fB9 = c7215fB5;
                                                    KI ki11 = ki7;
                                                    C9225rE m10 = next.m();
                                                    C4554l1 field3 = m10.getField();
                                                    C7835iw f12 = r005.f(abstractC5308Hz4, field3);
                                                    C9420sR c9420sR7 = c9420sR6;
                                                    ?? a25 = a(c7215fB, u10, y526, m10, f12);
                                                    C4554l1 a26 = a(f12, h56);
                                                    if (a26 != field3) {
                                                        ?? r72 = a25;
                                                        C10340xw0 a27 = a(c7215fB, a25, field3.f37449i, a26.f37449i, m10.value());
                                                        z13 = true;
                                                        C9225rE c9225rE = new C9225rE(a26, m10.n(), a27, true);
                                                        r72.b(c9225rE);
                                                        ki11.a(m10, c9225rE, w510);
                                                        y512 = r72;
                                                    } else {
                                                        y512 = a25;
                                                        z13 = true;
                                                    }
                                                    set5 = set;
                                                    ki7 = ki11;
                                                    w57 = w510;
                                                    r004 = r005;
                                                    c7215fB5 = c7215fB9;
                                                    z16 = z18;
                                                    abstractC8186l10 = abstractC8186l104;
                                                    abstractC5308Hz3 = abstractC5308Hz4;
                                                    h53 = h56;
                                                    z10 = z13;
                                                    I10 = y512;
                                                    c9420sR6 = c9420sR7;
                                                default:
                                                    switch (r22) {
                                                        case 32:
                                                            W5 w511 = w57;
                                                            Y5 y527 = I10;
                                                            z11 = z16;
                                                            AbstractC8186l10 abstractC8186l105 = abstractC8186l10;
                                                            C7215fB c7215fB10 = c7215fB5;
                                                            KI ki12 = ki7;
                                                            OJ b02 = next.b0();
                                                            com.android.tools.r8.graph.D0 d02 = b02.f42851l;
                                                            com.android.tools.r8.graph.D0 a28 = ((RR) c9420sR6.a(c9420sR6.f52359b)).a(d02, h52);
                                                            if (a28 != d02) {
                                                                if (b02.e1()) {
                                                                    AbstractC8999pu0 a29 = b02.a();
                                                                    C4798y c4798y = this.f43579a;
                                                                    a29.getClass();
                                                                    r003 = r00;
                                                                    abstractC5308Hz2 = abstractC5308Hz;
                                                                    c10340xw02 = c7215fB10.a(a29.a(c4798y, r003, abstractC5308Hz2, Collections.EMPTY_SET), b02.q());
                                                                } else {
                                                                    r003 = r00;
                                                                    abstractC5308Hz2 = abstractC5308Hz;
                                                                    c10340xw02 = null;
                                                                }
                                                                y527.b(new OJ(a28, c10340xw02, b02.f54321f));
                                                                if (c10340xw02 != null && c10340xw02.u() != b02.a()) {
                                                                    set5.addAll(c10340xw02.a0());
                                                                }
                                                                c9420sR = c9420sR6;
                                                                ki3 = ki12;
                                                                w52 = w511;
                                                                abstractC8186l102 = abstractC8186l105;
                                                                set3 = set5;
                                                                z12 = true;
                                                                y52 = y527;
                                                                r002 = r003;
                                                                break;
                                                            } else {
                                                                abstractC5308Hz2 = abstractC5308Hz;
                                                                c9420sR = c9420sR6;
                                                                ki3 = ki12;
                                                                w52 = w511;
                                                                abstractC8186l102 = abstractC8186l105;
                                                                set3 = set5;
                                                                y52 = y527;
                                                                z12 = true;
                                                                r002 = r00;
                                                                break;
                                                            }
                                                            break;
                                                        case 33:
                                                        case 34:
                                                        case 38:
                                                        case 39:
                                                        case 40:
                                                            w55 = w57;
                                                            y58 = I10;
                                                            z11 = z16;
                                                            abstractC8186l102 = abstractC8186l10;
                                                            final VJ e02 = next.e0();
                                                            final com.android.tools.r8.graph.A2 B22 = e02.B2();
                                                            final com.android.tools.r8.graph.M2 m24 = B22.f38297f;
                                                            if (m24.E0()) {
                                                                c9420sR4 = c9420sR6;
                                                                new PR(this, c7215fB, next, y58, set).a(m24.a(this.f43580b), new BiFunction() {
                                                                    @Override
                                                                    public final Object apply(Object obj3, Object obj4) {
                                                                        return QR.this.a(m24, B22, e02, (com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                                                    }
                                                                }, r004, abstractC5308Hz3);
                                                            } else {
                                                                c9420sR4 = c9420sR6;
                                                                if (!m24.I0()) {
                                                                    if (!f43578d) {
                                                                        throw new AssertionError();
                                                                    }
                                                                } else {
                                                                    NW a30 = r00.a(B22, h52.getReference(), e02.w2(), abstractC5308Hz, AbstractC9530t40.f52519c);
                                                                    com.android.tools.r8.graph.A2 a210 = (com.android.tools.r8.graph.A2) a30.f41111a;
                                                                    EnumC8071kK enumC8071kK3 = a30.f42623d;
                                                                    Z5 z52 = u10;
                                                                    Z5 z53 = u10;
                                                                    int a31 = a210.a(enumC8071kK3.c());
                                                                    EE a32 = a(c7215fB, z52, y58, e02, a30);
                                                                    com.android.tools.r8.graph.proto.j jVar3 = a30.f42624e;
                                                                    if (!jVar3.b() && jVar3.f37622a.size() <= 0) {
                                                                        com.android.tools.r8.graph.proto.d dVar = jVar3.f37623b.f37606c;
                                                                        dVar.getClass();
                                                                        if ((dVar instanceof com.android.tools.r8.graph.proto.f) && com.android.tools.r8.graph.proto.c.a(Integer.MAX_VALUE, jVar3.f37623b.f37604a) <= 0 && e02.w2() == enumC8071kK3 && a210 == B22) {
                                                                            c7215fB4 = c7215fB;
                                                                            set5 = set;
                                                                            y510 = a32;
                                                                            ki6 = ki7;
                                                                            c9420sR5 = c9420sR4;
                                                                            w56 = w55;
                                                                            abstractC8186l103 = abstractC8186l102;
                                                                            u10 = z53;
                                                                            h53 = h52;
                                                                            I10 = y510;
                                                                            ki7 = ki6;
                                                                            w57 = w56;
                                                                            abstractC8186l10 = abstractC8186l103;
                                                                            c7215fB5 = c7215fB4;
                                                                            z16 = z11;
                                                                            c9420sR6 = c9420sR5;
                                                                            z10 = true;
                                                                            r004 = r00;
                                                                            abstractC5308Hz3 = abstractC5308Hz;
                                                                        }
                                                                    }
                                                                    com.android.tools.r8.graph.proto.c cVar3 = jVar3.f37623b;
                                                                    if (cVar3.b()) {
                                                                        if (jVar3.a()) {
                                                                            arrayList = new ArrayList(a31);
                                                                            arrayList.addAll(e02.f54321f);
                                                                            jVar3.f37622a.forEach(new Consumer() {
                                                                                @Override
                                                                                public final void accept(Object obj3) {
                                                                                    List.this.add(null);
                                                                                }
                                                                            });
                                                                        } else {
                                                                            arrayList = e02.f54321f;
                                                                        }
                                                                        cVar = cVar3;
                                                                        ee2 = a32;
                                                                        enumC8071kK = enumC8071kK3;
                                                                        nw = a30;
                                                                        a22 = a210;
                                                                        i10 = a31;
                                                                        list = arrayList;
                                                                    } else {
                                                                        List asList = Arrays.asList(new C10340xw0[a31]);
                                                                        int i16 = 0;
                                                                        int i17 = 0;
                                                                        while (i16 < e02.f54321f.size()) {
                                                                            com.android.tools.r8.graph.proto.b a33 = cVar3.a(i16);
                                                                            if (a33.c()) {
                                                                                i17++;
                                                                                cVar2 = cVar3;
                                                                                obj = a32;
                                                                                enumC8071kK2 = enumC8071kK3;
                                                                                nw2 = a30;
                                                                                a23 = a210;
                                                                                i11 = a31;
                                                                                i12 = i16;
                                                                                list2 = asList;
                                                                                jVar2 = jVar3;
                                                                            } else {
                                                                                List list3 = asList;
                                                                                com.android.tools.r8.graph.proto.j jVar4 = jVar3;
                                                                                int a34 = cVar3.f37606c.a(i16 - i17);
                                                                                if (a33 instanceof com.android.tools.r8.graph.proto.k) {
                                                                                    com.android.tools.r8.graph.proto.k b11 = a33.b();
                                                                                    nw2 = a30;
                                                                                    list2 = list3;
                                                                                    a23 = a210;
                                                                                    i12 = i16;
                                                                                    enumC8071kK2 = enumC8071kK3;
                                                                                    cVar2 = cVar3;
                                                                                    jVar2 = jVar4;
                                                                                    i11 = a31;
                                                                                    i13 = a34;
                                                                                    obj = a32;
                                                                                    b10 = a(c7215fB, a32, b11.f(), b11.e(), e02.b(i16));
                                                                                } else {
                                                                                    cVar2 = cVar3;
                                                                                    obj = a32;
                                                                                    enumC8071kK2 = enumC8071kK3;
                                                                                    nw2 = a30;
                                                                                    list2 = list3;
                                                                                    jVar2 = jVar4;
                                                                                    a23 = a210;
                                                                                    i11 = a31;
                                                                                    i12 = i16;
                                                                                    i13 = a34;
                                                                                    b10 = e02.b(i12);
                                                                                }
                                                                                list2.set(i13, b10);
                                                                            }
                                                                            i16 = i12 + 1;
                                                                            jVar3 = jVar2;
                                                                            asList = list2;
                                                                            a210 = a23;
                                                                            a31 = i11;
                                                                            cVar3 = cVar2;
                                                                            a32 = obj;
                                                                            a30 = nw2;
                                                                            enumC8071kK3 = enumC8071kK2;
                                                                        }
                                                                        cVar = cVar3;
                                                                        ee2 = a32;
                                                                        enumC8071kK = enumC8071kK3;
                                                                        nw = a30;
                                                                        a22 = a210;
                                                                        i10 = a31;
                                                                        list = asList;
                                                                    }
                                                                    com.android.tools.r8.graph.proto.j jVar5 = jVar3;
                                                                    if (e02.e1()) {
                                                                        if (!e02.f1()) {
                                                                            e02.d((C10340xw0) null);
                                                                        } else {
                                                                            com.android.tools.r8.graph.proto.k kVar2 = jVar5.f37624c;
                                                                            if (kVar2 != null && kVar2.f37628d.S0()) {
                                                                                NR nr = new NR(this, e02, r00, B22, abstractC5308Hz);
                                                                                if (!f43578d) {
                                                                                    C4798y<C11245i> M10 = this.f43579a.M();
                                                                                    AbstractC5746Pm0 b12 = jVar5.f37624c.f37629e.b(M10, h52.E(), M10.v(), r004);
                                                                                    if (!com.android.tools.r8.graph.proto.j.f37621e && !b12.b(M10, h53)) {
                                                                                        throw new AssertionError();
                                                                                    }
                                                                                }
                                                                                C4798y<C11245i> M11 = this.f43579a.M();
                                                                                boolean z19 = com.android.tools.r8.graph.proto.j.f37621e;
                                                                                if (!z19 && jVar5.f37624c == null) {
                                                                                    throw new AssertionError();
                                                                                }
                                                                                if (!z19 && jVar5.f37624c.f37629e == null) {
                                                                                    throw new AssertionError();
                                                                                }
                                                                                AbstractC5746Pm0 abstractC5746Pm0 = jVar5.f37624c.f37629e;
                                                                                abstractC5746Pm0.getClass();
                                                                                c7215fB3 = c7215fB;
                                                                                AbstractC10561zE[] a35 = abstractC5746Pm0.a(M11, c7215fB.j(), c7215fB3, nr);
                                                                                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) X3.b(a35);
                                                                                if (e02.d().z()) {
                                                                                    abstractC10561zE.d().a(e02.d().s());
                                                                                }
                                                                                e02.d().a(abstractC10561zE.d(), c10696a);
                                                                                if (e02.a().equals(abstractC10561zE.a())) {
                                                                                    set4 = set;
                                                                                } else {
                                                                                    set4 = set;
                                                                                    set4.addAll(abstractC10561zE.d().a0());
                                                                                }
                                                                                abstractC10561zEArr = a35;
                                                                                if (!jVar5.b()) {
                                                                                    if (e02.e1() && ((kVar = jVar5.f37624c) == null || !kVar.f37628d.S0())) {
                                                                                        a10 = c7215fB3.a(jVar5.f37624c.e().b(this.f43579a), e02.q());
                                                                                        set4.addAll(e02.d().a0());
                                                                                        c10340xw03 = a10;
                                                                                    }
                                                                                    c10340xw03 = null;
                                                                                } else {
                                                                                    if (e02.e1()) {
                                                                                        AbstractC8999pu0 a36 = e02.a();
                                                                                        C4798y c4798y2 = this.f43579a;
                                                                                        a36.getClass();
                                                                                        a10 = c7215fB3.a(a36.a(c4798y2, r004, abstractC5308Hz3, Collections.EMPTY_SET), e02.q());
                                                                                        c10340xw03 = a10;
                                                                                    }
                                                                                    c10340xw03 = null;
                                                                                }
                                                                                IdentityHashMap identityHashMap = new IdentityHashMap();
                                                                                int size2 = i10 - jVar5.f37622a.size();
                                                                                int i18 = size2;
                                                                                for (final AbstractC4952Bv abstractC4952Bv : jVar5.f37622a) {
                                                                                    int a37 = cVar.f37606c.a(i18);
                                                                                    com.android.tools.r8.graph.A2 a211 = a22;
                                                                                    final com.android.tools.r8.graph.M2 a38 = a211.a(a37, enumC8071kK.c());
                                                                                    final AbstractC4935Bm0 a39 = abstractC4952Bv.a(this.f43579a);
                                                                                    com.android.tools.r8.graph.proto.c cVar4 = cVar;
                                                                                    final EE ee3 = ee2;
                                                                                    IdentityHashMap identityHashMap2 = identityHashMap;
                                                                                    C10340xw0 c10340xw06 = c10340xw03;
                                                                                    AbstractC10561zE[] abstractC10561zEArr3 = abstractC10561zEArr;
                                                                                    KI ki13 = ki7;
                                                                                    C9420sR c9420sR8 = c9420sR4;
                                                                                    EnumC8071kK enumC8071kK4 = enumC8071kK;
                                                                                    int i19 = i18;
                                                                                    list.set(a37, (C10340xw0) ((Map) identityHashMap.computeIfAbsent(a39, new Function() {
                                                                                        @Override
                                                                                        public final Object apply(Object obj3) {
                                                                                            return QR.a((AbstractC4935Bm0) obj3);
                                                                                        }
                                                                                    })).computeIfAbsent(a38, new Function() {
                                                                                        @Override
                                                                                        public final Object apply(Object obj3) {
                                                                                            return QR.this.a(ee3, a39, c7215fB, abstractC4952Bv, a38, e02, (com.android.tools.r8.graph.M2) obj3);
                                                                                        }
                                                                                    }));
                                                                                    if (list.size() > 255) {
                                                                                        throw new C5325If("The addition of extra unused null parameters in R8 led to the overflow of the number of arguments of the method " + ((Object) a211));
                                                                                    }
                                                                                    i18 = i19 + 1;
                                                                                    a22 = a211;
                                                                                    c10340xw03 = c10340xw06;
                                                                                    cVar = cVar4;
                                                                                    identityHashMap = identityHashMap2;
                                                                                    abstractC10561zEArr = abstractC10561zEArr3;
                                                                                    ki7 = ki13;
                                                                                    c9420sR4 = c9420sR8;
                                                                                    enumC8071kK = enumC8071kK4;
                                                                                }
                                                                                c10340xw04 = c10340xw03;
                                                                                abstractC10561zEArr2 = abstractC10561zEArr;
                                                                                c9420sR5 = c9420sR4;
                                                                                com.android.tools.r8.graph.A2 a212 = a22;
                                                                                VJ a40 = VJ.a(enumC8071kK, a212, c10340xw04, list, U30.a(this.f43579a.g(a212.f38297f), new C5598Mz0(), false));
                                                                                ?? r12 = ee2;
                                                                                r12.b(a40);
                                                                                w56 = w55;
                                                                                NW nw3 = nw;
                                                                                ki6 = ki7;
                                                                                ki6.a(e02, a40, nw3, w56);
                                                                                abstractC8186l103 = abstractC8186l102;
                                                                                abstractC8186l103.a(e02, a40, nw3);
                                                                                if (c10340xw04 != null || c10340xw04.u() == next.a()) {
                                                                                    set5 = set;
                                                                                } else {
                                                                                    set5 = set;
                                                                                    set5.addAll(c10340xw04.a0());
                                                                                }
                                                                                if (abstractC10561zEArr2 != null) {
                                                                                    c7215fB4 = c7215fB;
                                                                                    u10 = z53;
                                                                                    y510 = r12;
                                                                                } else if (w56.z()) {
                                                                                    int length = abstractC10561zEArr2.length;
                                                                                    I10 = r12;
                                                                                    int i20 = 0;
                                                                                    while (i20 < length) {
                                                                                        AbstractC10561zE abstractC10561zE2 = abstractC10561zEArr2[i20];
                                                                                        Z5 z54 = z53;
                                                                                        W5 a41 = I10.a(c7215fB, z54, this.f43579a.E());
                                                                                        W5 b13 = z54.b(a41);
                                                                                        if (!f43578d && b13 != a41) {
                                                                                            throw new AssertionError();
                                                                                        }
                                                                                        z54.f46160c = (W5) z54.f46159b.next();
                                                                                        I10 = a41.I();
                                                                                        I10.add(abstractC10561zE2);
                                                                                        i20++;
                                                                                        z53 = z54;
                                                                                    }
                                                                                    h53 = h52;
                                                                                    ki7 = ki6;
                                                                                    w57 = w56;
                                                                                    abstractC8186l10 = abstractC8186l103;
                                                                                    z16 = z11;
                                                                                    u10 = z53;
                                                                                    c9420sR6 = c9420sR5;
                                                                                    z10 = true;
                                                                                    c7215fB5 = c7215fB;
                                                                                    r004 = r00;
                                                                                    abstractC5308Hz3 = abstractC5308Hz;
                                                                                } else {
                                                                                    c7215fB4 = c7215fB;
                                                                                    u10 = z53;
                                                                                    r12.a(abstractC10561zEArr2);
                                                                                    y510 = r12;
                                                                                }
                                                                                h53 = h52;
                                                                                I10 = y510;
                                                                                ki7 = ki6;
                                                                                w57 = w56;
                                                                                abstractC8186l10 = abstractC8186l103;
                                                                                c7215fB5 = c7215fB4;
                                                                                z16 = z11;
                                                                                c9420sR6 = c9420sR5;
                                                                                z10 = true;
                                                                                r004 = r00;
                                                                                abstractC5308Hz3 = abstractC5308Hz;
                                                                            }
                                                                        }
                                                                    }
                                                                    c7215fB3 = c7215fB;
                                                                    set4 = set;
                                                                    abstractC10561zEArr = null;
                                                                    if (!jVar5.b()) {
                                                                    }
                                                                    IdentityHashMap identityHashMap3 = new IdentityHashMap();
                                                                    int size22 = i10 - jVar5.f37622a.size();
                                                                    int i182 = size22;
                                                                    while (r19.hasNext()) {
                                                                    }
                                                                    c10340xw04 = c10340xw03;
                                                                    abstractC10561zEArr2 = abstractC10561zEArr;
                                                                    c9420sR5 = c9420sR4;
                                                                    com.android.tools.r8.graph.A2 a2122 = a22;
                                                                    VJ a402 = VJ.a(enumC8071kK, a2122, c10340xw04, list, U30.a(this.f43579a.g(a2122.f38297f), new C5598Mz0(), false));
                                                                    ?? r122 = ee2;
                                                                    r122.b(a402);
                                                                    w56 = w55;
                                                                    NW nw32 = nw;
                                                                    ki6 = ki7;
                                                                    ki6.a(e02, a402, nw32, w56);
                                                                    abstractC8186l103 = abstractC8186l102;
                                                                    abstractC8186l103.a(e02, a402, nw32);
                                                                    if (c10340xw04 != null) {
                                                                    }
                                                                    set5 = set;
                                                                    if (abstractC10561zEArr2 != null) {
                                                                    }
                                                                    h53 = h52;
                                                                    I10 = y510;
                                                                    ki7 = ki6;
                                                                    w57 = w56;
                                                                    abstractC8186l10 = abstractC8186l103;
                                                                    c7215fB5 = c7215fB4;
                                                                    z16 = z11;
                                                                    c9420sR6 = c9420sR5;
                                                                    z10 = true;
                                                                    r004 = r00;
                                                                    abstractC5308Hz3 = abstractC5308Hz;
                                                                }
                                                            }
                                                            set3 = set;
                                                            abstractC5308Hz2 = abstractC5308Hz3;
                                                            ki3 = ki7;
                                                            c9420sR = c9420sR4;
                                                            y59 = y58;
                                                            w52 = w55;
                                                            z12 = true;
                                                            r002 = r004;
                                                            y52 = y59;
                                                            break;
                                                        case 35:
                                                            w55 = w57;
                                                            y58 = I10;
                                                            z11 = z16;
                                                            abstractC8186l102 = abstractC8186l10;
                                                            final XJ g02 = next.g0();
                                                            new PR(this, c7215fB, next, y58, set).a(g02.f45654l, new BiFunction() {
                                                                @Override
                                                                public final Object apply(Object obj3, Object obj4) {
                                                                    return QR.a(XJ.this, (com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                                                }
                                                            }, r004, abstractC5308Hz3);
                                                            c9420sR = c9420sR6;
                                                            abstractC5308Hz2 = abstractC5308Hz3;
                                                            set3 = set5;
                                                            ki3 = ki7;
                                                            y59 = y58;
                                                            w52 = w55;
                                                            z12 = true;
                                                            r002 = r004;
                                                            y52 = y59;
                                                            break;
                                                        case 36:
                                                            final C9103qZ u02 = next.u0();
                                                            w55 = w57;
                                                            z11 = z16;
                                                            y58 = I10;
                                                            abstractC8186l102 = abstractC8186l10;
                                                            new PR(this, c7215fB, next, I10, set).a(u02.f51805l, new BiFunction() {
                                                                @Override
                                                                public final Object apply(Object obj3, Object obj4) {
                                                                    return QR.a(C9103qZ.this, (com.android.tools.r8.graph.M2) obj3, (C10340xw0) obj4);
                                                                }
                                                            }, r004, abstractC5308Hz3);
                                                            c9420sR = c9420sR6;
                                                            abstractC5308Hz2 = abstractC5308Hz3;
                                                            set3 = set5;
                                                            ki3 = ki7;
                                                            y59 = y58;
                                                            w52 = w55;
                                                            z12 = true;
                                                            r002 = r004;
                                                            y52 = y59;
                                                            break;
                                                        case 37:
                                                            YJ h02 = next.h0();
                                                            if (!f43578d && !this.f43580b.f38015b5.a(h02.B2())) {
                                                                throw new AssertionError();
                                                            }
                                                            com.android.tools.r8.graph.I2 a42 = ((RR) c9420sR6.a(c9420sR6.f52359b)).a(h02.f45971n);
                                                            if (h02.f45971n != a42) {
                                                                I10.b(new YJ(h02.B2(), a42, h02.d(), h02.f54321f));
                                                                w52 = w57;
                                                                c9420sR = c9420sR6;
                                                                abstractC5308Hz2 = abstractC5308Hz3;
                                                                set3 = set5;
                                                                z11 = z16;
                                                                ki3 = ki7;
                                                                abstractC8186l102 = abstractC8186l10;
                                                                z12 = true;
                                                                y59 = I10;
                                                                r002 = r004;
                                                                y52 = y59;
                                                                break;
                                                            }
                                                            break;
                                                        default:
                                                            if (next.e1()) {
                                                                AbstractC8999pu0 a43 = next.a();
                                                                C4798y c4798y3 = this.f43579a;
                                                                a43.getClass();
                                                                AbstractC8999pu0 a44 = a43.a(c4798y3, r004, abstractC5308Hz3, Collections.EMPTY_SET);
                                                                if (a44 != a43) {
                                                                    next.d().a(a44);
                                                                    set5.addAll(next.d().a0());
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                            }
                                            break;
                                    }
                                } else {
                                    W5 w512 = w57;
                                    Y5 y528 = I10;
                                    z11 = z16;
                                    KI ki14 = ki7;
                                    AbstractC8186l10 abstractC8186l106 = abstractC8186l10;
                                    boolean z20 = z10;
                                    C7215fB c7215fB11 = c7215fB5;
                                    com.android.tools.r8.graph.H5 h57 = h53;
                                    AbstractC5308Hz abstractC5308Hz5 = abstractC5308Hz3;
                                    R00 r006 = r004;
                                    C9420sR c9420sR9 = c9420sR6;
                                    C5634No0 L02 = next.L0();
                                    C4554l1 field4 = L02.getField();
                                    C7835iw f13 = r006.f(abstractC5308Hz5, field4);
                                    ?? a45 = a(c7215fB, u10, y528, L02, f13);
                                    C4554l1 a46 = a(f13, h57);
                                    if (a46 != field4) {
                                        c9420sR2 = c9420sR9;
                                        ?? r11 = a45;
                                        C5634No0 c5634No0 = new C5634No0(a46, a(c7215fB, a45, field4.f37449i, a46.f37449i, L02.value()));
                                        r11.b(c5634No0);
                                        w53 = w512;
                                        ki4 = ki14;
                                        ki4.a(L02, c5634No0, w53);
                                        y53 = r11;
                                    } else {
                                        c9420sR2 = c9420sR9;
                                        ki4 = ki14;
                                        y53 = a45;
                                        w53 = w512;
                                    }
                                    set5 = set;
                                    w57 = w53;
                                    I10 = y53;
                                    r004 = r006;
                                    z10 = z20;
                                    abstractC8186l10 = abstractC8186l106;
                                    ki7 = ki4;
                                    abstractC5308Hz3 = abstractC5308Hz5;
                                    c9420sR6 = c9420sR2;
                                    h53 = h57;
                                    c7215fB5 = c7215fB11;
                                    z16 = z11;
                                }
                            }
                            w57 = w52;
                            r004 = r002;
                            I10 = y52;
                            abstractC8186l10 = abstractC8186l102;
                            c9420sR6 = c9420sR;
                            c7215fB5 = c7215fB;
                            set5 = set3;
                            abstractC5308Hz3 = abstractC5308Hz2;
                            z10 = z12;
                            h53 = h52;
                            ki7 = ki3;
                            z16 = z11;
                        }
                        w52 = w57;
                        c9420sR = c9420sR6;
                        abstractC5308Hz2 = abstractC5308Hz3;
                        z11 = z16;
                        ki3 = ki7;
                        abstractC8186l102 = abstractC8186l10;
                        z12 = z10;
                        r002 = r004;
                        set3 = set5;
                        y52 = I10;
                        w57 = w52;
                        r004 = r002;
                        I10 = y52;
                        abstractC8186l10 = abstractC8186l102;
                        c9420sR6 = c9420sR;
                        c7215fB5 = c7215fB;
                        set5 = set3;
                        abstractC5308Hz3 = abstractC5308Hz2;
                        z10 = z12;
                        h53 = h52;
                        ki7 = ki3;
                        z16 = z11;
                    }
                    c7215fB5 = c7215fB;
                    h53 = h52;
                    a11 = ki7;
                    a12 = abstractC8186l10;
                    z14 = z16;
                }
            }
            abstractC8186l10 = a12;
            z10 = true;
            boolean z162 = z14;
            I10 = w57.I();
            while (I10.hasNext()) {
            }
            c7215fB5 = c7215fB;
            h53 = h52;
            a11 = ki7;
            a12 = abstractC8186l10;
            z14 = z162;
        }
        AbstractC8186l10 abstractC8186l107 = a12;
        KI ki15 = a11;
        AbstractC5308Hz abstractC5308Hz6 = abstractC5308Hz3;
        final Set set6 = set5;
        R00 r007 = r004;
        if (z14) {
            Objects.requireNonNull(set);
            c7215fB2 = c7215fB;
            c10696a2 = c10696a;
            ki2 = ki15;
            c7215fB2.a(c10696a2, new Consumer() {
                @Override
                public final void accept(Object obj3) {
                    Set.this.remove((C10340xw0) obj3);
                }
            });
        } else {
            c7215fB2 = c7215fB;
            c10696a2 = c10696a;
            ki2 = ki15;
        }
        c10696a2.a(this.f43579a, c7215fB2, C6628bi.b());
        if (!set.isEmpty()) {
            new C6090Vl(this.f43579a, r007, abstractC5308Hz6).a(c7215fB2, set6);
        }
        abstractC8186l107.a();
        c7215fB2.a((C6382aB) null, (C10696a) null);
        c7215fB.x();
        C10696a c10696a3 = new C10696a();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            C7170ew0 c7170ew0 = (C7170ew0) it.next();
            W5 b14 = c7170ew0.b();
            AbstractC10561zE Y02 = c7170ew0.Y0();
            b14.getClass();
            Y5 y529 = new Y5(b14, Y02);
            if (c7170ew0.d().w()) {
                boolean z21 = f43578d;
                if (!z21 && !c7170ew0.d().B()) {
                    throw new AssertionError();
                }
                if (!z21 && c7170ew0.d().D()) {
                    throw new AssertionError();
                }
                if (!z21 && c7170ew0.d().y()) {
                    throw new AssertionError();
                }
                AbstractC8999pu0 u11 = c7170ew0.d().u();
                boolean z22 = C9126qh.f51850m;
                C8959ph c8959ph = new C8959ph();
                if (u11.y()) {
                    u11 = AbstractC8999pu0.m();
                }
                c8959ph.f52321a = c7215fB2.a(u11, (C4515j0) null);
                C8959ph c8959ph2 = (C8959ph) c8959ph.a();
                c8959ph2.f52322b = B60.s();
                c8959ph2.f51588d = 0L;
                y529.a(c8959ph2.c(), c10696a3);
            } else {
                y529.f45925e.c(y529.b());
            }
        }
        c10696a3.a(this.f43579a, c7215fB2, C6628bi.b());
        ki2.a();
        if (f43578d) {
            return;
        }
        c7215fB.r();
    }

    public final RR a(R00 r00, AbstractC5308Hz abstractC5308Hz) {
        return new RR(this.f43579a, r00, abstractC5308Hz);
    }

    public static AbstractC10561zE a(com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        return new C9389sD(m22, c10340xw0);
    }

    public final AbstractC10561zE a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22, VJ vj2, com.android.tools.r8.graph.M2 m23, C10340xw0 c10340xw0) {
        return NJ.a(EnumC8071kK.f49584h, this.f43580b.a(m22.a(this.f43580b, m23), a22.f36127i, a22.f38298g), null, c10340xw0, vj2.f54321f, false);
    }

    public static Map a(AbstractC4935Bm0 abstractC4935Bm0) {
        return new IdentityHashMap();
    }

    public final C10340xw0 a(EE ee2, AbstractC4935Bm0 abstractC4935Bm0, C7215fB c7215fB, AbstractC4952Bv abstractC4952Bv, com.android.tools.r8.graph.M2 m22, VJ vj2, com.android.tools.r8.graph.M2 m23) {
        ee2.previous();
        C4798y c4798y = this.f43579a;
        CV cv = new CV(null, abstractC4952Bv.a(c4798y, m22), vj2.getPosition());
        abstractC4935Bm0.getClass();
        AbstractC10561zE[] a10 = abstractC4935Bm0.a(c4798y, c7215fB.j(), c7215fB, cv);
        boolean z10 = f43578d;
        if (!z10 && a10.length != 1) {
            throw new AssertionError();
        }
        AbstractC10561zE abstractC10561zE = a10[0];
        if (!z10 && abstractC10561zE.o()) {
            throw new AssertionError();
        }
        ee2.add(abstractC10561zE);
        ee2.next();
        return abstractC10561zE.d();
    }

    public static AbstractC10561zE a(C7942jc c7942jc, com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        return new C7942jc(c10340xw0, c7942jc.n(), m22, c7942jc.f49275l);
    }

    public static AbstractC10561zE a(C8391mE c8391mE, com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        return new C8391mE(c10340xw0, (C10340xw0) c8391mE.f54321f.get(0), m22);
    }

    public static AbstractC10561zE a(XJ xj2, com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        return new XJ(m22, c10340xw0, xj2.f54321f);
    }

    public static AbstractC10561zE a(C9103qZ c9103qZ, com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        return new C9103qZ(m22, c10340xw0, c9103qZ.f54321f);
    }

    public static AbstractC10561zE a(C8769oZ c8769oZ, com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        return new C8769oZ(c10340xw0, (C10340xw0) c8769oZ.f54321f.get(0), m22);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        com.android.tools.r8.graph.proto.j jVar;
        AbstractC5308Hz abstractC5308Hz;
        R00 r00;
        R00 r002;
        AbstractC5308Hz abstractC5308Hz2;
        com.android.tools.r8.graph.proto.j jVar2;
        com.android.tools.r8.graph.A2 a22;
        C8024k3 c8024k3;
        AbstractC10561zE[] abstractC10561zEArr;
        AbstractC8999pu0 b10;
        R00 r003;
        ArrayDeque arrayDeque = new ArrayDeque(8);
        AbstractC5308Hz a10 = h52.d().Q0().a(this.f43579a);
        AbstractC5308Hz v10 = this.f43579a.v();
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        while (v10 != a10) {
            if (!f43578d && !v10.l()) {
                throw new AssertionError();
            }
            R00 d10 = v10.d();
            if (d10.h()) {
                r003 = d10;
            } else {
                AbstractC5308Hz abstractC5308Hz3 = d10.f43777d;
                r003 = d10;
                while (abstractC5308Hz3.l() && !abstractC5308Hz3.h() && abstractC5308Hz3 != a10) {
                    r003 = abstractC5308Hz3.d();
                    abstractC5308Hz3 = r003.f43777d;
                }
            }
            AbstractC5308Hz abstractC5308Hz4 = r003.f43777d;
            arrayDeque.addLast(new OR(d10, abstractC5308Hz4, reference));
            reference = d10.a(abstractC5308Hz4, reference);
            v10 = abstractC5308Hz4;
        }
        if (!f43578d && arrayDeque.size() > 8) {
            throw new AssertionError();
        }
        AbstractC5308Hz v11 = this.f43579a.v();
        com.android.tools.r8.graph.A2 reference2 = h52.getReference();
        v11.getClass();
        com.android.tools.r8.graph.A2 a11 = v11.a(AbstractC5308Hz.g(), reference2);
        while (!arrayDeque.isEmpty()) {
            OR or = (OR) arrayDeque.removeLast();
            com.android.tools.r8.graph.proto.j f10 = or.f42879a.f(or.f42880b, or.f42881c);
            R00 r004 = or.f42879a;
            AbstractC5308Hz abstractC5308Hz5 = or.f42880b;
            Set c10 = AbstractC5513Ll0.c();
            C10696a c10696a = new C10696a();
            Set c11 = AbstractC5513Ll0.c();
            C10696a c10696a2 = new C10696a();
            com.android.tools.r8.graph.proto.c cVar = f10.f37623b;
            LinkedList linkedList = new LinkedList();
            Y5 I10 = c7215fB.k().I();
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (I10.hasNext()) {
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) I10.next();
                if (!abstractC10561zE.k1()) {
                    break;
                }
                C8024k3 v12 = abstractC10561zE.v();
                ArrayDeque arrayDeque2 = arrayDeque;
                com.android.tools.r8.graph.proto.b a12 = cVar.a(i10);
                C10696a c10696a3 = c10696a;
                if (a12.c()) {
                    com.android.tools.r8.graph.proto.g a13 = a12.a();
                    if (a13.f()) {
                        AbstractC5746Pm0 abstractC5746Pm0 = a13.f37616b;
                        if (a13.e().Q0()) {
                            abstractC5746Pm0.getClass();
                            jVar2 = f10;
                            if (abstractC5746Pm0 instanceof C5283Hm0) {
                                b10 = AbstractC8999pu0.m();
                                abstractC5308Hz2 = abstractC5308Hz5;
                                B60.b a14 = B60.b.t().a(0).a(a11).a();
                                C4798y c4798y = this.f43579a;
                                a22 = a11;
                                r002 = r004;
                                CV cv = new CV(v12.q(), b10, a14);
                                abstractC5746Pm0.getClass();
                                abstractC10561zEArr = abstractC5746Pm0.a(c4798y, c7215fB.j(), c7215fB, cv);
                            }
                        } else {
                            jVar2 = f10;
                        }
                        b10 = a13.e().b(this.f43579a);
                        abstractC5308Hz2 = abstractC5308Hz5;
                        B60.b a142 = B60.b.t().a(0).a(a11).a();
                        C4798y c4798y2 = this.f43579a;
                        a22 = a11;
                        r002 = r004;
                        CV cv2 = new CV(v12.q(), b10, a142);
                        abstractC5746Pm0.getClass();
                        abstractC10561zEArr = abstractC5746Pm0.a(c4798y2, c7215fB.j(), c7215fB, cv2);
                    } else {
                        r002 = r004;
                        abstractC5308Hz2 = abstractC5308Hz5;
                        jVar2 = f10;
                        a22 = a11;
                        AbstractC8999pu0 b11 = a13.e().b(this.f43579a);
                        int i13 = C7170ew0.f47809k;
                        C7003dw0 c7003dw0 = new C7003dw0();
                        c7003dw0.f52321a = c7215fB.a(b11, (C4515j0) null);
                        C7003dw0 c7003dw02 = (C7003dw0) c7003dw0.a();
                        c7003dw02.f52322b = B60.s();
                        C7170ew0 c7170ew0 = new C7170ew0(c7003dw02.f52321a);
                        B60 b60 = c7003dw02.f52322b;
                        if (b60 != null) {
                            c7170ew0.b(b60);
                        }
                        c11.add(c7170ew0);
                        abstractC10561zEArr = new AbstractC10561zE[]{c7170ew0};
                    }
                    C10340xw0 d11 = ((AbstractC10561zE) X3.b(abstractC10561zEArr)).d();
                    v12.d().a(d11, c10696a2);
                    c10.addAll(d11.a0());
                    Collections.addAll(linkedList, abstractC10561zEArr);
                    I10.i();
                    i11++;
                } else {
                    r002 = r004;
                    abstractC5308Hz2 = abstractC5308Hz5;
                    jVar2 = f10;
                    a22 = a11;
                    int a15 = cVar.f37606c.a(i10 - i11);
                    if (a12 instanceof com.android.tools.r8.graph.proto.k) {
                        AbstractC8999pu0 b12 = a12.b().e().b(this.f43579a);
                        boolean z10 = C8024k3.f49471m;
                        C7857j3 c7857j3 = new C7857j3();
                        c7857j3.f49143d = a15;
                        c7857j3.f52321a = c7215fB.a(b12, v12.q());
                        c7857j3.f52322b = v12.getPosition();
                        c8024k3 = new C8024k3(c7857j3.f52321a, c7857j3.f49143d, false);
                        B60 b602 = c7857j3.f52322b;
                        if (b602 != null) {
                            c8024k3.b(b602);
                        }
                        c10.addAll(v12.d().a0());
                        v12.d().f(c8024k3.d());
                    } else if (a15 != i10) {
                        boolean z11 = C8024k3.f49471m;
                        C7857j3 c7857j32 = new C7857j3();
                        c7857j32.f49143d = a15;
                        c7857j32.f52321a = c7215fB.a(v12.a(), v12.q());
                        c7857j32.f52322b = v12.getPosition();
                        C8024k3 c8024k32 = new C8024k3(c7857j32.f52321a, c7857j32.f49143d, false);
                        B60 b603 = c7857j32.f52322b;
                        if (b603 != null) {
                            c8024k32.b(b603);
                        }
                        v12.d().f(c8024k32.d());
                        c8024k3 = c8024k32;
                    } else {
                        c8024k3 = v12;
                    }
                    int i14 = i12;
                    if (a15 == i14) {
                        if (c8024k3 != v12) {
                            I10.a(c8024k3, (C10696a) null);
                        }
                        i12 = i14 + 1;
                    } else {
                        I10.s();
                        ListIterator<E> listIterator = linkedList.listIterator();
                        while (listIterator.hasNext()) {
                            AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) listIterator.next();
                            if (abstractC10561zE2.k1() && c8024k3.b(false) >= abstractC10561zE2.v().b(false)) {
                            }
                            listIterator.previous();
                        }
                        listIterator.add(c8024k3);
                        i12 = i14;
                        i10++;
                        arrayDeque = arrayDeque2;
                        f10 = jVar2;
                        c10696a = c10696a3;
                        abstractC5308Hz5 = abstractC5308Hz2;
                        a11 = a22;
                        r004 = r002;
                    }
                }
                i10++;
                arrayDeque = arrayDeque2;
                f10 = jVar2;
                c10696a = c10696a3;
                abstractC5308Hz5 = abstractC5308Hz2;
                a11 = a22;
                r004 = r002;
            }
            R00 r005 = r004;
            AbstractC5308Hz abstractC5308Hz6 = abstractC5308Hz5;
            com.android.tools.r8.graph.proto.j jVar3 = f10;
            C10696a c10696a4 = c10696a;
            ArrayDeque arrayDeque3 = arrayDeque;
            com.android.tools.r8.graph.A2 a23 = a11;
            I10.previous();
            if (!linkedList.isEmpty()) {
                Iterator<E> it = linkedList.iterator();
                while (it.hasNext()) {
                    I10.add((AbstractC10561zE) it.next());
                }
            }
            c10696a2.a(this.f43579a, c7215fB, C6628bi.b());
            if (r005.h()) {
                if (f43578d) {
                    abstractC5308Hz = abstractC5308Hz6;
                    r00 = r005;
                } else {
                    r00 = r005;
                    abstractC5308Hz = abstractC5308Hz6;
                    if (r00.f43777d != abstractC5308Hz) {
                        throw new AssertionError();
                    }
                }
                jVar = jVar3;
                c10.addAll(r00.f().a(c7215fB, abstractC6931dX, jVar, r00));
            } else {
                jVar = jVar3;
                abstractC5308Hz = abstractC5308Hz6;
                r00 = r005;
            }
            a(c7215fB, h52, r00, abstractC5308Hz, jVar, c10, c10696a4, c11);
            arrayDeque = arrayDeque3;
            a11 = a23;
        }
        if (f43578d) {
            return;
        }
        c7215fB.a(this.f43579a);
    }

    public final void a(C7215fB c7215fB, Z5 z52, EE ee2, C10471yk0 c10471yk0, com.android.tools.r8.graph.proto.j jVar) {
        if (!jVar.b() || jVar.f37624c.f37626b == null) {
            return;
        }
        ee2.previous();
        if (c10471yk0.b().z()) {
            final W5 a10 = ee2.a(c7215fB, z52, this.f43581c);
            W5 w52 = (W5) AbstractC10241xK.a(z52, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return QR.b(W5.this, (W5) obj);
                }
            });
            if (!f43578d && w52 == null) {
                throw new AssertionError();
            }
            z52.f46160c = (W5) z52.f46159b.next();
            ee2 = a10.I();
        }
        com.android.tools.r8.graph.M2 m22 = jVar.f37624c.f37626b;
        C10340xw0 w22 = c10471yk0.w2();
        int i10 = C5800Qk0.f43725n;
        C5742Pk0 c5742Pk0 = new C5742Pk0();
        c5742Pk0.f48983e = w22;
        C4798y c4798y = this.f43579a;
        C8854p10 B10 = w22.u().B();
        m22.getClass();
        C7777ic c7777ic = (C7777ic) c5742Pk0.a(c7215fB, AbstractC8999pu0.a(m22, B10, (C4798y<?>) c4798y));
        c7777ic.f48982d = m22;
        c7777ic.f52322b = c10471yk0.getPosition();
        C7942jc c10 = c7777ic.c();
        ee2.add(c10);
        c10471yk0.a(0, c10.d());
        AbstractC10561zE next = ee2.next();
        if (!f43578d && next != c10471yk0) {
            throw new AssertionError();
        }
    }

    public final C4554l1 a(C7835iw c7835iw, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.E0 g10;
        C4460g1 b10;
        if (c7835iw.a() && (b10 = ((C4554l1) c7835iw.f41112b).b((g10 = this.f43579a.g(((C4554l1) c7835iw.f41112b).s0())))) != null) {
            com.android.tools.r8.graph.F0 a10 = com.android.tools.r8.graph.F0.a(g10, b10);
            C4798y c4798y = this.f43579a;
            if (AbstractC4420e.a(a10, g10, h52, c4798y, (C4514j) c4798y.f()).d()) {
                return RV.a(this.f43579a, a10, (C4554l1) c7835iw.f41111a);
            }
        }
        return (C4554l1) c7835iw.f41111a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0030, code lost:
    
        if (com.android.tools.r8.internal.EnumC5477Kw0.a((char) r10.f36592f.f36562f[0]) != com.android.tools.r8.internal.EnumC5477Kw0.a((char) r9.f36592f.f36562f[0])) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C10340xw0 a(C7215fB c7215fB, EE ee2, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, C10340xw0 c10340xw0) {
        AbstractC8999pu0 m10;
        AbstractC8999pu0 u10 = c10340xw0.u();
        u10.getClass();
        if (u10 instanceof C6301Zd0) {
            if (m23.P0()) {
                if (m22.P0()) {
                    EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
                }
                if (f43578d && !m23.L0()) {
                    throw new AssertionError();
                }
                ee2.previous();
                C8570nJ c8570nJ = this.f43581c;
                if (!m23.P0()) {
                    m10 = AbstractC8999pu0.a(m23, (C8854p10) null, (C4798y<?>) this.f43579a);
                } else {
                    m10 = AbstractC8999pu0.m();
                }
                C10340xw0 a10 = ee2.a(c7215fB, c8570nJ, 0L, m10);
                ee2.next();
                return a10;
            }
            if (!m22.P0()) {
                boolean z10 = f43578d;
                if (!z10 && !m23.Q0()) {
                    throw new AssertionError();
                }
                if (!z10 && !m22.Q0()) {
                    throw new AssertionError();
                }
            }
            if (f43578d) {
            }
            ee2.previous();
            C8570nJ c8570nJ2 = this.f43581c;
            if (!m23.P0()) {
            }
            C10340xw0 a102 = ee2.a(c7215fB, c8570nJ2, 0L, m10);
            ee2.next();
            return a102;
        }
        return c10340xw0;
    }
}
