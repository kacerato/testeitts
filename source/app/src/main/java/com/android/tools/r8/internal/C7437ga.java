package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4536k2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;
import java.util.function.Function;
import java.util.function.Predicate;

public class C7437ga extends W9 {

    public static final boolean f48285f = true;

    public final com.android.tools.r8.graph.A2 f48286c;

    public final int f48287d;

    public final boolean f48288e;

    public C7437ga(int i10, com.android.tools.r8.graph.A2 a22, boolean z10) {
        boolean z11 = f48285f;
        if (!z11 && (182 > i10 || i10 > 185)) {
            throw new AssertionError();
        }
        if (!z11 && i10 == 182 && z10) {
            throw new AssertionError((Object) "InvokeVirtual on interface type");
        }
        if (!z11 && i10 == 185 && !z10) {
            throw new AssertionError((Object) "InvokeInterface on class type");
        }
        this.f48287d = i10;
        this.f48286c = a22;
        this.f48288e = z10;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C7437ga) obj).X();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C7437ga) obj).V();
            }
        });
    }

    @Override
    public final int B() {
        return W();
    }

    @Override
    public final boolean L() {
        return true;
    }

    @Override
    public final boolean M() {
        return this.f48287d == 185;
    }

    @Override
    public final boolean N() {
        return this.f48287d == 183;
    }

    @Override
    public final boolean O() {
        return this.f48287d == 184;
    }

    @Override
    public final boolean P() {
        return this.f48287d == 182;
    }

    public com.android.tools.r8.graph.A2 V() {
        return this.f48286c;
    }

    public int W() {
        return this.f48287d;
    }

    public boolean X() {
        return this.f48288e;
    }

    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        if (this.f48287d != 183) {
            return false;
        }
        com.android.tools.r8.graph.A2 a22 = this.f48286c;
        return (a22.f38297f == m22 || a22.f38298g.toString().equals(ConstantDescs.INIT_NAME)) ? false : true;
    }

    @Override
    public C7437ga j() {
        return this;
    }

    @Override
    public final int y() {
        return this.f48287d == 185 ? 5 : 3;
    }

    @Override
    public final boolean z() {
        return true;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this, w92.j(), new C6068Vb1());
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        C6068Vb1 c6068Vb1 = new C6068Vb1();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        c6068Vb1.a(new C9380sA(this, c9547tA));
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        EnumC8071kK a10 = EnumC8071kK.a(this.f48287d, this.f48286c, h52, c4798y, c4798y.f38414g);
        if (a10 == EnumC8071kK.f49587k) {
            if (!f48285f && !c4724u1.f38015b5.a(this.f48286c)) {
                throw new AssertionError();
            }
            ex.a(a10.a(), C4932Bl.a(this.f48286c.f38297f.V0()), this.f48286c.t0().toString(), rr.a(this.f48286c.y0()).a(abstractC10992r0), this.f48288e);
            return;
        }
        NW a11 = abstractC5308Hz.a(this.f48286c, h52.getReference(), a10, abstractC5308Hz2, AbstractC9530t40.f52519c);
        EnumC8071kK enumC8071kK = a11.f42623d;
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) a11.f41111a;
        ex.a(enumC8071kK.a(), abstractC10992r0.d(a22.f38297f), abstractC10992r0.a(a22).toString(), a22.f36127i.a(abstractC10992r0), enumC8071kK.b() || this.f48288e);
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        switch (this.f48287d) {
            case 182:
                abstractC4446f6.g(this.f48286c);
                return;
            case 183:
                abstractC4446f6.c(this.f48286c);
                return;
            case 184:
                abstractC4446f6.e(this.f48286c);
                return;
            case 185:
                abstractC4446f6.b(this.f48286c);
                return;
            default:
                throw new C5417Jv0("Unknown CfInvoke opcode " + this.f48287d);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00fd A[LOOP:0: B:12:0x00fb->B:13:0x00fd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0141 A[LOOP:1: B:22:0x013b->B:24:0x0141, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01a2 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00cc  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.A2 a10;
        EnumC8071kK enumC8071kK;
        com.android.tools.r8.graph.A2 a22;
        com.android.tools.r8.graph.I2 i22;
        com.android.tools.r8.graph.A2 a23;
        int i10;
        List asList;
        com.android.tools.r8.graph.I2 i23 = null;
        switch (this.f48287d) {
            case 182:
                C4536k2 c4536k2 = c6382aB.f46457p.b().f38015b5;
                com.android.tools.r8.graph.A2 a24 = this.f48286c;
                c4536k2.getClass();
                com.android.tools.r8.graph.M2 m22 = a24.f38297f;
                C4724u1 c4724u1 = c4536k2.f37422g;
                com.android.tools.r8.graph.M2 m23 = c4724u1.f37920O2;
                if (m22 == m23) {
                    com.android.tools.r8.graph.L2 l22 = a24.f38298g;
                    if (l22 == c4724u1.f37897L0 || l22 == c4724u1.f37904M0) {
                        a10 = c4724u1.a(m23, c4536k2.f37416a, l22);
                        if (!C4536k2.f37415h) {
                            if ((a10 != null) != c4536k2.a(a24)) {
                                throw new AssertionError();
                            }
                        }
                        if (a10 != null) {
                            enumC8071kK = EnumC8071kK.f49584h;
                            a22 = this.f48286c;
                        } else if (c6382aB.f46457p.E().d0()) {
                            enumC8071kK = EnumC8071kK.f49584h;
                            a22 = this.f48286c;
                        } else {
                            enumC8071kK = EnumC8071kK.f49587k;
                            i23 = this.f48286c.f36127i;
                            i22 = i23;
                            a23 = a10;
                        }
                        a23 = a22;
                        i22 = null;
                    }
                    a10 = null;
                    if (!C4536k2.f37415h) {
                    }
                    if (a10 != null) {
                    }
                    a23 = a22;
                    i22 = null;
                } else {
                    if (m22 == c4724u1.f37913N2) {
                        if (c4536k2.f37419d.contains(a24.f38298g)) {
                            C4724u1 c4724u12 = c4536k2.f37422g;
                            a10 = c4724u12.a(c4724u12.f37913N2, c4536k2.f37416a, a24.f38298g);
                        } else if (c4536k2.f37420e.contains(a24.f38298g)) {
                            C4724u1 c4724u13 = c4536k2.f37422g;
                            a10 = c4724u13.a(c4724u13.f37913N2, c4536k2.f37417b, a24.f38298g);
                        } else if (c4536k2.f37421f.contains(a24.f38298g)) {
                            C4724u1 c4724u14 = c4536k2.f37422g;
                            a10 = c4724u14.a(c4724u14.f37913N2, c4536k2.f37418c, a24.f38298g);
                        }
                        if (!C4536k2.f37415h) {
                        }
                        if (a10 != null) {
                        }
                        a23 = a22;
                        i22 = null;
                    }
                    a10 = null;
                    if (!C4536k2.f37415h) {
                    }
                    if (a10 != null) {
                    }
                    a23 = a22;
                    i22 = null;
                }
                int size = this.f48286c.x0().size();
                if (enumC8071kK != EnumC8071kK.f49582f) {
                    size++;
                }
                EnumC5477Kw0[] enumC5477Kw0Arr = new EnumC5477Kw0[size];
                Integer[] numArr = new Integer[size];
                for (i10 = size - 1; i10 >= 0; i10--) {
                    C8774ob a11 = c9775ub.a();
                    enumC5477Kw0Arr[i10] = a11.f51281b;
                    numArr[i10] = Integer.valueOf(a11.f51280a);
                }
                asList = Arrays.asList(enumC5477Kw0Arr);
                List asList2 = Arrays.asList(numArr);
                boolean z10 = this.f48288e;
                c6382aB.getClass();
                if (C6382aB.f46438D && asList.size() != asList2.size()) {
                    throw new AssertionError();
                }
                ArrayList arrayList = new ArrayList(asList.size());
                for (int i11 = 0; i11 < asList.size(); i11++) {
                    arrayList.add(c6382aB.b(((Integer) asList2.get(i11)).intValue(), EnumC5592Mw0.a((EnumC5477Kw0) asList.get(i11))));
                }
                c6382aB.a(enumC8071kK, a23, i22, arrayList, z10);
                if (!this.f48286c.z0().S0()) {
                    com.android.tools.r8.graph.M2 z02 = this.f48286c.z0();
                    c9775ub.getClass();
                    c6382aB.c(c9775ub.a(new C9108qb(z02)).f51280a);
                }
                if (f48285f && enumC8071kK != EnumC8071kK.a(this.f48287d, this.f48286c, c6382aB.f46455n, c6382aB.f46457p, c6382aB.f46458q)) {
                    throw new AssertionError();
                }
                return;
            case 183:
                C4798y c4798y = c6382aB.f46457p;
                com.android.tools.r8.graph.H5 h52 = c6382aB.f46455n;
                a10 = this.f48286c;
                enumC8071kK = EnumC8071kK.a(a10, h52, c4798y, c6382aB.f46458q);
                i22 = i23;
                a23 = a10;
                int size2 = this.f48286c.x0().size();
                if (enumC8071kK != EnumC8071kK.f49582f) {
                }
                EnumC5477Kw0[] enumC5477Kw0Arr2 = new EnumC5477Kw0[size2];
                Integer[] numArr2 = new Integer[size2];
                while (i10 >= 0) {
                }
                asList = Arrays.asList(enumC5477Kw0Arr2);
                List asList22 = Arrays.asList(numArr2);
                boolean z102 = this.f48288e;
                c6382aB.getClass();
                if (C6382aB.f46438D) {
                    break;
                }
                ArrayList arrayList2 = new ArrayList(asList.size());
                while (i11 < asList.size()) {
                }
                c6382aB.a(enumC8071kK, a23, i22, arrayList2, z102);
                if (!this.f48286c.z0().S0()) {
                }
                if (f48285f) {
                    return;
                } else {
                    return;
                }
            case 184:
                a22 = this.f48286c;
                enumC8071kK = EnumC8071kK.f49582f;
                a23 = a22;
                i22 = null;
                int size22 = this.f48286c.x0().size();
                if (enumC8071kK != EnumC8071kK.f49582f) {
                }
                EnumC5477Kw0[] enumC5477Kw0Arr22 = new EnumC5477Kw0[size22];
                Integer[] numArr22 = new Integer[size22];
                while (i10 >= 0) {
                }
                asList = Arrays.asList(enumC5477Kw0Arr22);
                List asList222 = Arrays.asList(numArr22);
                boolean z1022 = this.f48288e;
                c6382aB.getClass();
                if (C6382aB.f46438D) {
                }
                ArrayList arrayList22 = new ArrayList(asList.size());
                while (i11 < asList.size()) {
                }
                c6382aB.a(enumC8071kK, a23, i22, arrayList22, z1022);
                if (!this.f48286c.z0().S0()) {
                }
                if (f48285f) {
                }
                break;
            case 185:
                a22 = this.f48286c;
                enumC8071kK = EnumC8071kK.f49581e;
                a23 = a22;
                i22 = null;
                int size222 = this.f48286c.x0().size();
                if (enumC8071kK != EnumC8071kK.f49582f) {
                }
                EnumC5477Kw0[] enumC5477Kw0Arr222 = new EnumC5477Kw0[size222];
                Integer[] numArr222 = new Integer[size222];
                while (i10 >= 0) {
                }
                asList = Arrays.asList(enumC5477Kw0Arr222);
                List asList2222 = Arrays.asList(numArr222);
                boolean z10222 = this.f48288e;
                c6382aB.getClass();
                if (C6382aB.f46438D) {
                }
                ArrayList arrayList222 = new ArrayList(asList.size());
                while (i11 < asList.size()) {
                }
                c6382aB.a(enumC8071kK, a23, i22, arrayList222, z10222);
                if (!this.f48286c.z0().S0()) {
                }
                if (f48285f) {
                }
                break;
            default:
                throw new C5417Jv0("unknown CfInvoke opcode " + this.f48287d);
        }
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        H9 a10 = h92.a(c4798y, o82, this.f48286c.x0().f36675b);
        if (this.f48287d != 184) {
            if (this.f48286c.s0().E0()) {
                a10 = a10.g();
            } else {
                C4724u1 b10 = c4798y.b();
                if (this.f48287d == 183 && this.f48286c.b(b10)) {
                    a10 = a10.a(this.f48286c, o82);
                } else {
                    a10 = a10.a(c4798y, o82, this.f48286c.s0());
                }
            }
        }
        return this.f48286c.z0().S0() ? a10 : a10.a(o82, this.f48286c.z0());
    }
}
