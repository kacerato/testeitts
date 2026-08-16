package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.InterfaceC9597tW;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.U6;
import com.android.tools.r8.internal.X60;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.naming.C10983p0;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class Z {

    public static final boolean f55228d = true;

    public final C4798y f55229a;

    public final C4724u1 f55230b;

    public final C10781g f55231c;

    public Z(C4798y c4798y) {
        this.f55229a = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f55230b = b10;
        this.f55231c = b10.f38007a5;
    }

    public static C4666r0 a(C4666r0 c4666r0, C4666r0 c4666r02, C4666r0 c4666r03) {
        return c4666r03 == c4666r0 ? c4666r02 : c4666r03;
    }

    public final void b(ExecutorService executorService) {
        final com.android.tools.r8.graph.M2 d10 = this.f55229a.v().d(this.f55229a.f38418k, this.f55230b.f37858F3);
        com.android.tools.r8.graph.E0 c10 = this.f55229a.f().c(d10);
        final Y y10 = c10 == null ? new Y(true, true, true, true, true, true, true) : new Y(a(c10, this.f55229a, this.f55231c.f55311d.f55280a), a(c10, this.f55229a, this.f55231c.f55311d.f55281b), a(c10, this.f55229a, this.f55231c.f55311d.f55282c), a(c10, this.f55229a, this.f55231c.f55311d.f55283d), a(c10, this.f55229a, this.f55231c.f55311d.f55284e), a(c10, this.f55229a, this.f55231c.f55311d.f55285f), a(c10, this.f55229a, this.f55231c.f55311d.f55286g));
        com.android.tools.r8.J.a(this.f55229a, this.f55229a.f().d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                Z.this.a(d10, y10, (com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
        C4798y c4798y = this.f55229a;
        c4798y.f38418k = c4798y.v();
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, C4666r0 c4666r0) {
        return c4666r0.f37693c.f37142b != m22;
    }

    public final void a(ExecutorService executorService) {
        AbstractC10992r0 s10 = this.f55229a.s();
        s10.getClass();
        if (s10 instanceof C10983p0) {
            return;
        }
        final Y y10 = new Y(true, true, true, true, true, true, true);
        final U6 u62 = new U6();
        com.android.tools.r8.J.a(this.f55229a, this.f55229a.f().d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                Z.this.a(u62, y10, (com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void a(final U6 u62, Y y10, com.android.tools.r8.graph.H2 h22) {
        C4666r0 a10 = h22.k0().a(this.f55230b.f37858F3);
        if (a10 == null) {
            return;
        }
        C4798y c4798y = this.f55229a;
        Consumer b10 = C6628bi.b();
        Objects.requireNonNull(u62);
        InterfaceC10835p a11 = r.a(c4798y, h22, a10, b10, new Supplier() {
            @Override
            public final Object get() {
                return U6.this.b();
            }
        });
        if (a11 == AbstractC10752b0.f55256b) {
            return;
        }
        a(h22, a11, a10, y10);
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, final InterfaceC10835p interfaceC10835p, final C4666r0 c4666r0, final Y y10) {
        try {
            final C8699o50 a10 = interfaceC10835p.a(h22, this.f55229a);
            if (!((Boolean) a10.b()).booleanValue() && this.f55229a.E().f50599F1.f50837P0) {
                if (!f55228d && !this.f55229a.a(new Supplier() {
                    @Override
                    public final Object get() {
                        return Z.this.a(h22, a10, interfaceC10835p, y10);
                    }
                })) {
                    throw new AssertionError();
                }
                return;
            }
            InterfaceC9597tW interfaceC9597tW = (InterfaceC9597tW) a10.a();
            String r10 = interfaceC10835p.r();
            ML u10 = interfaceC10835p.u();
            ML ml2 = AbstractC10752b0.f55255a;
            if (ml2.compareTo(u10) >= 0) {
                u10 = ml2;
            }
            final C4666r0 a11 = a(interfaceC9597tW, r10, u10, y10);
            h22.f37066b = h22.k0().a(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Z.a(C4666r0.this, a11, (C4666r0) obj);
                }
            });
        } catch (Throwable th2) {
            if (!f55228d && !this.f55229a.a(new Supplier() {
                @Override
                public final Object get() {
                    return Z.this.a(h22, th2);
                }
            })) {
                throw new AssertionError();
            }
            this.f55229a.E().f50691j.warning(T.a(h22.f36245e, th2));
        }
    }

    public final Boolean a(com.android.tools.r8.graph.E0 e02, C8699o50 c8699o50, InterfaceC10835p interfaceC10835p, Y y10) {
        C4666r0 a10 = e02.k0().a(this.f55230b.f37858F3);
        InterfaceC9597tW interfaceC9597tW = (InterfaceC9597tW) c8699o50.a();
        String r10 = interfaceC10835p.r();
        ML u10 = interfaceC10835p.u();
        ML ml2 = AbstractC10752b0.f55255a;
        if (ml2.compareTo(u10) >= 0) {
            u10 = ml2;
        }
        C4666r0 a11 = a(interfaceC9597tW, r10, u10, y10);
        try {
            String a12 = C10758c0.a("", r.a(this.f55231c, a10.f37693c));
            String a13 = C10758c0.a("", r.a(this.f55231c, a11.f37693c));
            if (!f55228d && !a12.equals(a13)) {
                throw new AssertionError((Object) "The metadata should be equivalent");
            }
        } catch (W unused) {
        }
        return Boolean.TRUE;
    }

    public final Boolean a(com.android.tools.r8.graph.E0 e02, Throwable th2) {
        C5094Ef0 c5094Ef0 = this.f55229a.E().f50691j;
        c5094Ef0.a(null, T.a(e02.f36245e, th2));
        throw c5094Ef0.f39969c;
    }

    public static boolean a(com.android.tools.r8.graph.E0 e02, C4798y c4798y, final com.android.tools.r8.graph.L2 l22) {
        if (c4798y.f().i() && !e02.v1()) {
            return e02.c(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Z.a(com.android.tools.r8.graph.L2.this, (C4516j1) obj);
                }
            }).iterator().hasNext();
        }
        return true;
    }

    public static boolean a(com.android.tools.r8.graph.L2 l22, C4516j1 c4516j1) {
        return c4516j1.getReference().f38298g == l22;
    }

    public final C4666r0 a(InterfaceC9597tW interfaceC9597tW, String str, ML ml2, Y y10) {
        ArrayList arrayList = new ArrayList();
        if (y10.f55218b) {
            com.android.tools.r8.graph.L2 l22 = this.f55231c.f55311d.f55281b;
            ML ml3 = M.f55114a;
            int[] iArr = {ml2.f42275b, ml2.f42276c, ml2.f42277d};
            com.android.tools.r8.graph.R2[] r2Arr = new com.android.tools.r8.graph.R2[3];
            for (int i10 = 0; i10 < 3; i10++) {
                r2Arr[i10] = R2.h.j(iArr[i10]);
            }
            arrayList.add(new C4704t0(l22, new R2.b(r2Arr)));
        }
        if (y10.f55217a) {
            arrayList.add(new C4704t0(this.f55231c.f55311d.f55280a, R2.h.j(interfaceC9597tW.k())));
        }
        if (y10.f55219c) {
            com.android.tools.r8.graph.L2 l23 = this.f55231c.f55311d.f55282c;
            String[] d12 = interfaceC9597tW.d1();
            com.android.tools.r8.graph.R2[] r2Arr2 = new com.android.tools.r8.graph.R2[d12.length];
            for (int i11 = 0; i11 < d12.length; i11++) {
                r2Arr2[i11] = new R2.k(this.f55230b.b(d12[i11]));
            }
            arrayList.add(new C4704t0(l23, new R2.b(r2Arr2)));
        }
        if (y10.f55220d) {
            com.android.tools.r8.graph.L2 l24 = this.f55231c.f55311d.f55283d;
            String[] d22 = interfaceC9597tW.d2();
            com.android.tools.r8.graph.R2[] r2Arr3 = new com.android.tools.r8.graph.R2[d22.length];
            for (int i12 = 0; i12 < d22.length; i12++) {
                r2Arr3[i12] = new R2.k(this.f55230b.b(d22[i12]));
            }
            arrayList.add(new C4704t0(l24, new R2.b(r2Arr3)));
        }
        if (y10.f55222f && str != null && !str.isEmpty()) {
            arrayList.add(new C4704t0(this.f55231c.f55311d.f55285f, new R2.k(this.f55230b.b(str))));
        }
        if (y10.f55221e && !interfaceC9597tW.xs().isEmpty()) {
            arrayList.add(new C4704t0(this.f55231c.f55311d.f55284e, new R2.k(this.f55230b.b(interfaceC9597tW.xs()))));
        }
        if (y10.f55223g && interfaceC9597tW.xi() != 0) {
            arrayList.add(new C4704t0(this.f55231c.f55311d.f55286g, R2.h.j(interfaceC9597tW.xi())));
        }
        return new C4666r0(1, new C4422e1(this.f55230b.f37858F3, (C4704t0[]) arrayList.toArray(C4704t0.f37736d)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
    
        if (r3.a((com.android.tools.r8.graph.D5) r7).d(r2.j()) == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final com.android.tools.r8.graph.M2 m22, Y y10, com.android.tools.r8.graph.H2 h22) {
        InterfaceC10835p interfaceC10835p = h22.f36369x;
        if (interfaceC10835p == AbstractC10752b0.f55257c) {
            return;
        }
        C4666r0 a10 = h22.k0().a(m22);
        if (a10 != null && interfaceC10835p != AbstractC10752b0.f55256b) {
            if (this.f55229a.f().i()) {
                C11245i f10 = this.f55229a.M().f();
                AbstractC11516y1 abstractC11516y1 = f10.f57407v;
            }
            a(h22, interfaceC10835p, a10, y10);
            return;
        }
        if (a10 != null) {
            C4723u0 k02 = h22.k0();
            Predicate predicate = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Z.a(com.android.tools.r8.graph.M2.this, (C4666r0) obj);
                }
            };
            k02.getClass();
            h22.f37066b = k02.b(X60.a(predicate));
        }
    }
}
