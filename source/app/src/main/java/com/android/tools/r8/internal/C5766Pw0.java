package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4818z0;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.ir.desugar.varhandle.VarHandleDesugaringMethods;
import com.android.tools.r8.synthesis.S;
import java.lang.constant.ConstantDescs;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class C5766Pw0 implements X9, InterfaceC7875j9 {

    public static final boolean f43411d = true;

    public final C4798y f43412b;

    public final C4724u1 f43413c;

    public C5766Pw0(C4798y c4798y) {
        this.f43412b = c4798y;
        this.f43413c = c4798y.b();
    }

    public static boolean b(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        if (m22 != c4724u1.f38080j6) {
            return m22 == c4724u1.f37913N2;
        }
        if (f43411d) {
            return true;
        }
        throw new AssertionError();
    }

    public static GX c() {
        return new GX("MethodHandlesLookup desugaring");
    }

    public static void d(C4724u1 c4724u1) {
        synchronized (c4724u1) {
            c4724u1.a(c4724u1.d(c4724u1.b("Ljava/lang/Byte;")));
        }
        AbstractC9198r5.a(c4724u1, "Ljava/lang/ClassCastException;", "Ljava/lang/Double;", "Ljava/lang/Float;", "Ljava/lang/IllegalArgumentException;");
        AbstractC9198r5.a(c4724u1, "Ljava/lang/Integer;", "Ljava/lang/Long;", "Ljava/lang/NoSuchFieldException;", "Ljava/lang/RuntimeException;");
        AbstractC9198r5.a(c4724u1, "Ljava/lang/Short;", "Ljava/lang/UnsupportedOperationException;", "Ljava/lang/invoke/VarHandle;", "Ljava/lang/reflect/Field;");
        c4724u1.c("Ljava/lang/reflect/Modifier;");
        c4724u1.c("Lsun/misc/Unsafe;");
        c4724u1.c("[Ljava/lang/reflect/Field;");
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02bd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Collection a(C7437ga c7437ga, int i10, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22;
        boolean z10;
        com.android.tools.r8.graph.M2 m23;
        boolean z11;
        int i11;
        int i12;
        com.android.tools.r8.graph.M2 m24;
        int i13 = i10;
        if (h52.p() != this.f43413c.f37913N2) {
            b(this.f43412b, abstractC7103ea, new C5920Sm0(h52));
        }
        boolean z12 = f43411d;
        if (!z12 && !c7437ga.P()) {
            throw new AssertionError();
        }
        int i14 = 2;
        int i15 = 1;
        if (!z12 && ((i13 != 1 && i13 != 2) || c7437ga.V().y0().m0() < i13)) {
            throw new AssertionError();
        }
        int m02 = c7437ga.V().y0().m0() - i13;
        if (!z12 && m02 > 2) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.I2 y02 = c7437ga.V().y0();
        com.android.tools.r8.graph.M2 m25 = c7437ga.V().y0().f36441f.f36675b[0];
        com.android.tools.r8.graph.M2 m26 = null;
        if (!m25.I0() && !m25.E0()) {
            return null;
        }
        if (m25.E0()) {
            m22 = m25.a(1, this.f43413c);
            C4724u1 c4724u12 = this.f43413c;
            if ((m22 != c4724u12.f37884J1 && m22 != c4724u12.f37891K1 && !m22.Q0()) || c7437ga.V().y0().f36441f.f36675b[1] != this.f43413c.f37884J1) {
                return null;
            }
        } else {
            m22 = null;
        }
        C7051eC c7051eC = new C7051eC();
        ArrayList arrayList = new ArrayList(y02.f36441f.size());
        if (m02 > 0) {
            com.android.tools.r8.graph.M2 j10 = y02.f36441f.j(i13);
            if (!j10.L0() && !j10.M0() && !j10.S0()) {
                j10 = this.f43413c.f38068i2;
            }
            m26 = j10;
            z10 = false;
            for (int i16 = i13; i16 < y02.f36441f.size(); i16++) {
                z10 = z10 || y02.f36441f.j(i16).T0();
                com.android.tools.r8.graph.M2 j11 = y02.f36441f.j(i16);
                if (!j11.L0() && !j11.M0() && !j11.S0()) {
                    j11 = this.f43413c.f38068i2;
                }
                if (j11 != m26) {
                    m26 = this.f43413c.f38068i2;
                }
            }
            if (!f43411d && !m26.L0() && !m26.M0() && m26 != this.f43413c.f38068i2) {
                throw new AssertionError();
            }
        } else {
            z10 = false;
        }
        com.android.tools.r8.graph.L2 t02 = c7437ga.V().t0();
        if (this.f43413c.f38015b5.f37421f.contains(t02)) {
            m23 = y02.f36440e;
        } else {
            m23 = y02.f36440e;
            if (!m23.L0() && !m23.M0() && !m23.S0()) {
                m23 = this.f43413c.f38068i2;
            }
        }
        if (m23.S0() && this.f43413c.f38015b5.f37419d.contains(t02)) {
            m23 = this.f43413c.f38068i2;
            z11 = true;
        } else {
            z11 = false;
        }
        if (i13 == 1) {
            arrayList.add(this.f43413c.f38068i2);
        } else {
            boolean z13 = f43411d;
            if (!z13 && i13 != 2) {
                throw new AssertionError();
            }
            if (!z13 && m22 == null) {
                throw new AssertionError();
            }
            boolean z14 = m22.P0() && (m26 == null || m26 == m22) && (this.f43413c.f38015b5.f37421f.contains(t02) || m23.S0() || m23 == m22);
            if (!z14) {
                m25 = this.f43413c.f38068i2;
            }
            arrayList.add(m25);
            arrayList.add(this.f43413c.f37884J1);
            if (!z14) {
                if (m26 != null) {
                    m26 = this.f43413c.f38068i2;
                }
                if (!this.f43413c.f38015b5.f37421f.contains(t02) && !m23.S0()) {
                    m23 = this.f43413c.f38068i2;
                }
            }
        }
        while (i13 < y02.f36441f.size()) {
            if (m26.P0()) {
                arrayList.add(m26);
            } else {
                int i17 = i13 == y02.f36441f.size() - i15 ? i15 : 0;
                arrayList.add(this.f43413c.f38068i2);
                if (y02.f36441f.j(i13).P0()) {
                    if (i17 == 0) {
                        if (z10) {
                            i12 = interfaceC8175ky.a(i14);
                            qt.a(i15);
                            c7051eC.a(new C10443yb(EnumC5477Kw0.a(y02.f36441f.j(i13 + 1)), i12));
                            i11 = 1;
                            qt.a(i11);
                            m24 = m26;
                            c7051eC.a(new C7437ga(184, this.f43413c.c(y02.f36441f.j(i13)), false));
                            if (i17 != 0) {
                                continue;
                            } else if (z10) {
                                if (!f43411d && i12 == -1) {
                                    throw new AssertionError();
                                }
                                c7051eC.a(new C8938pa(EnumC5477Kw0.a(y02.f36441f.j(i13 + 1)), i12));
                            } else {
                                c7051eC.a(new C8106kb(C8106kb.a.Swap));
                            }
                            i13++;
                            m26 = m24;
                            i14 = 2;
                            i15 = 1;
                        } else {
                            c7051eC.a(new C8106kb(C8106kb.a.Swap));
                        }
                    }
                    i11 = 1;
                    i12 = -1;
                    qt.a(i11);
                    m24 = m26;
                    c7051eC.a(new C7437ga(184, this.f43413c.c(y02.f36441f.j(i13)), false));
                    if (i17 != 0) {
                    }
                    i13++;
                    m26 = m24;
                    i14 = 2;
                    i15 = 1;
                }
            }
            m24 = m26;
            i13++;
            m26 = m24;
            i14 = 2;
            i15 = 1;
        }
        boolean z15 = f43411d;
        if (!z15 && arrayList.size() != y02.f36441f.size()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 m27 = y02.f36440e;
        if (m27 != m23 && m27 != this.f43413c.f37905M1) {
            if (m27.P0()) {
                c7051eC.a(new C9544t9(this.f43413c.d(y02.f36440e), false));
            } else {
                c7051eC.a(new C9544t9(y02.f36440e, false));
            }
            arrayList.add(this.f43413c.f38180w2);
        }
        com.android.tools.r8.graph.I2 a10 = this.f43413c.a(m23, arrayList);
        C4724u1 c4724u13 = this.f43413c;
        c7051eC.a(new C7437ga(182, c4724u13.a(c4724u13.f37913N2, a10, t02), false));
        if (z11) {
            qt.a(1);
            c7051eC.a(new C8106kb(C8106kb.a.Pop));
        } else if (y02.f36440e.P0() && !a10.f36440e.P0()) {
            if (!z15 && a10.f36440e != this.f43413c.f38068i2) {
                throw new AssertionError();
            }
            qt.a(2);
            c7051eC.a(new C7710i9(this.f43413c.d(y02.f36440e)));
            c7051eC.a(new C7437ga(182, this.f43413c.f(y02.f36440e), false));
        } else if (y02.f36440e.I0()) {
            com.android.tools.r8.graph.M2 m28 = y02.f36440e;
            C4724u1 c4724u14 = this.f43413c;
            if (m28 != c4724u14.f38068i2 && m28 != c4724u14.f37905M1) {
                qt.a(1);
                c7051eC.a(new C7710i9(y02.f36440e));
            }
        }
        return c7051eC.a();
    }

    public final Collection c(C4724u1 c4724u1, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u12) {
        C4798y c4798y = this.f43412b;
        int i10 = AbstractC7552hC.f48487c;
        a(c4798y, abstractC7103ea, new C5920Sm0(h52));
        C8106kb c8106kb = new C8106kb(C8106kb.a.Swap);
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37958T5;
        return AbstractC7552hC.a(c8106kb, new C7437ga(182, c4724u1.a(m22, c4724u1.a(m22, c4724u1.f38180w2), c4724u1.b("toPrivateLookupIn")), false));
    }

    public static boolean b(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        if (b(c4724u1, a22.f38297f)) {
            return true;
        }
        com.android.tools.r8.graph.I2 i22 = a22.f36127i;
        if (b(c4724u1, i22.f36440e)) {
            return true;
        }
        for (com.android.tools.r8.graph.M2 m22 : i22.f36441f.f36675b) {
            if (b(c4724u1, m22)) {
                return true;
            }
        }
        return false;
    }

    public final Collection b(C4724u1 c4724u1, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u12) {
        C4798y c4798y = this.f43412b;
        int i10 = AbstractC7552hC.f48487c;
        a(c4798y, abstractC7103ea, new C5920Sm0(h52));
        qt.a(2);
        return AbstractC7552hC.a(new C10106wa(c4724u1.f37958T5), new C8106kb(C8106kb.a.Dup), new C7437ga(183, c4724u1.a(c4724u1.f37958T5, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.f38067i1), false));
    }

    public final C6204Xl c(final C4724u1 c4724u1) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u12) {
                return C5766Pw0.this.c(c4724u1, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u12);
            }
        }));
    }

    public static GX d() {
        return new GX("VarHandle desugaring");
    }

    public static void b(final C4798y c4798y, final InterfaceC5882Rw0 interfaceC5882Rw0, final Collection collection) {
        if (!f43411d && !collection.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5766Pw0.b(C4798y.this, (com.android.tools.r8.graph.D5) obj);
            }
        })) {
            throw new AssertionError();
        }
        com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
        Supplier supplier = new Supplier() {
            @Override
            public final Object get() {
                return C5766Pw0.d();
            }
        };
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58177d;
                return bVar;
            }
        };
        com.android.tools.r8.graph.M2 m22 = c4798y.b().f37913N2;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5766Pw0.b(C4798y.this, (com.android.tools.r8.synthesis.W) obj);
            }
        };
        Objects.requireNonNull(interfaceC5882Rw0);
        g10.a(supplier, i10, m22, collection, c4798y, consumer, new C7088eS0(interfaceC5882Rw0), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5766Pw0.a(Collection.this, interfaceC5882Rw0, (com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public static boolean b(C4798y c4798y, com.android.tools.r8.graph.D5 d52) {
        return d52.S() != c4798y.b().f37913N2;
    }

    public static void b(C4798y c4798y, com.android.tools.r8.synthesis.W w10) {
        C4724u1 b10 = c4798y.b();
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1.a a10 = new C4460g1.a(true).a(b10.a(w10.f58283b, b10.c(b10.b("Lsun/misc/Unsafe;")), b10.b("U")));
        a10.f37213c = C4537k3.g(4113);
        C4460g1 a11 = a10.c().a();
        C4460g1.a a12 = new C4460g1.a(true).a(b10.a(w10.f58283b, b10.c(b10.b("Ljava/lang/Class;")), b10.b("recv")));
        a12.f37213c = C4537k3.g(4113);
        C4460g1 a13 = a12.c().a();
        C4460g1.a a14 = new C4460g1.a(true).a(b10.a(w10.f58283b, b10.c(b10.b("Ljava/lang/Class;")), b10.b("type")));
        a14.f37213c = C4537k3.g(4113);
        C4460g1 a15 = a14.c().a();
        C4460g1.a a16 = new C4460g1.a(true).a(b10.a(w10.f58283b, b10.f37891K1, b10.b("offset")));
        a16.f37213c = C4537k3.g(4113);
        C4460g1 a17 = a16.c().a();
        C4460g1.a a18 = new C4460g1.a(true).a(b10.a(w10.f58283b, b10.f37891K1, b10.b("arrayIndexScale")));
        a18.f37213c = C4537k3.g(4113);
        AbstractC7552hC a19 = AbstractC7552hC.a(a11, a13, a15, a17, a18.c().a());
        w10.f58295n.clear();
        w10.f58295n.addAll(a19);
        com.android.tools.r8.graph.A2 a20 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.c(b10.b("Ljava/lang/Class;"))), b10.b(ConstantDescs.INIT_NAME));
        com.android.tools.r8.graph.A2 a21 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.c(b10.b("Ljava/lang/Class;")), b10.c(b10.b("Ljava/lang/String;")), b10.c(b10.b("Ljava/lang/Class;"))), b10.b(ConstantDescs.INIT_NAME));
        com.android.tools.r8.graph.A2 a22 = b10.a(w10.f58283b, b10.a(b10.c(b10.b("Ljava/lang/String;")), new com.android.tools.r8.graph.M2[0]), b10.b("arrayRequiringNativeSupport"));
        com.android.tools.r8.graph.A2 a23 = b10.a(w10.f58283b, b10.a(b10.f38068i2, b10.f37884J1, b10.c(b10.b("Ljava/lang/Class;"))), b10.b("boxIntIfPossible"));
        com.android.tools.r8.graph.A2 a24 = b10.a(w10.f58283b, b10.a(b10.f38068i2, b10.f37891K1, b10.c(b10.b("Ljava/lang/Class;"))), b10.b("boxLongIfPossible"));
        com.android.tools.r8.graph.M2 m22 = w10.f58283b;
        com.android.tools.r8.graph.M2 m23 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m24 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a25 = b10.a(m22, b10.a(m23, m24, m24, m24), b10.b("compareAndSet"));
        com.android.tools.r8.graph.M2 m25 = w10.f58283b;
        com.android.tools.r8.graph.M2 m26 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m27 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a26 = b10.a(m25, b10.a(m26, m27, b10.f37884J1, m27, m27), b10.b("compareAndSet"));
        com.android.tools.r8.graph.M2 m28 = w10.f58283b;
        com.android.tools.r8.graph.M2 m29 = b10.f37849E1;
        com.android.tools.r8.graph.M2 c10 = b10.c(b10.b("[I"));
        com.android.tools.r8.graph.M2 m210 = b10.f37884J1;
        com.android.tools.r8.graph.A2 a27 = b10.a(m28, b10.a(m29, c10, m210, m210, m210), b10.b("compareAndSet"));
        com.android.tools.r8.graph.M2 m211 = w10.f58283b;
        com.android.tools.r8.graph.M2 m212 = b10.f37849E1;
        com.android.tools.r8.graph.M2 c11 = b10.c(b10.b("[J"));
        com.android.tools.r8.graph.M2 m213 = b10.f37884J1;
        com.android.tools.r8.graph.M2 m214 = b10.f37891K1;
        com.android.tools.r8.graph.A2 a28 = b10.a(m211, b10.a(m212, c11, m213, m214, m214), b10.b("compareAndSet"));
        com.android.tools.r8.graph.M2 m215 = w10.f58283b;
        com.android.tools.r8.graph.M2 m216 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m217 = b10.f38068i2;
        com.android.tools.r8.graph.M2 m218 = b10.f37884J1;
        com.android.tools.r8.graph.A2 a29 = b10.a(m215, b10.a(m216, m217, m218, m218), b10.b("compareAndSet"));
        com.android.tools.r8.graph.M2 m219 = w10.f58283b;
        com.android.tools.r8.graph.M2 m220 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m221 = b10.f38068i2;
        com.android.tools.r8.graph.M2 m222 = b10.f37891K1;
        com.android.tools.r8.graph.A2 a30 = b10.a(m219, b10.a(m220, m221, m222, m222), b10.b("compareAndSet"));
        com.android.tools.r8.graph.A2 a31 = b10.a(w10.f58283b, b10.a(b10.c(b10.b("Ljava/lang/RuntimeException;")), new com.android.tools.r8.graph.M2[0]), b10.b("desugarWrongMethodTypeException"));
        com.android.tools.r8.graph.M2 m223 = w10.f58283b;
        com.android.tools.r8.graph.M2 m224 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a32 = b10.a(m223, b10.a(m224, m224), b10.b("get"));
        com.android.tools.r8.graph.M2 m225 = w10.f58283b;
        com.android.tools.r8.graph.M2 m226 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a33 = b10.a(m225, b10.a(m226, m226, b10.f37884J1), b10.b("get"));
        com.android.tools.r8.graph.M2 m227 = w10.f58283b;
        com.android.tools.r8.graph.M2 m228 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a34 = b10.a(m227, b10.a(m228, m228, b10.f37884J1, b10.c(b10.b("Ljava/lang/Class;"))), b10.b("get"));
        com.android.tools.r8.graph.A2 a35 = b10.a(w10.f58283b, b10.a(b10.f37884J1, b10.c(b10.b("[I")), b10.f37884J1), b10.b("get"));
        com.android.tools.r8.graph.A2 a36 = b10.a(w10.f58283b, b10.a(b10.f37891K1, b10.c(b10.b("[J")), b10.f37884J1), b10.b("get"));
        com.android.tools.r8.graph.M2 m229 = w10.f58283b;
        com.android.tools.r8.graph.M2 m230 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a37 = b10.a(m229, b10.a(m230, m230, b10.c(b10.b("Ljava/lang/Class;"))), b10.b("get"));
        com.android.tools.r8.graph.A2 a38 = b10.a(w10.f58283b, b10.a(b10.f37884J1, b10.f38068i2), b10.b("get"));
        com.android.tools.r8.graph.A2 a39 = b10.a(w10.f58283b, b10.a(b10.f37891K1, b10.f38068i2), b10.b("get"));
        com.android.tools.r8.graph.A2 a40 = b10.a(w10.f58283b, b10.a(b10.c(b10.b("Ljava/lang/reflect/Field;")), new com.android.tools.r8.graph.M2[0]), b10.b("getUnsafeField"));
        com.android.tools.r8.graph.M2 m231 = w10.f58283b;
        com.android.tools.r8.graph.M2 m232 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a41 = b10.a(m231, b10.a(m232, m232), b10.b("getVolatile"));
        com.android.tools.r8.graph.M2 m233 = w10.f58283b;
        com.android.tools.r8.graph.M2 m234 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a42 = b10.a(m233, b10.a(m234, m234, b10.f37884J1), b10.b("getVolatile"));
        com.android.tools.r8.graph.M2 m235 = w10.f58283b;
        com.android.tools.r8.graph.M2 m236 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a43 = b10.a(m235, b10.a(m236, m236, b10.f37884J1, b10.c(b10.b("Ljava/lang/Class;"))), b10.b("getVolatile"));
        com.android.tools.r8.graph.A2 a44 = b10.a(w10.f58283b, b10.a(b10.f37884J1, b10.c(b10.b("[I")), b10.f37884J1), b10.b("getVolatile"));
        com.android.tools.r8.graph.A2 a45 = b10.a(w10.f58283b, b10.a(b10.f37891K1, b10.c(b10.b("[J")), b10.f37884J1), b10.b("getVolatile"));
        com.android.tools.r8.graph.M2 m237 = w10.f58283b;
        com.android.tools.r8.graph.M2 m238 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a46 = b10.a(m237, b10.a(m238, m238, b10.c(b10.b("Ljava/lang/Class;"))), b10.b("getVolatile"));
        com.android.tools.r8.graph.A2 a47 = b10.a(w10.f58283b, b10.a(b10.f37884J1, b10.f38068i2), b10.b("getVolatile"));
        com.android.tools.r8.graph.A2 a48 = b10.a(w10.f58283b, b10.a(b10.f37891K1, b10.f38068i2), b10.b("getVolatile"));
        com.android.tools.r8.graph.M2 m239 = w10.f58283b;
        com.android.tools.r8.graph.M2 m240 = b10.f37905M1;
        com.android.tools.r8.graph.M2 m241 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a49 = b10.a(m239, b10.a(m240, m241, m241), b10.b("set"));
        com.android.tools.r8.graph.M2 m242 = w10.f58283b;
        com.android.tools.r8.graph.M2 m243 = b10.f37905M1;
        com.android.tools.r8.graph.M2 m244 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a50 = b10.a(m242, b10.a(m243, m244, b10.f37884J1, m244), b10.b("set"));
        com.android.tools.r8.graph.M2 m245 = w10.f58283b;
        com.android.tools.r8.graph.M2 m246 = b10.f37905M1;
        com.android.tools.r8.graph.M2 c12 = b10.c(b10.b("[I"));
        com.android.tools.r8.graph.M2 m247 = b10.f37884J1;
        com.android.tools.r8.graph.A2 a51 = b10.a(m245, b10.a(m246, c12, m247, m247), b10.b("set"));
        com.android.tools.r8.graph.A2 a52 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.c(b10.b("[J")), b10.f37884J1, b10.f37891K1), b10.b("set"));
        com.android.tools.r8.graph.A2 a53 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.f38068i2, b10.f37884J1), b10.b("set"));
        com.android.tools.r8.graph.A2 a54 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.f38068i2, b10.f37891K1), b10.b("set"));
        com.android.tools.r8.graph.M2 m248 = w10.f58283b;
        com.android.tools.r8.graph.M2 m249 = b10.f37905M1;
        com.android.tools.r8.graph.M2 m250 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a55 = b10.a(m248, b10.a(m249, m250, m250), b10.b("setRelease"));
        com.android.tools.r8.graph.M2 m251 = w10.f58283b;
        com.android.tools.r8.graph.M2 m252 = b10.f37905M1;
        com.android.tools.r8.graph.M2 m253 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a56 = b10.a(m251, b10.a(m252, m253, b10.f37884J1, m253), b10.b("setRelease"));
        com.android.tools.r8.graph.M2 m254 = w10.f58283b;
        com.android.tools.r8.graph.M2 m255 = b10.f37905M1;
        com.android.tools.r8.graph.M2 c13 = b10.c(b10.b("[I"));
        com.android.tools.r8.graph.M2 m256 = b10.f37884J1;
        com.android.tools.r8.graph.A2 a57 = b10.a(m254, b10.a(m255, c13, m256, m256), b10.b("setRelease"));
        com.android.tools.r8.graph.A2 a58 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.c(b10.b("[J")), b10.f37884J1, b10.f37891K1), b10.b("setRelease"));
        com.android.tools.r8.graph.A2 a59 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.f38068i2, b10.f37884J1), b10.b("setRelease"));
        com.android.tools.r8.graph.A2 a60 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.f38068i2, b10.f37891K1), b10.b("setRelease"));
        com.android.tools.r8.graph.M2 m257 = w10.f58283b;
        com.android.tools.r8.graph.M2 m258 = b10.f37905M1;
        com.android.tools.r8.graph.M2 m259 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a61 = b10.a(m257, b10.a(m258, m259, m259), b10.b("setVolatile"));
        com.android.tools.r8.graph.M2 m260 = w10.f58283b;
        com.android.tools.r8.graph.M2 m261 = b10.f37905M1;
        com.android.tools.r8.graph.M2 m262 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a62 = b10.a(m260, b10.a(m261, m262, b10.f37884J1, m262), b10.b("setVolatile"));
        com.android.tools.r8.graph.M2 m263 = w10.f58283b;
        com.android.tools.r8.graph.M2 m264 = b10.f37905M1;
        com.android.tools.r8.graph.M2 c14 = b10.c(b10.b("[I"));
        com.android.tools.r8.graph.M2 m265 = b10.f37884J1;
        com.android.tools.r8.graph.A2 a63 = b10.a(m263, b10.a(m264, c14, m265, m265), b10.b("setVolatile"));
        com.android.tools.r8.graph.A2 a64 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.c(b10.b("[J")), b10.f37884J1, b10.f37891K1), b10.b("setVolatile"));
        com.android.tools.r8.graph.A2 a65 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.f38068i2, b10.f37884J1), b10.b("setVolatile"));
        com.android.tools.r8.graph.A2 a66 = b10.a(w10.f58283b, b10.a(b10.f37905M1, b10.f38068i2, b10.f37891K1), b10.b("setVolatile"));
        com.android.tools.r8.graph.A2 a67 = b10.a(w10.f58283b, b10.a(b10.f37884J1, b10.f38068i2, b10.f37849E1), b10.b("toIntIfPossible"));
        com.android.tools.r8.graph.A2 a68 = b10.a(w10.f58283b, b10.a(b10.f37891K1, b10.f38068i2, b10.f37849E1), b10.b("toLongIfPossible"));
        com.android.tools.r8.graph.M2 m266 = w10.f58283b;
        com.android.tools.r8.graph.M2 m267 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m268 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a69 = b10.a(m266, b10.a(m267, m268, m268, m268), b10.b("weakCompareAndSet"));
        com.android.tools.r8.graph.M2 m269 = w10.f58283b;
        com.android.tools.r8.graph.M2 m270 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m271 = b10.f38068i2;
        com.android.tools.r8.graph.A2 a70 = b10.a(m269, b10.a(m270, m271, b10.f37884J1, m271, m271), b10.b("weakCompareAndSet"));
        com.android.tools.r8.graph.M2 m272 = w10.f58283b;
        com.android.tools.r8.graph.M2 m273 = b10.f37849E1;
        com.android.tools.r8.graph.M2 c15 = b10.c(b10.b("[I"));
        com.android.tools.r8.graph.M2 m274 = b10.f37884J1;
        com.android.tools.r8.graph.A2 a71 = b10.a(m272, b10.a(m273, c15, m274, m274, m274), b10.b("weakCompareAndSet"));
        com.android.tools.r8.graph.M2 m275 = w10.f58283b;
        com.android.tools.r8.graph.M2 m276 = b10.f37849E1;
        com.android.tools.r8.graph.M2 c16 = b10.c(b10.b("[J"));
        com.android.tools.r8.graph.M2 m277 = b10.f37884J1;
        com.android.tools.r8.graph.M2 m278 = b10.f37891K1;
        com.android.tools.r8.graph.A2 a72 = b10.a(m275, b10.a(m276, c16, m277, m278, m278), b10.b("weakCompareAndSet"));
        com.android.tools.r8.graph.M2 m279 = w10.f58283b;
        com.android.tools.r8.graph.M2 m280 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m281 = b10.f38068i2;
        com.android.tools.r8.graph.M2 m282 = b10.f37884J1;
        com.android.tools.r8.graph.A2 a73 = b10.a(m279, b10.a(m280, m281, m282, m282), b10.b("weakCompareAndSet"));
        com.android.tools.r8.graph.M2 m283 = w10.f58283b;
        com.android.tools.r8.graph.M2 m284 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m285 = b10.f38068i2;
        com.android.tools.r8.graph.M2 m286 = b10.f37891K1;
        com.android.tools.r8.graph.A2 a74 = b10.a(m283, b10.a(m284, m285, m286, m286), b10.b("weakCompareAndSet"));
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        w10.a((AbstractCollection) AbstractC7552hC.a(AbstractC8294li.a(a20, true).a(com.android.tools.r8.graph.L4.b(4097, true)).a(VarHandleDesugaringMethods.h(b10, a20)).b().a(), AbstractC8294li.a(a21, true).a(com.android.tools.r8.graph.L4.b(4097, true)).a(VarHandleDesugaringMethods.i(b10, a21)).b().a()));
        C4516j1.a a75 = AbstractC8294li.a(a22, true).a(com.android.tools.r8.graph.L4.b(4097, false));
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        com.android.tools.r8.graph.M2 m287 = a22.f38297f;
        A9 a92 = new A9(b10.b("requires native VarHandle support available from Android 13. VarHandle desugaring only supports single dimensional arrays of primitive typesint and long and reference types."));
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        AbstractC7552hC a76 = AbstractC7552hC.a(c8103ka, a92, new C6440ab(enumC5477Kw0), c8103ka2);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        C4516j1 a77 = a75.a(new com.android.tools.r8.graph.G(m287, 1, 1, a76, c6190Xe0, c6190Xe0)).b().a();
        C4516j1.a a78 = AbstractC8294li.a(a23, true).a(com.android.tools.r8.graph.L4.b(4097, false));
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        C8103ka c8103ka5 = new C8103ka();
        C8103ka c8103ka6 = new C8103ka();
        C8103ka c8103ka7 = new C8103ka();
        C8103ka c8103ka8 = new C8103ka();
        C8103ka c8103ka9 = new C8103ka();
        C8103ka c8103ka10 = new C8103ka();
        com.android.tools.r8.graph.M2 m288 = a23.f38297f;
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 2);
        C9544t9 c9544t9 = new C9544t9(b10.d("Ljava/lang/Long;"), false);
        NB nb2 = NB.f42532g;
        Q9 q92 = new Q9(nb2, enumC5477Kw0, c8103ka5);
        EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41825c;
        C8938pa c8938pa2 = new C8938pa(enumC5477Kw02, 1);
        T10 t10 = T10.f44369e;
        C4904Ba c4904Ba = new C4904Ba(t10, T10.f44370f);
        C7437ga c7437ga = new C7437ga(184, b10.a(b10.d("Ljava/lang/Long;"), b10.a(b10.d("Ljava/lang/Long;"), b10.f37891K1), b10.b("valueOf")), false);
        C6440ab c6440ab = new C6440ab(enumC5477Kw0);
        DD b11 = InterfaceC8008jy.b(b10.d("Ljava/lang/invoke/VarHandle;"));
        NH nh2 = NH.f42550c;
        w10.b(AbstractC7552hC.a(a77, a78.a(new com.android.tools.r8.graph.G(m288, 2, 3, AbstractC7552hC.a(c8103ka3, c8938pa, c9544t9, q92, c8103ka4, c8938pa2, c4904Ba, c7437ga, c6440ab, c8103ka5, new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{b11, nh2, InterfaceC8008jy.b(b10.f38180w2)})), new C8938pa(enumC5477Kw0, 2), new C9544t9(b10.d("Ljava/lang/Float;"), false), new Q9(nb2, enumC5477Kw0, c8103ka7), c8103ka6, new C8938pa(enumC5477Kw02, 1), new C4904Ba(t10, T10.f44371g), new C7437ga(184, b10.a(b10.d("Ljava/lang/Float;"), b10.a(b10.d("Ljava/lang/Float;"), b10.f37877I1), b10.b("valueOf")), false), new C6440ab(enumC5477Kw0), c8103ka7, new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{InterfaceC8008jy.b(b10.d("Ljava/lang/invoke/VarHandle;")), nh2, InterfaceC8008jy.b(b10.f38180w2)})), new C8938pa(enumC5477Kw0, 2), new C9544t9(b10.d("Ljava/lang/Double;"), false), new Q9(nb2, enumC5477Kw0, c8103ka9), c8103ka8, new C8938pa(enumC5477Kw02, 1), new C4904Ba(t10, T10.f44372h), new C7437ga(184, b10.a(b10.d("Ljava/lang/Double;"), b10.a(b10.d("Ljava/lang/Double;"), b10.f37870H1), b10.b("valueOf")), false), new C6440ab(enumC5477Kw0), c8103ka9, new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{InterfaceC8008jy.b(b10.d("Ljava/lang/invoke/VarHandle;")), nh2, InterfaceC8008jy.b(b10.f38180w2)})), new C8938pa(enumC5477Kw0, 0), new C7437ga(182, b10.a(b10.d("Ljava/lang/invoke/VarHandle;"), b10.a(b10.d("Ljava/lang/RuntimeException;"), new com.android.tools.r8.graph.M2[0]), b10.b("desugarWrongMethodTypeException")), false), new C4965Cb(), c8103ka10), c6190Xe0, c6190Xe0)).b().a(), AbstractC8294li.a(a24, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.a(b10, a24)).b().a(), AbstractC8294li.a(a25, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.b(b10, a25)).b().a(), AbstractC8294li.a(a26, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.c(b10, a26)).b().a(), AbstractC8294li.a(a27, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.d(b10, a27)).b().a(), AbstractC8294li.a(a28, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.e(b10, a28)).b().a(), AbstractC8294li.a(a29, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.f(b10, a29)).b().a(), AbstractC8294li.a(a30, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.g(b10, a30)).b().a(), AbstractC8294li.a(a31, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(new com.android.tools.r8.graph.G(a31.f38297f, 3, 1, AbstractC7552hC.a(new C8103ka(), new C10106wa(b10.d("Ljava/lang/RuntimeException;")), new C8106kb(C8106kb.a.Dup), new A9(b10.b("java.lang.invoke.WrongMethodTypeException")), new C7437ga(183, b10.a(b10.d("Ljava/lang/RuntimeException;"), b10.a(b10.f37905M1, b10.f38052g2), b10.b(ConstantDescs.INIT_NAME)), false), new C6440ab(enumC5477Kw0), new C8103ka()), c6190Xe0, c6190Xe0)).b().a(), AbstractC8294li.a(a32, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.j(b10, a32)).b().a(), AbstractC8294li.a(a33, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.k(b10, a33)).b().a(), C4516j1.w1().a(a34).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.l(b10, a34)).b().a(), C4516j1.w1().a(a35).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.m(b10, a35)).b().a(), C4516j1.w1().a(a36).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.n(b10, a36)).b().a(), C4516j1.w1().a(a37).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.o(b10, a37)).b().a(), C4516j1.w1().a(a38).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.p(b10, a38)).b().a(), C4516j1.w1().a(a39).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.q(b10, a39)).b().a(), C4516j1.w1().a(a40).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.r(b10, a40)).b().a(), C4516j1.w1().a(a41).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.s(b10, a41)).b().a(), C4516j1.w1().a(a42).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.t(b10, a42)).b().a(), C4516j1.w1().a(a43).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.u(b10, a43)).b().a(), C4516j1.w1().a(a44).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.v(b10, a44)).b().a(), C4516j1.w1().a(a45).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.w(b10, a45)).b().a(), C4516j1.w1().a(a46).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.x(b10, a46)).b().a(), C4516j1.w1().a(a47).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.y(b10, a47)).b().a(), C4516j1.w1().a(a48).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.z(b10, a48)).b().a(), C4516j1.w1().a(a49).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.A(b10, a49)).b().a(), C4516j1.w1().a(a50).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.B(b10, a50)).b().a(), C4516j1.w1().a(a51).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.C(b10, a51)).b().a(), C4516j1.w1().a(a52).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.D(b10, a52)).b().a(), C4516j1.w1().a(a53).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.E(b10, a53)).b().a(), C4516j1.w1().a(a54).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.F(b10, a54)).b().a(), C4516j1.w1().a(a55).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.G(b10, a55)).b().a(), C4516j1.w1().a(a56).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.H(b10, a56)).b().a(), C4516j1.w1().a(a57).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.I(b10, a57)).b().a(), C4516j1.w1().a(a58).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.J(b10, a58)).b().a(), C4516j1.w1().a(a59).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.K(b10, a59)).b().a(), C4516j1.w1().a(a60).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.L(b10, a60)).b().a(), C4516j1.w1().a(a61).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.M(b10, a61)).b().a(), C4516j1.w1().a(a62).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.N(b10, a62)).b().a(), C4516j1.w1().a(a63).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.O(b10, a63)).b().a(), C4516j1.w1().a(a64).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.P(b10, a64)).b().a(), C4516j1.w1().a(a65).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.Q(b10, a65)).b().a(), C4516j1.w1().a(a66).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.R(b10, a66)).b().a(), C4516j1.w1().a(a67).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.S(b10, a67)).b().a(), C4516j1.w1().a(a68).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.T(b10, a68)).b().a(), C4516j1.w1().a(a69).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.U(b10, a69)).b().a(), C4516j1.w1().a(a70).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.V(b10, a70)).b().a(), C4516j1.w1().a(a71).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.W(b10, a71)).b().a(), C4516j1.w1().a(a72).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.X(b10, a72)).b().a(), C4516j1.w1().a(a73).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.Y(b10, a73)).b().a(), C4516j1.w1().a(a74).a(com.android.tools.r8.graph.L4.b(4097, false)).a(VarHandleDesugaringMethods.Z(b10, a74)).b().a()));
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        if (h52.p() == this.f43413c.f37913N2) {
            return;
        }
        int i10 = 0;
        for (W9 w92 : h52.d().Q0().V().E0()) {
            if (!f43411d) {
                w92.getClass();
                if (w92 instanceof S9) {
                    throw new AssertionError();
                }
            }
            if (w92.L()) {
                C7437ga j10 = w92.j();
                if (!P6.b(i10, 2)) {
                    if (b(this.f43413c, j10.V())) {
                        if (h52.p() != this.f43413c.f37913N2) {
                            b(this.f43412b, abstractC7103ea, new C5920Sm0(h52));
                        }
                        i10 |= 2;
                    }
                }
                if (!P6.b(i10, 1)) {
                    if (a(this.f43413c, j10.V())) {
                        C4798y c4798y = this.f43412b;
                        int i11 = AbstractC7552hC.f48487c;
                        a(c4798y, abstractC7103ea, new C5920Sm0(h52));
                        i10 |= 1;
                    }
                }
            }
        }
    }

    public static boolean a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        if (m22 != c4724u1.f38088k6) {
            return m22 == c4724u1.f37934Q2;
        }
        if (f43411d) {
            return true;
        }
        throw new AssertionError();
    }

    public static boolean a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        if (a(c4724u1, a22.f38297f)) {
            return true;
        }
        com.android.tools.r8.graph.I2 i22 = a22.f36127i;
        if (a(c4724u1, i22.f36440e)) {
            return true;
        }
        for (com.android.tools.r8.graph.M2 m22 : i22.f36441f.f36675b) {
            if (a(c4724u1, m22)) {
                return true;
            }
        }
        return false;
    }

    public static void a(final C4798y c4798y, InterfaceC5882Rw0 interfaceC5882Rw0, Collection collection) {
        if (!f43411d && !collection.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5766Pw0.a(C4798y.this, (com.android.tools.r8.graph.D5) obj);
            }
        })) {
            throw new AssertionError();
        }
        com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
        Supplier supplier = new Supplier() {
            @Override
            public final Object get() {
                return C5766Pw0.c();
            }
        };
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58176c;
                return bVar;
            }
        };
        com.android.tools.r8.graph.M2 m22 = c4798y.b().f37958T5;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5766Pw0.a(C4798y.this, (com.android.tools.r8.synthesis.W) obj);
            }
        };
        Objects.requireNonNull(interfaceC5882Rw0);
        C7088eS0 c7088eS0 = new C7088eS0(interfaceC5882Rw0);
        g10.getClass();
        com.android.tools.r8.graph.H2 a10 = g10.a(supplier, i10, m22, collection, c4798y, consumer, c7088eS0, C6628bi.b());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            interfaceC5882Rw0.a(a10, (com.android.tools.r8.graph.D5) it.next());
        }
    }

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.D5 d52) {
        return d52.S() != c4798y.b().f37958T5;
    }

    public static void a(C4798y c4798y, com.android.tools.r8.synthesis.W w10) {
        C4724u1 b10 = c4798y.b();
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        w10.f58295n.clear();
        w10.f58295n.addAll(c6190Xe0);
        com.android.tools.r8.graph.A2 a10 = b10.a(w10.f58283b, b10.a(b10.f37905M1, new com.android.tools.r8.graph.M2[0]), b10.b(ConstantDescs.INIT_NAME));
        com.android.tools.r8.graph.A2 a11 = b10.a(w10.f58283b, b10.a(b10.c(b10.b("Ljava/lang/invoke/VarHandle;")), b10.c(b10.b("Ljava/lang/Class;")), b10.c(b10.b("Ljava/lang/String;")), b10.c(b10.b("Ljava/lang/Class;"))), b10.b("findVarHandle"));
        com.android.tools.r8.graph.A2 a12 = b10.a(w10.f58283b, b10.a(b10.c(b10.b("Ljava/lang/invoke/MethodHandles$Lookup;")), b10.c(b10.b("Ljava/lang/Class;"))), b10.b("toPrivateLookupIn"));
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a13 = AbstractC8294li.a(a10, true).a(com.android.tools.r8.graph.L4.b(4097, true));
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a10.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        w10.a((AbstractCollection) new C5920Sm0(a13.a(new com.android.tools.r8.graph.G(m22, 1, 1, AbstractC7552hC.a(c8103ka, new C8938pa(enumC5477Kw0, 0), new C7437ga(183, b10.a(b10.f38068i2, b10.a(b10.f37905M1, new com.android.tools.r8.graph.M2[0]), b10.b(ConstantDescs.INIT_NAME)), false), new C6607bb(), c8103ka2), c6190Xe0, c6190Xe0)).b().a()));
        C4516j1.a a14 = new C4516j1.a(true).a(a11).a(com.android.tools.r8.graph.L4.b(4097, false));
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        com.android.tools.r8.graph.M2 m23 = a11.f38297f;
        C10106wa c10106wa = new C10106wa(b10.d("Ljava/lang/invoke/VarHandle;"));
        C8106kb c8106kb = new C8106kb(C8106kb.a.Dup);
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 1);
        C8938pa c8938pa2 = new C8938pa(enumC5477Kw0, 2);
        C8938pa c8938pa3 = new C8938pa(enumC5477Kw0, 3);
        com.android.tools.r8.graph.M2 d10 = b10.d("Ljava/lang/invoke/VarHandle;");
        com.android.tools.r8.graph.M2 m24 = b10.f37905M1;
        com.android.tools.r8.graph.M2 m25 = b10.f38180w2;
        Object[] a15 = AbstractC9694u30.a(9, new Object[]{c8103ka3, c10106wa, c8106kb, c8938pa, c8938pa2, c8938pa3, new C7437ga(183, b10.a(d10, b10.a(m24, m25, b10.f38052g2, m25), b10.b(ConstantDescs.INIT_NAME)), false), new C6440ab(enumC5477Kw0), c8103ka4});
        w10.b(AbstractC7552hC.a(a14.a(new com.android.tools.r8.graph.G(m23, 5, 4, AbstractC7552hC.b(a15.length, a15), c6190Xe0, c6190Xe0)).b().a(), AbstractC8294li.a(a12, true).a(com.android.tools.r8.graph.L4.b(4097, false)).a(new com.android.tools.r8.graph.G(a12.f38297f, 1, 2, AbstractC7552hC.a(new C8103ka(), new C8938pa(enumC5477Kw0, 0), new C6440ab(enumC5477Kw0), new C8103ka()), c6190Xe0, c6190Xe0)).b().a()));
    }

    public static void a(Collection collection, InterfaceC5882Rw0 interfaceC5882Rw0, com.android.tools.r8.graph.H2 h22) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            interfaceC5882Rw0.a(h22, (com.android.tools.r8.graph.D5) it.next());
        }
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (!w92.L()) {
            return C6473am.f46625a;
        }
        C7437ga j10 = w92.j();
        com.android.tools.r8.graph.M2 s02 = j10.V().s0();
        C4724u1 c4724u1 = this.f43413c;
        if (s02 != c4724u1.f37927P2 && s02 != c4724u1.f37934Q2 && s02 != c4724u1.f37913N2) {
            return C6473am.f46625a;
        }
        com.android.tools.r8.graph.A2 V10 = j10.V();
        if (V10.s0() == this.f43413c.f37927P2) {
            if (V10.t0().equals(this.f43413c.f37833C1) && V10.z0() == this.f43413c.f37958T5 && V10.w0() == 0 && j10.O()) {
                return b(this.f43413c);
            }
            if (V10.t0().equals(this.f43413c.f37841D1) && V10.z0() == this.f43413c.f37958T5 && V10.w0() == 2 && V10.k(0) == this.f43413c.f38180w2 && V10.k(1) == this.f43413c.f37958T5 && j10.O()) {
                return c(this.f43413c);
            }
            if (V10.t0().equals(this.f43413c.b("arrayElementVarHandle")) && V10.z0() == this.f43413c.f37913N2 && V10.w0() == 1 && V10.k(0) == this.f43413c.f38180w2 && j10.O()) {
                return a(this.f43413c);
            }
            return C6473am.f46625a;
        }
        if (V10.s0() == this.f43413c.f37913N2) {
            if (!j10.P()) {
                if (f43411d || j10.N()) {
                    return C6473am.f46625a;
                }
                throw new AssertionError();
            }
            boolean z10 = f43411d;
            if (!z10 && !j10.P()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.L2 t02 = V10.t0();
            int m02 = V10.y0().m0();
            if (t02.equals(this.f43413c.f38187x1) || t02.equals(this.f43413c.f38195y1)) {
                if (!z10 && m02 != 3 && m02 != 4) {
                    throw new AssertionError();
                }
                return a(j10, m02 - 2);
            }
            if (t02.equals(this.f43413c.f38171v1) || t02.equals(this.f43413c.f38203z1)) {
                if (!z10 && m02 != 1 && m02 != 2) {
                    throw new AssertionError();
                }
                return a(j10, m02);
            }
            if (!t02.equals(this.f43413c.f38179w1) && !t02.equals(this.f43413c.f37817A1) && !t02.equals(this.f43413c.f37825B1)) {
                return C6473am.f46625a;
            }
            if (!z10 && m02 != 2 && m02 != 3) {
                throw new AssertionError();
            }
            return a(j10, m02 - 1);
        }
        return C6473am.f46625a;
    }

    public static C6204Xl a(final C4724u1 c4724u1) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u12) {
                return C5766Pw0.a(C4724u1.this, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u12);
            }
        }));
    }

    public static Collection a(C4724u1 c4724u1, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u12) {
        qt.a(2);
        return AbstractC7552hC.a(new C10106wa(c4724u1.f37913N2), new C8106kb(C8106kb.a.DupX1), new C8106kb(C8106kb.a.Swap), new C7437ga(183, c4724u1.a(c4724u1.f37913N2, c4724u1.a(c4724u1.f37905M1, c4724u1.f38180w2), c4724u1.f38067i1), false));
    }

    public final C6204Xl a(final C7437ga c7437ga, final int i10) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C5766Pw0.this.a(c7437ga, i10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    @Override
    public final void a(C4861Af c4861Af, final AbstractC8710o9 abstractC8710o9) {
        C4818z0 c4818z0 = this.f43412b.f().a().f38368f;
        a(c4818z0, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4818z0) obj).c();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4818z0) obj).a();
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5766Pw0.this.a(abstractC8710o9, (List) obj);
            }
        });
        a(c4818z0, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4818z0) obj).d();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4818z0) obj).b();
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5766Pw0.this.b(abstractC8710o9, (List) obj);
            }
        });
    }

    public final void a(AbstractC8710o9 abstractC8710o9, List list) {
        a(this.f43412b, abstractC8710o9, list);
    }

    public final void a(C4818z0 c4818z0, Predicate predicate, Function function, Consumer consumer) {
        if (predicate.test(c4818z0)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((Set) function.apply(c4818z0)).iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.E0 a10 = this.f43412b.a((com.android.tools.r8.graph.M2) it.next());
                boolean z10 = f43411d;
                if (!z10 && a10 == null) {
                    throw new AssertionError();
                }
                if (!z10 && !a10.e0()) {
                    throw new AssertionError();
                }
                arrayList.add(a10.d0());
            }
            consumer.accept(arrayList);
        }
    }

    public final C6204Xl b(final C4724u1 c4724u1) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u12) {
                return C5766Pw0.this.b(c4724u1, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u12);
            }
        }));
    }

    @Override
    public final String b() {
        return "$varhandle";
    }

    public final void b(AbstractC8710o9 abstractC8710o9, List list) {
        b(this.f43412b, abstractC8710o9, list);
    }
}
