package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.graph.R2;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

public class RR {

    public static final boolean f43896f = true;

    public final InterfaceC4403d1 f43897a;

    public final AbstractC5308Hz f43898b;

    public final AbstractC5308Hz f43899c;

    public final ConcurrentHashMap f43900d;

    public final ConcurrentHashMap f43901e;

    public RR(C4798y<?> c4798y) {
        this(c4798y, c4798y.v(), c4798y.f38414g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.android.tools.r8.graph.D0 a(final com.android.tools.r8.graph.D0 d02, final com.android.tools.r8.graph.H5 h52) {
        ConcurrentHashMap concurrentHashMap = this.f43901e;
        if (concurrentHashMap == null) {
            return b(d02, h52);
        }
        return (com.android.tools.r8.graph.D0) concurrentHashMap.computeIfAbsent(d02, new Function() {
            @Override
            public final Object apply(Object obj) {
                return RR.this.a(d02, h52, (com.android.tools.r8.graph.D0) obj);
            }
        });
    }

    public final com.android.tools.r8.graph.D0 b(com.android.tools.r8.graph.D0 d02, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.L2 t02;
        C4724u1 b10 = this.f43897a.b();
        com.android.tools.r8.graph.I2 a10 = a(d02.f36213f);
        com.android.tools.r8.graph.C2 a11 = a(d02.f36214g, 2, h52.getReference());
        com.android.tools.r8.graph.A2 m02 = d02.f36214g.m0();
        boolean z10 = m02 == b10.f38168u6 || m02 == b10.f38176v6;
        List a12 = a(d02.f36215h, z10 ? 1 : 2, h52);
        if (z10) {
            boolean z11 = f43896f;
            if (!z11 && d02.f36215h.size() <= 0) {
                throw new AssertionError();
            }
            if (!z11) {
                com.android.tools.r8.graph.R2 r22 = (com.android.tools.r8.graph.R2) d02.f36215h.get(0);
                r22.getClass();
                if (!(r22 instanceof com.android.tools.r8.graph.Y2)) {
                    throw new AssertionError();
                }
            }
            t02 = ((com.android.tools.r8.graph.A2) this.f43898b.a(this.f43897a.b().a(d02.f36213f.f36440e, (com.android.tools.r8.graph.I2) ((com.android.tools.r8.graph.R2) d02.f36215h.get(0)).A0().f36759d, d02.f36212e), h52.getReference(), EnumC8071kK.f49581e, this.f43899c, AbstractC9530t40.f52519c).f41111a).t0();
        } else {
            t02 = d02.f36212e;
        }
        return (a10.equals(d02.f36213f) && t02 == d02.f36212e && a11 == d02.f36214g && a12.equals(d02.f36215h)) ? d02 : new com.android.tools.r8.graph.D0(t02, a10, a11, a12);
    }

    public RR(C4798y c4798y, int i10) {
        this.f43900d = new ConcurrentHashMap();
        this.f43897a = c4798y;
        this.f43898b = c4798y.v();
        this.f43899c = c4798y.f38414g;
        this.f43901e = new ConcurrentHashMap();
    }

    public final com.android.tools.r8.graph.D0 a(com.android.tools.r8.graph.D0 d02, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D0 d03) {
        return b(d02, h52);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11, types: [com.android.tools.r8.graph.R2$l] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.android.tools.r8.graph.X2] */
    public final List a(List list, int i10, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.Y2 y22;
        com.android.tools.r8.graph.M2 m22;
        com.android.tools.r8.graph.M2 c10;
        ArrayList arrayList = null;
        boolean z10 = false;
        for (int i11 = 0; i11 < list.size(); i11++) {
            com.android.tools.r8.graph.R2 r22 = (com.android.tools.r8.graph.R2) list.get(i11);
            int ordinal = r22.G0().ordinal();
            if (ordinal == 7) {
                com.android.tools.r8.graph.Y2 A02 = r22.A0();
                com.android.tools.r8.graph.I2 i22 = (com.android.tools.r8.graph.I2) A02.f36759d;
                com.android.tools.r8.graph.I2 a10 = a(i22);
                y22 = A02;
                if (a10 != i22) {
                    y22 = new com.android.tools.r8.graph.Y2(a10);
                }
            } else if (ordinal != 8) {
                y22 = (ordinal == 10 && (c10 = this.f43898b.c(this.f43899c, (m22 = (com.android.tools.r8.graph.M2) r22.E0().f36759d))) != m22) ? new R2.l(c10) : r22;
            } else {
                com.android.tools.r8.graph.X2 z02 = r22.z0();
                com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) z02.f36759d;
                com.android.tools.r8.graph.C2 a11 = a(c22, i10, h52.getReference());
                y22 = z02;
                if (a11 != c22) {
                    y22 = new com.android.tools.r8.graph.X2(a11);
                }
            }
            if (y22 != r22) {
                if (arrayList == null) {
                    arrayList = new ArrayList(list.subList(0, i11));
                }
                arrayList.add(y22);
                z10 = true;
            } else if (arrayList != null) {
                arrayList.add(y22);
            }
        }
        return z10 ? arrayList : list;
    }

    public RR(InterfaceC4403d1 interfaceC4403d1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        this.f43900d = new ConcurrentHashMap();
        this.f43897a = interfaceC4403d1;
        this.f43898b = abstractC5308Hz;
        this.f43899c = abstractC5308Hz2;
        this.f43901e = null;
    }

    public final com.android.tools.r8.graph.I2 a(com.android.tools.r8.graph.I2 i22) {
        return this.f43897a.b().a(i22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return RR.this.a((com.android.tools.r8.graph.M2) obj);
            }
        }, this.f43900d);
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        return this.f43898b.c(this.f43899c, m22);
    }

    public final com.android.tools.r8.graph.C2 a(com.android.tools.r8.graph.C2 c22, int i10, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.A2 a23;
        com.android.tools.r8.graph.B2 b22;
        if (c22.f36190e.d()) {
            com.android.tools.r8.graph.A2 m02 = c22.m0();
            com.android.tools.r8.graph.B2 b23 = c22.f36190e;
            NW a10 = this.f43898b.a(m02, a22, b23.e(), this.f43899c, AbstractC9530t40.f52519c);
            com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) a10.f41111a;
            if (i10 == 1) {
                b22 = a10.f42623d.a(a24);
                a23 = a24;
            } else {
                boolean z10 = f43896f;
                if (!z10 && i10 != 2) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.A2 a11 = this.f43897a.b().a(this.f43898b.c(this.f43899c, m02.f38297f), a24.f36127i, a24.f38298g);
                if (!b23.b()) {
                    a23 = a11;
                    b22 = b23;
                } else {
                    if (!z10 && a24.f38297f != a11.f38297f) {
                        throw new AssertionError();
                    }
                    com.android.tools.r8.graph.B2 a12 = a10.f42623d.a(a11);
                    if (!z10 && a12 != com.android.tools.r8.graph.B2.f36154j && a12 != com.android.tools.r8.graph.B2.f36152h) {
                        throw new AssertionError();
                    }
                    a23 = a11;
                    b22 = a12;
                }
            }
            if (b22 == b23 && a23 == m02 && a24 == a23) {
                return c22;
            }
            com.android.tools.r8.graph.E0 g10 = this.f43897a.g(a23.f38297f);
            return this.f43897a.b().a(b22, a23, g10 != null ? g10.isInterface() : c22.f36192g, a24 != a23 ? a24 : null);
        }
        C4554l1 l02 = c22.l0();
        C4554l1 e10 = this.f43898b.e(this.f43899c, l02);
        return e10 != l02 ? this.f43897a.b().a(c22.f36190e, e10, c22.f36192g, (com.android.tools.r8.graph.A2) null) : c22;
    }
}
