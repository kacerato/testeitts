package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AL;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.BL;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C7417gQ;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C8918pQ;
import com.android.tools.r8.internal.C8998pu;
import com.android.tools.r8.internal.EQ;
import com.android.tools.r8.internal.EnumC4899Ax0;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.HV;
import com.android.tools.r8.internal.HX;
import com.android.tools.r8.internal.OL;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class K implements InterfaceC10764d0 {

    public final C8918pQ f55089a;

    public final AbstractC7552hC f55090b;

    public final C10836p0 f55091c;

    public final C10836p0 f55092d;

    public final AbstractC7552hC f55093e;

    public final N f55094f;

    public final C10853s0 f55095g;

    public final A f55096h;

    public final boolean f55097i;

    public final List f55098j;

    public K(C8918pQ c8918pQ, C10836p0 c10836p0, C10836p0 c10836p02, AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2, N n10, C10853s0 c10853s0, A a10, boolean z10, List list) {
        this.f55089a = c8918pQ;
        this.f55091c = c10836p0;
        this.f55092d = c10836p02;
        this.f55090b = abstractC7552hC;
        this.f55093e = abstractC7552hC2;
        this.f55094f = n10;
        this.f55095g = c10853s0;
        this.f55096h = a10;
        this.f55097i = z10;
        this.f55098j = list;
    }

    public static void a(C8918pQ c8918pQ, OL ol2) {
        GJ.c(c8918pQ, "<this>");
        AL.a(c8918pQ).f39834a = ol2;
    }

    @Override
    public final K d() {
        return this;
    }

    @Override
    public final boolean j() {
        return true;
    }

    public static void a(C8918pQ c8918pQ, String str) {
        if (str != null) {
            GJ.c(c8918pQ, "<this>");
            AL.a(c8918pQ).f39835b = str;
        }
    }

    public static K a(C8918pQ c8918pQ, final C4724u1 c4724u1, final C5094Ef0 c5094Ef0) {
        boolean z10;
        AbstractC7552hC a10 = C10858t0.a(c8918pQ.e(), c4724u1, c5094Ef0);
        Iterator it = a10.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            EQ eq = ((C10858t0) it.next()).f55468a;
            XY[] xyArr = C7698i5.f48805a;
            GJ.c(eq, "<this>");
            if (C7698i5.f48808b0.a(eq, xyArr[52])) {
                z10 = true;
                break;
            }
        }
        boolean z11 = z10;
        C10836p0 a11 = C10836p0.a(c4724u1, c5094Ef0, c8918pQ.c());
        C10836p0 a12 = C10836p0.a(c4724u1, c5094Ef0, c8918pQ.b());
        AbstractC7552hC a13 = C10842q0.a(c8918pQ.d(), c4724u1, c5094Ef0);
        N a14 = N.a(BL.a(c8918pQ), c4724u1);
        String str = AL.a(c8918pQ).f39835b;
        return new K(c8918pQ, a11, a12, a10, a13, a14, str != null ? C10853s0.a(str, c4724u1, str) : null, A.a(c8918pQ.f51523i, c4724u1, c5094Ef0), z11, AT.a((Collection) c8918pQ.f51519e, new Function() {
            @Override
            public final Object apply(Object obj) {
                C10836p0 a15;
                a15 = C10836p0.a(C4724u1.this, c5094Ef0, (C10420yQ) obj);
                return a15;
            }
        }));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0163  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(Consumer consumer, C4516j1 c4516j1, C4798y c4798y) {
        String str;
        boolean z10;
        N n10;
        C10853s0 c10853s0;
        String a10 = this.f55089a.a();
        if (c4516j1 != null) {
            String l22 = c4516j1.getReference().f38298g.toString();
            str = c4798y.s().a(c4516j1.getReference()).toString();
            if (!l22.equals(str)) {
                z10 = true;
                GJ.c(str, "name");
                final C8918pQ c8918pQ = new C8918pQ(0, str);
                consumer.accept(c8918pQ);
                C8918pQ c8918pQ2 = this.f55089a;
                XY[] xyArr = C7698i5.f48805a;
                GJ.c(c8918pQ2, "<this>");
                Y6 y62 = C7698i5.f48811d;
                y62.a(c8918pQ, xyArr[2], y62.a(c8918pQ2, xyArr[2]));
                C8998pu c8998pu = C7698i5.f48831v;
                HV hv = (HV) c8998pu.a(c8918pQ2, xyArr[20]);
                GJ.c(hv, "<set-?>");
                c8998pu.a(c8918pQ, xyArr[20], hv);
                C8998pu c8998pu2 = C7698i5.f48833x;
                HX hx = (HX) c8998pu2.a(c8918pQ2, xyArr[22]);
                GJ.c(hx, "<set-?>");
                c8998pu2.a(c8918pQ, xyArr[22], hx);
                Y6 y63 = C7698i5.f48834y;
                y63.a(c8918pQ, xyArr[23], y63.a(c8918pQ2, xyArr[23]));
                Y6 y64 = C7698i5.f48835z;
                y64.a(c8918pQ, xyArr[24], y64.a(c8918pQ2, xyArr[24]));
                Y6 y65 = C7698i5.f48779A;
                y65.a(c8918pQ, xyArr[25], y65.a(c8918pQ2, xyArr[25]));
                Y6 y66 = C7698i5.f48780B;
                y66.a(c8918pQ, xyArr[26], y66.a(c8918pQ2, xyArr[26]));
                Y6 y67 = C7698i5.f48781C;
                y67.a(c8918pQ, xyArr[27], y67.a(c8918pQ2, xyArr[27]));
                Y6 y68 = C7698i5.f48782D;
                y68.a(c8918pQ, xyArr[28], y68.a(c8918pQ2, xyArr[28]));
                Y6 y69 = C7698i5.f48783E;
                y69.a(c8918pQ, xyArr[29], y69.a(c8918pQ2, xyArr[29]));
                C8998pu c8998pu3 = C7698i5.f48832w;
                EnumC4899Ax0 enumC4899Ax0 = (EnumC4899Ax0) c8998pu3.a(c8918pQ2, xyArr[21]);
                GJ.c(enumC4899Ax0, "<set-?>");
                c8998pu3.a(c8918pQ, xyArr[21], enumC4899Ax0);
                Y6 y610 = C7698i5.f48784F;
                y610.a(c8918pQ, xyArr[30], y610.a(c8918pQ2, xyArr[30]));
                boolean b10 = this.f55091c.b(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8918pQ.this.b((C10420yQ) obj);
                    }
                }, c4798y) | z10 | AbstractC10752b0.a(c4798y, this.f55090b, c8918pQ.e(), new C10765d1()) | AbstractC10752b0.a(c4798y, this.f55093e, c8918pQ.d(), new C10771e1()) | AbstractC10752b0.a(c4798y, this.f55098j, c8918pQ.f51519e, new K0()) | AbstractC10752b0.a(c4798y, this.f55092d, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8918pQ.this.a((C10420yQ) obj);
                    }
                }, new K0());
                c8918pQ.f51522h.addAll(this.f55089a.f51522h);
                n10 = this.f55094f;
                if (n10 != null) {
                    b10 |= n10.a(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            K.a(C8918pQ.this, (OL) obj);
                        }
                    }, c4516j1, c4798y);
                }
                c10853s0 = this.f55095g;
                if (c10853s0 != null) {
                    b10 |= c10853s0.a(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            K.a(C8918pQ.this, (String) obj);
                        }
                    }, c4798y, (String) null);
                }
                return b10 | this.f55096h.b(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8918pQ.this.a((C7417gQ) obj);
                    }
                }, c4798y);
            }
        }
        str = a10;
        z10 = false;
        GJ.c(str, "name");
        final C8918pQ c8918pQ3 = new C8918pQ(0, str);
        consumer.accept(c8918pQ3);
        C8918pQ c8918pQ22 = this.f55089a;
        XY[] xyArr2 = C7698i5.f48805a;
        GJ.c(c8918pQ22, "<this>");
        Y6 y622 = C7698i5.f48811d;
        y622.a(c8918pQ3, xyArr2[2], y622.a(c8918pQ22, xyArr2[2]));
        C8998pu c8998pu4 = C7698i5.f48831v;
        HV hv2 = (HV) c8998pu4.a(c8918pQ22, xyArr2[20]);
        GJ.c(hv2, "<set-?>");
        c8998pu4.a(c8918pQ3, xyArr2[20], hv2);
        C8998pu c8998pu22 = C7698i5.f48833x;
        HX hx2 = (HX) c8998pu22.a(c8918pQ22, xyArr2[22]);
        GJ.c(hx2, "<set-?>");
        c8998pu22.a(c8918pQ3, xyArr2[22], hx2);
        Y6 y632 = C7698i5.f48834y;
        y632.a(c8918pQ3, xyArr2[23], y632.a(c8918pQ22, xyArr2[23]));
        Y6 y642 = C7698i5.f48835z;
        y642.a(c8918pQ3, xyArr2[24], y642.a(c8918pQ22, xyArr2[24]));
        Y6 y652 = C7698i5.f48779A;
        y652.a(c8918pQ3, xyArr2[25], y652.a(c8918pQ22, xyArr2[25]));
        Y6 y662 = C7698i5.f48780B;
        y662.a(c8918pQ3, xyArr2[26], y662.a(c8918pQ22, xyArr2[26]));
        Y6 y672 = C7698i5.f48781C;
        y672.a(c8918pQ3, xyArr2[27], y672.a(c8918pQ22, xyArr2[27]));
        Y6 y682 = C7698i5.f48782D;
        y682.a(c8918pQ3, xyArr2[28], y682.a(c8918pQ22, xyArr2[28]));
        Y6 y692 = C7698i5.f48783E;
        y692.a(c8918pQ3, xyArr2[29], y692.a(c8918pQ22, xyArr2[29]));
        C8998pu c8998pu32 = C7698i5.f48832w;
        EnumC4899Ax0 enumC4899Ax02 = (EnumC4899Ax0) c8998pu32.a(c8918pQ22, xyArr2[21]);
        GJ.c(enumC4899Ax02, "<set-?>");
        c8998pu32.a(c8918pQ3, xyArr2[21], enumC4899Ax02);
        Y6 y6102 = C7698i5.f48784F;
        y6102.a(c8918pQ3, xyArr2[30], y6102.a(c8918pQ22, xyArr2[30]));
        boolean b102 = this.f55091c.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8918pQ.this.b((C10420yQ) obj);
            }
        }, c4798y) | z10 | AbstractC10752b0.a(c4798y, this.f55090b, c8918pQ3.e(), new C10765d1()) | AbstractC10752b0.a(c4798y, this.f55093e, c8918pQ3.d(), new C10771e1()) | AbstractC10752b0.a(c4798y, this.f55098j, c8918pQ3.f51519e, new K0()) | AbstractC10752b0.a(c4798y, this.f55092d, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8918pQ.this.a((C10420yQ) obj);
            }
        }, new K0());
        c8918pQ3.f51522h.addAll(this.f55089a.f51522h);
        n10 = this.f55094f;
        if (n10 != null) {
        }
        c10853s0 = this.f55095g;
        if (c10853s0 != null) {
        }
        return b102 | this.f55096h.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8918pQ.this.a((C7417gQ) obj);
            }
        }, c4798y);
    }

    public final boolean a(Consumer consumer, C4798y c4798y) {
        return a(consumer, (C4516j1) null, c4798y);
    }

    public static Consumer a(C10858t0 c10858t0) {
        Objects.requireNonNull(c10858t0);
        return new W0(c10858t0);
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C5480Ky.a((Iterable) this.f55090b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return K.a((C10858t0) obj);
            }
        }, (Object) interfaceC4403d1);
        this.f55091c.a(interfaceC4403d1);
        C10836p0 c10836p0 = this.f55092d;
        if (c10836p0 != null) {
            c10836p0.a(interfaceC4403d1);
        }
        C5480Ky.a((Iterable) this.f55093e, new Function() {
            @Override
            public final Object apply(Object obj) {
                return K.a((C10842q0) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55098j, new Function() {
            @Override
            public final Object apply(Object obj) {
                return K.a((C10836p0) obj);
            }
        }, (Object) interfaceC4403d1);
        N n10 = this.f55094f;
        if (n10 != null) {
            n10.a(interfaceC4403d1);
        }
        C10853s0 c10853s0 = this.f55095g;
        if (c10853s0 != null) {
            c10853s0.a(interfaceC4403d1);
        }
        this.f55096h.a(interfaceC4403d1);
    }

    public static Consumer a(C10842q0 c10842q0) {
        Objects.requireNonNull(c10842q0);
        return new X0(c10842q0);
    }

    public static Consumer a(C10836p0 c10836p0) {
        Objects.requireNonNull(c10836p0);
        return new C10753b1(c10836p0);
    }
}
