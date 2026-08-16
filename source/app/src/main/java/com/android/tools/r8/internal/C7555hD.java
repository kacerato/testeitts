package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

public final class C7555hD extends AbstractC7221fD {

    public static final boolean f48491l = true;

    public final C4554l1 f48492f;

    public int f48493g;

    public final LinkedHashMap f48494h;

    public final LinkedHashMap f48495i;

    public final com.android.tools.r8.graph.A2 f48496j;

    public final ArrayList f48497k;

    public C7555hD(C4554l1 c4554l1, int i10, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, com.android.tools.r8.graph.A2 a22, ArrayList arrayList) {
        this.f48492f = c4554l1;
        this.f48493g = i10;
        this.f48494h = linkedHashMap;
        this.f48495i = linkedHashMap2;
        this.f48496j = a22;
        this.f48497k = arrayList;
    }

    @Override
    public final WS a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10215xA c10215xA) {
        C7702i60 c7702i60 = new C7702i60();
        PS a10 = WS.a(h52.getReference(), h52.d().F0(), c7702i60, c4798y.E());
        ArrayList arrayList = new ArrayList();
        com.android.tools.r8.graph.M2 p10 = h52.p();
        C8854p10 b10 = C8854p10.b();
        p10.getClass();
        int i10 = 0;
        C10340xw0 c10340xw0 = new C10340xw0(0, AbstractC8999pu0.a(p10, b10, (C4798y<?>) c4798y), null);
        arrayList.add(c10340xw0);
        c7702i60.f48841b.b(c10340xw0.t(), c10340xw0);
        a10.a(c10340xw0.t());
        int i11 = 1;
        while (true) {
            C4516j1 d10 = h52.d();
            if (i11 >= d10.getReference().a(d10.w0())) {
                break;
            }
            com.android.tools.r8.graph.M2 a11 = h52.a(i11);
            C10340xw0 c10340xw02 = new C10340xw0(i11, a11.b((C4798y<?>) c4798y), null);
            arrayList.add(c10340xw02);
            c7702i60.f48841b.b(c10340xw02.t(), c10340xw02);
            int t10 = c10340xw02.t();
            a11.F0();
            a10.a(t10);
            i11++;
        }
        if (this.f48492f != null) {
            C10340xw0 c10340xw03 = (C10340xw0) arrayList.get((arrayList.size() - 1) - this.f48493g);
            C4554l1 c4554l1 = this.f48492f;
            a10.a(181, Collections.singletonList((C4554l1) c10215xA.f49998f.getOrDefault(c4554l1, c4554l1)), AbstractC7552hC.a(c10340xw0, c10340xw03));
            i11++;
        }
        int a12 = a(c4798y, h52, a10, c7702i60, arrayList, i11, this.f48494h, c10215xA);
        com.android.tools.r8.graph.A2 a22 = this.f48496j;
        AbstractC5308Hz abstractC5308Hz = c4798y.f38414g;
        c10215xA.getClass();
        NW a13 = c10215xA.a(a22, h52.getReference(), EnumC8071kK.f49580d, abstractC5308Hz, AbstractC9530t40.f52519c);
        final ArrayList arrayList2 = new ArrayList();
        arrayList2.add(c10340xw0);
        ArrayList arrayList3 = this.f48497k;
        int size = arrayList3.size();
        int i12 = 0;
        while (i10 < size) {
            a12 = a(c4798y, a10, c7702i60, (SD) arrayList3.get(i10), arrayList, a12, ((com.android.tools.r8.graph.A2) a13.f41111a).k(i12), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    List.this.add((C10340xw0) obj);
                }
            });
            i12++;
            arrayList2 = arrayList2;
            a13 = a13;
            size = size;
            i10++;
            arrayList3 = arrayList3;
        }
        final ArrayList arrayList4 = arrayList2;
        NW nw = a13;
        Iterator it = nw.f42624e.f37622a.iterator();
        int i13 = a12;
        int i14 = i12;
        while (it.hasNext()) {
            i13 = a(c4798y, a10, c7702i60, ((AbstractC4952Bv) it.next()).a(c4798y), arrayList, i13, ((com.android.tools.r8.graph.A2) nw.f41111a).k(i14), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    List.this.add((C10340xw0) obj);
                }
            });
            i14++;
        }
        a10.a(205, Collections.singletonList((com.android.tools.r8.graph.A2) nw.f41111a), arrayList4);
        a(c4798y, h52, a10, c7702i60, arrayList, i13 + 1, this.f48495i, c10215xA);
        a10.b();
        return new C7388gD(a10.d(), c10215xA);
    }

    @Override
    public final void l(int i10) {
        this.f48493g += i10;
    }

    @Override
    public final String toString() {
        return "IncompleteMergedInstanceInitializerCode";
    }

    public static int a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, PS ps, C7702i60 c7702i60, ArrayList arrayList, int i10, LinkedHashMap linkedHashMap, C10215xA c10215xA) {
        int i11;
        int i12 = i10;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            C4554l1 c4554l1 = (C4554l1) entry.getKey();
            SD sd2 = (SD) entry.getValue();
            final C7 c72 = new C7();
            int a10 = a(c4798y, ps, c7702i60, sd2, arrayList, i12, c4554l1.getType(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7.this.a((C7) obj);
                }
            });
            C10340xw0 c10340xw0 = (C10340xw0) c72.a();
            C4554l1 c4554l12 = (C4554l1) c10215xA.f49998f.getOrDefault(c4554l1, c4554l1);
            if (sd2.s() && (i11 = sd2.q().f43848a) > 0) {
                com.android.tools.r8.graph.M2 a11 = h52.a(i11);
                if (a11.I0() && !((C4514j) c4798y.f()).c(a11, c4554l12.getType())) {
                    com.android.tools.r8.graph.M2 type = c4554l12.getType();
                    C8854p10 B10 = c10340xw0.u().B();
                    type.getClass();
                    C10340xw0 c10340xw02 = new C10340xw0(a10, AbstractC8999pu0.a(type, B10, (C4798y<?>) c4798y), null);
                    c7702i60.f48841b.b(c10340xw02.t(), c10340xw02);
                    ps.a(224, Collections.singletonList(c4554l12.getType()), Collections.singletonList(c10340xw0));
                    a10++;
                    c10340xw0 = c10340xw02;
                    ps.a(181, Collections.singletonList(c4554l12), AbstractC7552hC.a((C10340xw0) AT.a(arrayList), c10340xw0));
                    i12 = a10 + 1;
                }
            }
            ps.a(181, Collections.singletonList(c4554l12), AbstractC7552hC.a((C10340xw0) AT.a(arrayList), c10340xw0));
            i12 = a10 + 1;
        }
        return i12;
    }

    public static int a(C4798y c4798y, PS ps, C7702i60 c7702i60, SD sd2, ArrayList arrayList, int i10, com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        AbstractC8999pu0 a10;
        C10340xw0 c10340xw0;
        if (sd2.s()) {
            c10340xw0 = (C10340xw0) arrayList.get(sd2.q().f43848a);
        } else {
            boolean z10 = f48491l;
            if (!z10 && !sd2.r()) {
                throw new AssertionError();
            }
            if (!z10 && !sd2.w().e0()) {
                throw new AssertionError();
            }
            AbstractC4935Bm0 L10 = sd2.w().L();
            L10.getClass();
            if (L10 instanceof C4877Am0) {
                ps.a(18, Collections.singletonList(L10.K().f38716c), Collections.EMPTY_LIST);
                C8854p10 b10 = C8854p10.b();
                boolean z11 = AbstractC8999pu0.f51660a;
                a10 = AbstractC8999pu0.a(c4798y.b().f38180w2, b10, (C4798y<?>) c4798y).b();
            } else if (L10 instanceof C5051Dm0) {
                C5051Dm0 M10 = L10.M();
                ps.a(216, AbstractC7552hC.a(M10.f39642c, new MS(M10.f39643d)), Collections.EMPTY_LIST);
                a10 = AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b());
            } else if (L10 instanceof C5283Hm0) {
                if (!z10 && !m22.Q0()) {
                    throw new AssertionError();
                }
                ps.a();
                a10 = AbstractC8999pu0.m();
            } else if (L10 instanceof C5341Im0) {
                if (!z10 && !m22.P0()) {
                    throw new AssertionError();
                }
                long j10 = L10.m().f41207c;
                int i11 = IS.f41102a[EnumC5477Kw0.a(m22).ordinal()];
                if (i11 == 1) {
                    ps.a();
                } else if (i11 == 2) {
                    ps.c((int) j10);
                } else if (i11 == 3) {
                    ps.b((int) j10);
                } else if (i11 == 4) {
                    ps.b(j10);
                } else if (i11 == 5) {
                    ps.a(j10);
                } else {
                    throw new C5417Jv0();
                }
                a10 = m22.b((C4798y<?>) c4798y);
            } else {
                if (!z10 && !L10.g0()) {
                    throw new AssertionError();
                }
                ps.a(18, Collections.singletonList(L10.P().j0()), Collections.EMPTY_LIST);
                a10 = AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b());
            }
            C10340xw0 c10340xw02 = new C10340xw0(i10, a10, null);
            c7702i60.f48841b.b(c10340xw02.t(), c10340xw02);
            i10++;
            c10340xw0 = c10340xw02;
        }
        consumer.accept(c10340xw0);
        return i10;
    }
}
