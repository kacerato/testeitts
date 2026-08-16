package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AL;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC10076wL;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.BL;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6417aQ;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C7083eQ;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.C8998pu;
import com.android.tools.r8.internal.CL;
import com.android.tools.r8.internal.EnumC4899Ax0;
import com.android.tools.r8.internal.EnumC7613hd;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.HX;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.NQ;
import com.android.tools.r8.internal.OL;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10829o implements InterfaceC10835p {

    public final NQ.a f55394a;

    public final boolean f55395b;

    public final String f55396c;

    public final AbstractC7552hC f55397d;

    public final C f55398e;

    public final AbstractC7552hC f55399f;

    public final AbstractC7552hC f55400g;

    public final AbstractC7552hC f55401h;

    public final AbstractC7552hC f55402i;

    public final List f55403j;

    public final C10853s0 f55404k;

    public final String f55405l;

    public final P f55406m;

    public final String f55407n;

    public final C10836p0 f55408o;

    public final String f55409p;

    public final List f55410q;

    public final X f55411r;

    public C10829o(NQ.a aVar, boolean z10, String str, C c10, AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2, AbstractC7552hC abstractC7552hC3, AbstractC7552hC abstractC7552hC4, AbstractC7552hC abstractC7552hC5, List list, C10853s0 c10853s0, String str2, P p10, String str3, C10836p0 c10836p0, X x10, String str4, List list2) {
        this.f55394a = aVar;
        this.f55395b = z10;
        this.f55396c = str;
        this.f55398e = c10;
        this.f55399f = abstractC7552hC;
        this.f55397d = abstractC7552hC2;
        this.f55400g = abstractC7552hC3;
        this.f55401h = abstractC7552hC4;
        this.f55402i = abstractC7552hC5;
        this.f55403j = list;
        this.f55404k = c10853s0;
        this.f55405l = str2;
        this.f55406m = p10;
        this.f55407n = str3;
        this.f55408o = c10836p0;
        this.f55411r = x10;
        this.f55409p = str4;
        this.f55410q = list2;
    }

    public static void a(C6417aQ c6417aQ, String str) {
        if (str != null) {
            GJ.c(c6417aQ, "<this>");
            AL.a(c6417aQ).f53739c = str;
        }
    }

    public static Consumer b(C10853s0 c10853s0) {
        Objects.requireNonNull(c10853s0);
        return new C10795i1(c10853s0);
    }

    @Override
    public final String r() {
        return this.f55405l;
    }

    @Override
    public final ML u() {
        return this.f55394a.f42582c;
    }

    public static Consumer b(C10836p0 c10836p0) {
        Objects.requireNonNull(c10836p0);
        return new C10753b1(c10836p0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0145, code lost:
    
        if (r2.equals(r3) != false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C10829o a(NQ.a aVar, String str, com.android.tools.r8.graph.H2 h22, C4798y c4798y, Consumer consumer) {
        String a10;
        String a11;
        C4516j1 c4516j1;
        final C4724u1 b10 = c4798y.b();
        final C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
        C6417aQ c10 = aVar.c();
        HashMap hashMap = new HashMap();
        for (C4460g1 c4460g1 : h22.I0()) {
            C4554l1 reference = c4460g1.getReference();
            ML ml2 = AbstractC10752b0.f55255a;
            hashMap.put(new CL(reference.f38298g.toString(), reference.f37449i.V0()).toString(), c4460g1);
        }
        HashMap hashMap2 = new HashMap();
        for (C4516j1 c4516j12 : h22.z1()) {
            hashMap2.put(AbstractC10752b0.a(c4516j12.getReference()).toString(), c4516j12);
        }
        int i10 = AbstractC7552hC.f48487c;
        X x10 = new X(c4798y);
        Object[] objArr = new Object[4];
        int i11 = 0;
        for (C7083eQ c7083eQ : c10.e()) {
            C10887z c10887z = new C10887z(c7083eQ, C10858t0.a(c7083eQ.a(), b10, c5094Ef0), N.a(BL.a(c7083eQ), b10));
            OL a12 = BL.a(c7083eQ);
            if (a12 != null && (c4516j1 = (C4516j1) hashMap2.get(a12.toString())) != null) {
                c4516j1.a(c10887z);
                x10.a(c4516j1.getReference());
            } else {
                int i12 = i11 + 1;
                if (objArr.length < i12) {
                    objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
                }
                objArr[i11] = c10887z;
                i11 = i12;
            }
        }
        C a13 = C.a(c10, hashMap2, hashMap, b10, c5094Ef0, consumer, x10);
        String str2 = AL.a(c10).f53739c;
        C10853s0 a14 = str2 != null ? C10853s0.a(str2, b10, str2) : null;
        String str3 = c10.f46514b;
        String V02 = h22.getType().V0();
        ML ml3 = AbstractC10752b0.f55255a;
        C4425e4 P02 = h22.P0();
        boolean z10 = true;
        if (P02 != null && P02.d() != null) {
            a10 = C4932Bl.c(V02);
        } else if (!h22.r1() && !h22.m1()) {
            a10 = C4932Bl.f(V02);
        } else {
            a10 = AbstractC10752b0.a(V02, true);
        }
        if (!str3.equals(a10)) {
            if (a14 != null) {
                String str4 = c10.f46514b;
                com.android.tools.r8.graph.M2 m22 = a14.f55458a;
                if (m22 == null) {
                    a11 = a14.f55459b;
                } else {
                    a11 = AbstractC10752b0.a(m22.V0(), true);
                }
            }
            z10 = false;
        }
        String str5 = AL.a(c10).f53738b;
        AbstractC7552hC a15 = C10842q0.a(c10.k(), b10, c5094Ef0);
        AbstractC7552hC b11 = AbstractC7552hC.b(i11, objArr);
        Object[] objArr2 = new Object[4];
        Iterator<C10420yQ> it = c10.j().iterator();
        int i13 = 0;
        while (it.hasNext()) {
            C10836p0 a16 = C10836p0.a(b10, c5094Ef0, it.next());
            a16.getClass();
            int i14 = i13 + 1;
            if (objArr2.length < i14) {
                objArr2 = Arrays.copyOf(objArr2, WB.a(objArr2.length, i14));
            }
            objArr2[i13] = a16;
            i13 = i14;
        }
        AbstractC7552hC b12 = AbstractC7552hC.b(i13, objArr2);
        Object[] objArr3 = new Object[4];
        int i15 = 0;
        for (String str6 : c10.i()) {
            C10853s0 a17 = C10853s0.a(str6.replace('.', '$'), b10, str6);
            a17.getClass();
            int i16 = i15 + 1;
            if (objArr3.length < i16) {
                objArr3 = Arrays.copyOf(objArr3, WB.a(objArr3.length, i16));
            }
            objArr3[i15] = a17;
            i15 = i16;
        }
        AbstractC7552hC b13 = AbstractC7552hC.b(i15, objArr3);
        AbstractC7552hC a18 = a(h22, c10.h(), b10);
        List a19 = a(c10, h22);
        P a20 = P.a(AL.a(c10).f53737a, b10, c5094Ef0);
        String str7 = c10.f46525m;
        C10836p0 a21 = C10836p0.a(b10, c5094Ef0, c10.f46526n);
        String d10 = c10.d();
        if (d10 != null) {
            Iterator<C4460g1> it2 = h22.I0().iterator();
            while (true) {
                if (it2.hasNext()) {
                    C4460g1 next = it2.next();
                    if (next.getReference().f38298g.toString().equals(d10)) {
                        next.a(new C10882y(d10));
                        break;
                    }
                } else {
                    c5094Ef0.warning(T.a(h22, d10));
                    break;
                }
            }
        }
        return new C10829o(aVar, z10, str5, a13, a15, b11, b12, b13, a18, a19, a14, str, a20, str7, a21, x10, d10, AT.a((Collection) c10.f46527o, new Function() {
            @Override
            public final Object apply(Object obj) {
                C10836p0 a22;
                a22 = C10836p0.a(C4724u1.this, c5094Ef0, (C10420yQ) obj);
                return a22;
            }
        }));
    }

    public static AbstractC7552hC a(com.android.tools.r8.graph.H2 h22, List list, C4724u1 c4724u1) {
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            C10853s0 a10 = C10853s0.a(h22.f36245e.U0() + "$" + str, c4724u1, str);
            a10.getClass();
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = a10;
            i11 = i12;
        }
        return AbstractC7552hC.b(i11, objArr);
    }

    public static List a(C6417aQ c6417aQ, com.android.tools.r8.graph.H2 h22) {
        List<String> f10 = c6417aQ.f();
        if (f10.isEmpty()) {
            return f10;
        }
        final Collection a10 = f10.size() < 16 ? f10 : AbstractC5513Ll0.a(f10);
        h22.I0().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10829o.a(Collection.this, (C4460g1) obj);
            }
        });
        return f10;
    }

    public static void a(Collection collection, C4460g1 c4460g1) {
        String l22 = c4460g1.C0().toString();
        if (collection.contains(l22)) {
            c4460g1.a(new F(l22));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0156  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8699o50 a(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        String str;
        String a10;
        C10836p0 c10836p0;
        C6417aQ c10 = this.f55394a.c();
        final C6417aQ c6417aQ = new C6417aQ();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c10, "<this>");
        Y6 y62 = C7698i5.f48807b;
        y62.a(c6417aQ, xyArr[0], y62.a(c10, xyArr[0]));
        C8998pu c8998pu = C7698i5.f48819j;
        EnumC4899Ax0 enumC4899Ax0 = (EnumC4899Ax0) c8998pu.a(c10, xyArr[8]);
        GJ.c(enumC4899Ax0, "<set-?>");
        c8998pu.a(c6417aQ, xyArr[8], enumC4899Ax0);
        C8998pu c8998pu2 = C7698i5.f48818i;
        HX hx = (HX) c8998pu2.a(c10, xyArr[7]);
        GJ.c(hx, "<set-?>");
        c8998pu2.a(c6417aQ, xyArr[7], hx);
        C8998pu c8998pu3 = C7698i5.f48820k;
        EnumC7613hd enumC7613hd = (EnumC7613hd) c8998pu3.a(c10, xyArr[9]);
        GJ.c(enumC7613hd, "<set-?>");
        c8998pu3.a(c6417aQ, xyArr[9], enumC7613hd);
        Y6 y63 = C7698i5.f48821l;
        y63.a(c6417aQ, xyArr[10], y63.a(c10, xyArr[10]));
        Y6 y64 = C7698i5.f48822m;
        y64.a(c6417aQ, xyArr[11], y64.a(c10, xyArr[11]));
        Y6 y65 = C7698i5.f48823n;
        y65.a(c6417aQ, xyArr[12], y65.a(c10, xyArr[12]));
        Y6 y66 = C7698i5.f48824o;
        y66.a(c6417aQ, xyArr[13], y66.a(c10, xyArr[13]));
        Y6 y67 = C7698i5.f48825p;
        y67.a(c6417aQ, xyArr[14], y67.a(c10, xyArr[14]));
        Y6 y68 = C7698i5.f48826q;
        y68.a(c6417aQ, xyArr[15], y68.a(c10, xyArr[15]));
        Y6 y69 = C7698i5.f48827r;
        y69.a(c6417aQ, xyArr[16], y69.a(c10, xyArr[16]));
        Y6 y610 = AbstractC10076wL.f53479d;
        XY[] xyArr2 = AbstractC10076wL.f53476a;
        y610.a(c6417aQ, xyArr2[2], y610.a(c10, xyArr2[2]));
        Y6 y611 = AbstractC10076wL.f53478c;
        y611.a(c6417aQ, xyArr2[1], y611.a(c10, xyArr2[1]));
        com.android.tools.r8.graph.L2 l22 = h22.f36245e.f36592f;
        com.android.tools.r8.graph.L2 c11 = c4798y.s().c(h22.f36245e);
        boolean z10 = !l22.equals(c11);
        String g10 = c10.g();
        if (!this.f55395b) {
            GJ.c(g10, "<set-?>");
            c6417aQ.f46514b = g10;
        } else {
            C10853s0 c10853s0 = this.f55404k;
            if (c10853s0 != null) {
                com.android.tools.r8.graph.M2 m22 = c10853s0.f55458a;
                if (m22 == null) {
                    a10 = c10853s0.f55459b;
                } else {
                    a10 = AbstractC10752b0.a(m22.V0(), true);
                }
                if (g10.equals(a10)) {
                    C7 c72 = new C7();
                    this.f55404k.a(new C10777f1(c72), c4798y, (String) null);
                    if (c72.b()) {
                        str = "." + ((String) c72.a());
                        if (str == null) {
                            String l23 = c11.toString();
                            ML ml2 = AbstractC10752b0.f55255a;
                            C4425e4 P02 = h22.P0();
                            if (P02 != null && P02.d() != null) {
                                str = C4932Bl.c(l23);
                            } else if (!h22.r1() && !h22.m1()) {
                                str = C4932Bl.f(l23);
                            } else {
                                str = AbstractC10752b0.a(l23, true);
                            }
                        }
                        GJ.c(str, "<set-?>");
                        c6417aQ.f46514b = str;
                        z10 |= !g10.equals(str);
                    }
                }
            }
            str = null;
            if (str == null) {
            }
            GJ.c(str, "<set-?>");
            c6417aQ.f46514b = str;
            z10 |= !g10.equals(str);
        }
        boolean z11 = false;
        int i10 = 0;
        for (C4460g1 c4460g1 : h22.I0()) {
            G g11 = c4460g1.f37208m;
            if (g11.e()) {
                C10882y f10 = g11.f();
                C4554l1 reference = c4460g1.getReference();
                AbstractC10992r0 s10 = c4798y.s();
                f10.getClass();
                c6417aQ.f46521i = s10.a(reference).toString();
                z10 |= !r5.equals(f10.f55511a);
                z11 = true;
            } else if (g11.i()) {
                F q10 = g11.q();
                C4554l1 reference2 = c4460g1.getReference();
                AbstractC10992r0 s11 = c4798y.s();
                q10.getClass();
                c6417aQ.f().add(s11.a(reference2).toString());
                z10 |= !r5.equals(q10.f55051a);
                if (i10 >= this.f55403j.size() || !((String) this.f55403j.get(i10)).equals(q10.f55051a)) {
                    z10 = true;
                }
                i10++;
            }
        }
        if (!z11 && this.f55409p != null) {
            z10 = true;
        }
        if (i10 < this.f55403j.size()) {
            z10 = true;
        }
        Iterator it = this.f55397d.iterator();
        while (it.hasNext()) {
            z10 |= ((C10887z) it.next()).a(c6417aQ, null, c4798y);
        }
        X x10 = new X(c4798y);
        boolean z12 = z10;
        for (C4516j1 c4516j1 : h22.z1()) {
            if (c4516j1.f37323p.p()) {
                z12 |= c4516j1.f37323p.h().a(c6417aQ, c4516j1, c4798y);
                x10.a(c4516j1.getReference());
            }
        }
        C c12 = this.f55398e;
        ArrayList arrayList = c6417aQ.f46517e;
        Objects.requireNonNull(arrayList);
        S3 s32 = new S3(arrayList);
        ArrayList arrayList2 = c6417aQ.f46518f;
        Objects.requireNonNull(arrayList2);
        T3 t32 = new T3(arrayList2);
        ArrayList arrayList3 = c6417aQ.f46519g;
        Objects.requireNonNull(arrayList3);
        boolean a11 = z12 | c12.a(s32, t32, new U3(arrayList3), h22, c4798y, x10) | AbstractC10752b0.a(c4798y, this.f55399f, c6417aQ.k(), new C10771e1());
        final List<C10420yQ> j10 = c6417aQ.j();
        for (C10836p0 c10836p02 : this.f55400g) {
            if (h22.getType() != c10836p02.f55427b.a(c4798y.v(), c4798y.f38418k)) {
                Objects.requireNonNull(j10);
                a11 |= c10836p02.b(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        List.this.add((C10420yQ) obj);
                    }
                }, c4798y);
            } else {
                a11 = true;
            }
        }
        List<String> h10 = c6417aQ.h();
        for (C10853s0 c10853s02 : this.f55402i) {
            C7 c73 = new C7();
            boolean a12 = c10853s02.a(new C10777f1(c73), c4798y, (String) null);
            if (c73.b()) {
                if (a12) {
                    String str2 = (String) c73.a();
                    h10.add(str2.substring(str2.lastIndexOf(36) + 1));
                } else {
                    h10.add(c10853s02.f55459b);
                }
            }
            a11 |= a12;
        }
        final List<String> i11 = c6417aQ.i();
        Iterator it2 = this.f55401h.iterator();
        while (it2.hasNext()) {
            a11 |= ((C10853s0) it2.next()).a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10829o.a(List.this, (String) obj);
                }
            }, c4798y, (String) null);
        }
        c6417aQ.f46528p.addAll(c10.f46528p);
        String str3 = this.f55407n;
        if (str3 != null && (c10836p0 = this.f55408o) != null) {
            c6417aQ.f46525m = str3;
            a11 |= c10836p0.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6417aQ.this.a((C10420yQ) obj);
                }
            }, c4798y);
        }
        boolean a13 = a11 | AbstractC10752b0.a(c4798y, this.f55410q, c6417aQ.f46527o, new K0());
        AL.a(c6417aQ).f53738b = this.f55396c;
        C10853s0 c10853s03 = this.f55404k;
        if (c10853s03 != null) {
            a13 |= c10853s03.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10829o.a(C6417aQ.this, (String) obj);
                }
            }, c4798y, (String) null);
        }
        P p10 = this.f55406m;
        ArrayList arrayList4 = AL.a(c6417aQ).f53737a;
        Objects.requireNonNull(arrayList4);
        boolean b10 = a13 | p10.b(new T3(arrayList4), c4798y);
        NQ.a aVar = this.f55394a;
        aVar.f42581b = c6417aQ;
        ML a14 = aVar.a();
        ML ml3 = AbstractC10752b0.f55255a;
        if (a14.compareTo(ml3) < 0) {
            aVar.a(ml3);
        }
        return C8699o50.a(this.f55394a.b(), Boolean.valueOf(b10 || !this.f55411r.a(x10, c4798y)));
    }

    public static void a(List list, String str) {
        if (str != null) {
            list.add(str.replace('$', '.'));
        }
    }

    public static Consumer a(final C10887z c10887z) {
        Objects.requireNonNull(c10887z);
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10887z.this.a((InterfaceC4403d1) obj);
            }
        };
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C5480Ky.a((Iterable) this.f55397d, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10829o.a((C10887z) obj);
            }
        }, (Object) interfaceC4403d1);
        this.f55398e.a(interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55399f, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10829o.a((C10842q0) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55400g, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10829o.a((C10836p0) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55401h, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10829o.a((C10853s0) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55402i, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10829o.b((C10853s0) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55410q, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10829o.b((C10836p0) obj);
            }
        }, (Object) interfaceC4403d1);
        this.f55406m.a(interfaceC4403d1);
        C10853s0 c10853s0 = this.f55404k;
        if (c10853s0 != null) {
            c10853s0.a(interfaceC4403d1);
        }
    }

    public static Consumer a(C10842q0 c10842q0) {
        Objects.requireNonNull(c10842q0);
        return new X0(c10842q0);
    }

    public static Consumer a(C10836p0 c10836p0) {
        Objects.requireNonNull(c10836p0);
        return new C10753b1(c10836p0);
    }

    public static Consumer a(C10853s0 c10853s0) {
        Objects.requireNonNull(c10853s0);
        return new C10795i1(c10853s0);
    }
}
