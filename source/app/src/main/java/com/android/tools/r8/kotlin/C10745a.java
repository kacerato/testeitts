package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AL;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC10076wL;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.BL;
import com.android.tools.r8.internal.C10086wQ;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C8998pu;
import com.android.tools.r8.internal.C9919vQ;
import com.android.tools.r8.internal.CL;
import com.android.tools.r8.internal.EQ;
import com.android.tools.r8.internal.EnumC4899Ax0;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.HV;
import com.android.tools.r8.internal.HX;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.OL;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10745a implements InterfaceC10788h0 {

    public static final boolean f55237l = true;

    public final C9919vQ f55238a;

    public final C10836p0 f55239b;

    public final C10836p0 f55240c;

    public final C10858t0 f55241d;

    public final AbstractC7552hC f55242e;

    public final L f55243f;

    public final N f55244g;

    public final N f55245h;

    public final N f55246i;

    public final N f55247j;

    public final List f55248k;

    public C10745a(C9919vQ c9919vQ, C10836p0 c10836p0, C10836p0 c10836p02, C10858t0 c10858t0, AbstractC7552hC abstractC7552hC, L l10, N n10, N n11, N n12, N n13, List list) {
        if (!f55237l && c10836p0 == null) {
            throw new AssertionError();
        }
        this.f55238a = c9919vQ;
        this.f55239b = c10836p0;
        this.f55240c = c10836p02;
        this.f55241d = c10858t0;
        this.f55242e = abstractC7552hC;
        this.f55243f = l10;
        this.f55244g = n10;
        this.f55245h = n11;
        this.f55246i = n12;
        this.f55247j = n13;
        this.f55248k = list;
    }

    public static void a(C9919vQ c9919vQ, CL cl2) {
        GJ.c(c9919vQ, "<this>");
        AL.a(c9919vQ).f45665b = cl2;
    }

    public static void b(C9919vQ c9919vQ, OL ol2) {
        GJ.c(c9919vQ, "<this>");
        AL.a(c9919vQ).f45667d = ol2;
    }

    public static void c(C9919vQ c9919vQ, OL ol2) {
        GJ.c(c9919vQ, "<this>");
        AL.a(c9919vQ).f45668e = ol2;
    }

    public static void d(C9919vQ c9919vQ, OL ol2) {
        GJ.c(c9919vQ, "<this>");
        AL.a(c9919vQ).f45669f = ol2;
    }

    public final String toString() {
        return "KotlinPropertyInfo(" + this.f55238a.b() + ")";
    }

    public static void a(C9919vQ c9919vQ, OL ol2) {
        GJ.c(c9919vQ, "<this>");
        AL.a(c9919vQ).f45666c = ol2;
    }

    public static C10745a a(C9919vQ c9919vQ, final C4724u1 c4724u1, final C5094Ef0 c5094Ef0) {
        C10836p0 a10 = C10836p0.a(c4724u1, c5094Ef0, c9919vQ.d());
        C10836p0 a11 = C10836p0.a(c4724u1, c5094Ef0, c9919vQ.c());
        EQ eq = c9919vQ.f53108i;
        C6190Xe0 c6190Xe0 = C10858t0.f55467d;
        L l10 = null;
        C10858t0 c10858t0 = eq == null ? null : new C10858t0(eq, C10836p0.a(c4724u1, c5094Ef0, eq.a()), C10836p0.a(c4724u1, c5094Ef0, eq.b()));
        AbstractC7552hC a12 = C10842q0.a(c9919vQ.f53105f, c4724u1, c5094Ef0);
        CL a13 = BL.a(c9919vQ);
        if (a13 != null) {
            String a14 = a13.a();
            String str = a13.f39191b;
            l10 = new L(C10853s0.a(str, c4724u1, str, false), a14);
        }
        return new C10745a(c9919vQ, a10, a11, c10858t0, a12, l10, N.a(BL.b(c9919vQ), c4724u1), N.a(BL.c(c9919vQ), c4724u1), N.a(AL.a(c9919vQ).a(), c4724u1), N.a(AL.a(c9919vQ).f45669f, c4724u1), AT.a((Collection) c9919vQ.f53107h, new Function() {
            @Override
            public final Object apply(Object obj) {
                C10836p0 a15;
                a15 = C10836p0.a(C4724u1.this, c5094Ef0, (C10420yQ) obj);
                return a15;
            }
        }));
    }

    @Override
    public final boolean a(Consumer consumer, C4798y c4798y) {
        return a(consumer, null, null, null, null, c4798y);
    }

    @Override
    public final boolean a(Consumer consumer, C4460g1 c4460g1, C4516j1 c4516j1, C4516j1 c4516j12, C4516j1 c4516j13, C4798y c4798y) {
        String b10 = this.f55238a.b();
        GJ.c(b10, "name");
        final C9919vQ c9919vQ = new C9919vQ(0, 0, 0, b10);
        consumer.accept(c9919vQ);
        C9919vQ c9919vQ2 = this.f55238a;
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c9919vQ2, "<this>");
        Y6 y62 = C7698i5.f48813e;
        y62.a(c9919vQ, xyArr[3], y62.a(c9919vQ2, xyArr[3]));
        C8998pu c8998pu = C7698i5.f48785G;
        EnumC4899Ax0 enumC4899Ax0 = (EnumC4899Ax0) c8998pu.a(c9919vQ2, xyArr[31]);
        GJ.c(enumC4899Ax0, "<set-?>");
        c8998pu.a(c9919vQ, xyArr[31], enumC4899Ax0);
        C8998pu c8998pu2 = C7698i5.f48786H;
        HX hx = (HX) c8998pu2.a(c9919vQ2, xyArr[32]);
        GJ.c(hx, "<set-?>");
        c8998pu2.a(c9919vQ, xyArr[32], hx);
        C8998pu c8998pu3 = C7698i5.f48787I;
        HV hv = (HV) c8998pu3.a(c9919vQ2, xyArr[33]);
        GJ.c(hv, "<set-?>");
        c8998pu3.a(c9919vQ, xyArr[33], hv);
        Y6 y63 = C7698i5.f48788J;
        y63.a(c9919vQ, xyArr[34], y63.a(c9919vQ2, xyArr[34]));
        Y6 y64 = C7698i5.f48789K;
        y64.a(c9919vQ, xyArr[35], y64.a(c9919vQ2, xyArr[35]));
        Y6 y65 = C7698i5.f48790L;
        y65.a(c9919vQ, xyArr[36], y65.a(c9919vQ2, xyArr[36]));
        Y6 y66 = C7698i5.f48791M;
        y66.a(c9919vQ, xyArr[37], y66.a(c9919vQ2, xyArr[37]));
        Y6 y67 = C7698i5.f48792N;
        y67.a(c9919vQ, xyArr[38], y67.a(c9919vQ2, xyArr[38]));
        Y6 y68 = C7698i5.f48793O;
        y68.a(c9919vQ, xyArr[39], y68.a(c9919vQ2, xyArr[39]));
        Y6 y69 = C7698i5.f48794P;
        y69.a(c9919vQ, xyArr[40], y69.a(c9919vQ2, xyArr[40]));
        XY[] xyArr2 = AbstractC10076wL.f53476a;
        Y6 y610 = AbstractC10076wL.f53477b;
        y610.a(c9919vQ, xyArr2[0], y610.a(c9919vQ2, xyArr2[0]));
        I.a(this.f55238a.f53103d, c9919vQ.f53103d);
        if (this.f55238a.f53104e != null) {
            C10086wQ c10086wQ = new C10086wQ();
            c9919vQ.f53102c.a(c9919vQ, C9919vQ.f53099m[0], true);
            c9919vQ.f53104e = c10086wQ;
            I.a(this.f55238a.f53104e, c10086wQ);
        }
        boolean a10 = AbstractC10752b0.a(c4798y, this.f55239b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9919vQ.this.b((C10420yQ) obj);
            }
        }, new K0()) | AbstractC10752b0.a(c4798y, this.f55240c, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9919vQ.this.a((C10420yQ) obj);
            }
        }, new K0()) | AbstractC10752b0.a(c4798y, this.f55241d, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9919vQ.this.a((EQ) obj);
            }
        }, new C10765d1()) | AbstractC10752b0.a(c4798y, this.f55242e, c9919vQ.f53105f, new C10771e1()) | AbstractC10752b0.a(c4798y, this.f55248k, c9919vQ.f53107h, new K0());
        c9919vQ.f53110k.addAll(this.f55238a.f53110k);
        L l10 = this.f55243f;
        if (l10 != null) {
            a10 |= l10.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10745a.a(C9919vQ.this, (CL) obj);
                }
            }, c4460g1, c4798y);
        }
        N n10 = this.f55244g;
        if (n10 != null) {
            a10 |= n10.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10745a.a(C9919vQ.this, (OL) obj);
                }
            }, c4516j1, c4798y);
        }
        N n11 = this.f55245h;
        if (n11 != null) {
            a10 |= n11.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10745a.b(C9919vQ.this, (OL) obj);
                }
            }, c4516j12, c4798y);
        }
        N n12 = this.f55246i;
        if (n12 != null) {
            a10 |= n12.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10745a.c(C9919vQ.this, (OL) obj);
                }
            }, c4516j13, c4798y);
        }
        return a10 | AbstractC10752b0.a(c4798y, this.f55247j, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10745a.d(C9919vQ.this, (OL) obj);
            }
        }, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return Boolean.valueOf(((N) obj).a((Consumer) obj2, (C4798y) obj3));
            }
        });
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55239b.a(interfaceC4403d1);
        C10836p0 c10836p0 = this.f55240c;
        if (c10836p0 != null) {
            c10836p0.a(interfaceC4403d1);
        }
        C10858t0 c10858t0 = this.f55241d;
        if (c10858t0 != null) {
            c10858t0.a(interfaceC4403d1);
        }
        C5480Ky.a((Iterable) this.f55242e, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10745a.a((C10842q0) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55248k, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10745a.a((C10836p0) obj);
            }
        }, (Object) interfaceC4403d1);
        L l10 = this.f55243f;
        if (l10 != null) {
            l10.f55106a.a(interfaceC4403d1);
        }
        N n10 = this.f55244g;
        if (n10 != null) {
            n10.a(interfaceC4403d1);
        }
        N n11 = this.f55245h;
        if (n11 != null) {
            n11.a(interfaceC4403d1);
        }
        N n12 = this.f55246i;
        if (n12 != null) {
            n12.a(interfaceC4403d1);
        }
        N n13 = this.f55247j;
        if (n13 != null) {
            n13.a(interfaceC4403d1);
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
}
