package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4650q2;
import com.android.tools.r8.graph.C4668r2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.R2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntConsumer;

public final class C6099Vp0 implements X9 {

    public final C4724u1 f45186b;

    public final C4650q2 f45187c;

    public final IdentityHashMap f45188d;

    public C6099Vp0(C4798y c4798y) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f45188d = identityHashMap;
        C4724u1 b10 = c4798y.b();
        this.f45186b = b10;
        C4650q2 c4650q2 = b10.f38174v4;
        this.f45187c = c4650q2;
        identityHashMap.put(b10.f37849E1, c4650q2.f37649a);
        identityHashMap.put(b10.f37863G1, c4650q2.f37650b);
        identityHashMap.put(b10.f37856F1, c4650q2.f37655g);
        identityHashMap.put(b10.f37898L1, c4650q2.f37655g);
        identityHashMap.put(b10.f37884J1, c4650q2.f37655g);
        identityHashMap.put(b10.f37891K1, c4650q2.f37658j);
        identityHashMap.put(b10.f37877I1, c4650q2.f37657i);
        identityHashMap.put(b10.f37870H1, c4650q2.f37656h);
        identityHashMap.put(b10.f38052g2, c4650q2.f37660l);
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        intConsumer.accept(186);
    }

    public final C6204Xl b(final C7604ha c7604ha) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C6099Vp0.this.b(c7604ha, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        w92.getClass();
        if (w92 instanceof C7604ha) {
            C7604ha k10 = w92.k();
            com.android.tools.r8.graph.D0 V10 = k10.V();
            if (V10.f36214g.f36190e.c()) {
                com.android.tools.r8.graph.A2 m02 = V10.f36214g.m0();
                C4668r2 c4668r2 = this.f45186b.f38136q6;
                if (m02 == c4668r2.f37696a) {
                    return a(k10);
                }
                if (m02 == c4668r2.f37697b) {
                    return b(k10);
                }
            }
        }
        return C6473am.f46625a;
    }

    public final Collection b(C7604ha c7604ha, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return a(c7604ha, interfaceC8175ky, qt, h52);
    }

    public final C6204Xl a(final C7604ha c7604ha) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C6099Vp0.this.a(c7604ha, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Collection a(C7604ha c7604ha, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2[] m2Arr = c7604ha.V().f36213f.f36441f.f36675b;
        C5984Tp0 c5984Tp0 = new C5984Tp0(this);
        for (com.android.tools.r8.graph.M2 m22 : m2Arr) {
            C5868Rp0 c5868Rp0 = new C5868Rp0(interfaceC8175ky.a(EnumC5477Kw0.a(m22).c()), (com.android.tools.r8.graph.A2) this.f45188d.getOrDefault(m22, this.f45187c.f37659k));
            c5984Tp0.f44596a.add(c5868Rp0);
            c5984Tp0.f44599d = c5868Rp0.c().c() + c5984Tp0.f44599d;
            if (c5984Tp0.f44597b == null || c5868Rp0.c().c() > c5984Tp0.f44597b.c().c()) {
                c5984Tp0.f44597b = c5868Rp0;
            }
        }
        return c5984Tp0.a(qt);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Collection a(C7604ha c7604ha, InterfaceC8175ky interfaceC8175ky, QT qt, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.D0 V10 = c7604ha.V();
        com.android.tools.r8.graph.O2 n02 = V10.f36213f.n0();
        List list = V10.f36215h;
        if (!list.isEmpty()) {
            int i10 = 0;
            R2.k D02 = ((com.android.tools.r8.graph.R2) list.get(0)).D0();
            if (D02 != null) {
                String l22 = ((com.android.tools.r8.graph.L2) D02.W0()).toString();
                ArrayList arrayList = new ArrayList();
                char c10 = 1;
                for (int i11 = 1; i11 < list.size(); i11++) {
                    arrayList.add((com.android.tools.r8.graph.R2) list.get(i11));
                }
                C5984Tp0 c5984Tp0 = new C5984Tp0(this);
                StringBuilder sb2 = new StringBuilder();
                int length = l22.length();
                Iterator it = arrayList.iterator();
                Iterator<com.android.tools.r8.graph.M2> it2 = n02.iterator();
                int i12 = 0;
                while (i12 < length) {
                    char charAt = l22.charAt(i12);
                    if (charAt == c10) {
                        if (sb2.length() > 0) {
                            C6042Up0 c6042Up0 = new C6042Up0(this.f45186b.b(sb2.toString()), (com.android.tools.r8.graph.A2) this.f45188d.get(this.f45186b.f38052g2));
                            c5984Tp0.f44596a.add(c6042Up0);
                            if (c5984Tp0.f44598c == null) {
                                c5984Tp0.f44598c = c6042Up0;
                            }
                            sb2.setLength(i10);
                        }
                        if (it2.hasNext()) {
                            com.android.tools.r8.graph.M2 next = it2.next();
                            C5868Rp0 c5868Rp0 = new C5868Rp0(interfaceC8175ky.a(EnumC5477Kw0.a(next).c()), (com.android.tools.r8.graph.A2) this.f45188d.getOrDefault(next, this.f45187c.f37659k));
                            c5984Tp0.f44596a.add(c5868Rp0);
                            c5984Tp0.f44599d = c5868Rp0.c().c() + c5984Tp0.f44599d;
                            if (c5984Tp0.f44597b == null || c5868Rp0.c().c() > c5984Tp0.f44597b.c().c()) {
                                c5984Tp0.f44597b = c5868Rp0;
                            }
                        } else {
                            throw a(h52, "too many argument references in `recipe`");
                        }
                    } else if (charAt == 2) {
                        if (it.hasNext()) {
                            sb2.append(a((com.android.tools.r8.graph.R2) it.next(), h52));
                        } else {
                            throw a(h52, "too many constant references in `recipe`");
                        }
                    } else {
                        sb2.append(charAt);
                    }
                    i12++;
                    i10 = 0;
                    c10 = 1;
                }
                if (!it2.hasNext()) {
                    if (!it.hasNext()) {
                        if (sb2.length() > 0) {
                            C6042Up0 c6042Up02 = new C6042Up0(this.f45186b.b(sb2.toString()), (com.android.tools.r8.graph.A2) this.f45188d.get(this.f45186b.f38052g2));
                            c5984Tp0.f44596a.add(c6042Up02);
                            if (c5984Tp0.f44598c == null) {
                                c5984Tp0.f44598c = c6042Up02;
                            }
                        }
                        return c5984Tp0.a(qt);
                    }
                    throw a(h52, "too few constant references in `recipe`, expected " + arrayList.size() + ", referenced: " + (arrayList.size() - AbstractC10241xK.a(it)));
                }
                throw a(h52, "too few argument references in `recipe`, expected " + n02.size() + ", referenced: " + (n02.size() - AbstractC10241xK.a(it2)));
            }
            throw a(h52, "bootstrap method argument `recipe` must be a string");
        }
        throw a(h52, "bootstrap method misses `recipe` argument");
    }

    public static String a(com.android.tools.r8.graph.R2 r22, com.android.tools.r8.graph.H5 h52) {
        if (r22.R0()) {
            return ((com.android.tools.r8.graph.L2) r22.D0().W0()).toString();
        }
        throw a(h52, "const arg referenced from `recipe` is not supported: " + r22.getClass().getName());
    }

    public static C5325If a(com.android.tools.r8.graph.H5 h52, String str) {
        return new C5325If("String concatenation desugaring error (method: " + h52.r() + "): " + str);
    }
}
