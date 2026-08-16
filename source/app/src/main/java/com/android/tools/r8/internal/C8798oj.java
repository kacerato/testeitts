package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.W0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C8798oj {

    public static final boolean f51325b = true;

    public final C6899dH f51326a;

    public C8798oj(C6899dH c6899dH) {
        this.f51326a = c6899dH;
    }

    public static int a(com.android.tools.r8.graph.H5 h52) {
        return Integer.MAX_VALUE;
    }

    public static int b(com.android.tools.r8.graph.H5 h52) {
        return -1;
    }

    public static void c(final com.android.tools.r8.graph.H5 h52) {
        if (!f51325b && 1 >= C9073qK.c(h52.getHolder().c(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8798oj.a(com.android.tools.r8.graph.H5.this, (C4516j1) obj);
            }
        }))) {
            throw new AssertionError();
        }
    }

    public final String toString() {
        return a();
    }

    public static InterfaceC8297lj a(C8570nJ c8570nJ) {
        if (f51325b || !c8570nJ.g()) {
            return new InterfaceC8297lj() {
                @Override
                public final int a(com.android.tools.r8.graph.H5 h52) {
                    return C8798oj.b(h52);
                }
            };
        }
        throw new AssertionError();
    }

    public static InterfaceC8297lj a(List list, final C8570nJ c8570nJ) {
        if (!c8570nJ.g()) {
            return a(c8570nJ);
        }
        if (c8570nJ.h()) {
            return new InterfaceC8297lj() {
                @Override
                public final int a(com.android.tools.r8.graph.H5 h52) {
                    return C8798oj.a(h52);
                }
            };
        }
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final com.android.tools.r8.dex.t0 t0Var = (com.android.tools.r8.dex.t0) it.next();
            c8570nJ.f50599F1.getClass();
            t0Var.f35956b.f35937c.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Map.this.put((com.android.tools.r8.graph.H2) obj, t0Var);
                }
            });
        }
        return new InterfaceC8297lj() {
            @Override
            public final int a(com.android.tools.r8.graph.H5 h52) {
                return C8798oj.a(C8570nJ.this, identityHashMap, h52);
            }
        };
    }

    public static int a(C8570nJ c8570nJ, Map map, com.android.tools.r8.graph.H5 h52) {
        int a10;
        C4516j1 d10 = h52.d();
        if (!((d10.b1() && d10.Q0().v0()) ? M60.a(c8570nJ, d10) : false)) {
            return -1;
        }
        com.android.tools.r8.dex.t0 t0Var = (com.android.tools.r8.dex.t0) map.get(h52.getHolder());
        if (!com.android.tools.r8.dex.t0.f35954k && t0Var.f35961g == null) {
            throw new AssertionError();
        }
        C8798oj c8798oj = t0Var.f35961g;
        if (c8798oj.f51326a.isEmpty()) {
            if (!f51325b) {
                c(h52);
            }
        } else {
            com.android.tools.r8.graph.J0 C10 = h52.d().Q0().C();
            int size = h52.C().size();
            boolean z10 = f51325b;
            if (!z10 && C10.E0() != null && C10.E0().o0() != size) {
                throw new AssertionError();
            }
            C7797ij c7797ij = (C7797ij) c8798oj.f51326a.get(size);
            if (c7797ij != null && c7797ij.f49033b != null) {
                AbstractC5635Np a11 = a(C10.f36463j);
                if (a11 != null) {
                    AG ag2 = (AG) c7797ij.f49033b.b(a11.u());
                    if (!ag2.isEmpty()) {
                        a10 = ag2.a();
                        C8464mj c8464mj = (C8464mj) c7797ij.f49033b.get(a10);
                        if (c8464mj.f50400b) {
                            if (!C7797ij.f49031c && a10 != c8464mj.f50399a) {
                                throw new AssertionError();
                            }
                            if (!f51325b && a10 != -1) {
                                a(h52.d().Q0().C(), a10);
                            }
                            return a10;
                        }
                    }
                }
            } else if (!z10 && c7797ij == null) {
                throw new AssertionError();
            }
        }
        a10 = -1;
        if (!f51325b) {
            a(h52.d().Q0().C(), a10);
        }
        return a10;
    }

    public static void a(final C4798y c4798y, com.android.tools.r8.dex.t0 t0Var) {
        int d10;
        C8570nJ E10 = c4798y.E();
        if (!E10.g() || E10.h()) {
            return;
        }
        C6899dH c6899dH = new C6899dH(16);
        Iterator<E> it = t0Var.f35956b.f35937c.iterator();
        while (it.hasNext()) {
            for (List list : AbstractC7755iS.a((com.android.tools.r8.graph.H2) it.next(), c4798y).values()) {
                if (list.size() == 1) {
                    com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) list.get(0);
                    C4516j1 d11 = h52.d();
                    if ((d11.b1() && d11.Q0().v0()) ? M60.a(E10, d11) : false) {
                        com.android.tools.r8.graph.J0 C10 = d11.Q0().C();
                        com.android.tools.r8.graph.W0 E02 = C10.E0();
                        if (E02 == null) {
                            C4724u1 m10 = E10.m();
                            boolean z10 = com.android.tools.r8.graph.W0.f36922d;
                            E02 = new W0.a(0, new com.android.tools.r8.graph.L2[d11.V0().size()], new com.android.tools.r8.graph.O0[]{m10.f38137r});
                        }
                        if (!f51325b && E02.o0() != h52.C().size()) {
                            throw new AssertionError();
                        }
                        AbstractC5635Np a10 = a(C10.f36463j);
                        if (a10 != null) {
                            int u10 = a10.u();
                            if (E02.r0()) {
                                d10 = E02.m0().h0();
                            } else {
                                int o02 = E02.o0();
                                d10 = (BR.d(0) * o02) + BR.d(o02) + BR.d(0) + E02.l0().f36926g.length + 1;
                            }
                            ((C8130kj) c6899dH.computeIfAbsent(Integer.valueOf(E02.o0()), new Function() {
                                @Override
                                public final Object apply(Object obj) {
                                    return C8798oj.a(((Integer) obj).intValue());
                                }
                            })).a(u10, d10);
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        final C6899dH c6899dH2 = new C6899dH(c6899dH.f47346h);
        c6899dH.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8798oj.a(SG.this, c4798y, (Integer) obj, (C8130kj) obj2);
            }
        });
        C8798oj c8798oj = new C8798oj(c6899dH2);
        if (!com.android.tools.r8.dex.t0.f35954k && t0Var.f35961g != null) {
            throw new AssertionError();
        }
        t0Var.f35961g = c8798oj;
    }

    public static C8130kj a(int i10) {
        return new C8130kj(i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b4, code lost:
    
        if ((r10 > 2147483647L ? Integer.MAX_VALUE : (int) r10) <= r1) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(SG sg2, C4798y c4798y, Integer num, C8130kj c8130kj) {
        int i10;
        int i11;
        c8130kj.getClass();
        int i12 = c4798y.E().f50599F1.f50901q0;
        boolean z10 = c4798y.E().f50599F1.f50899p0;
        if (!C8130kj.f49735c && c8130kj.f49737b.isEmpty()) {
            throw new AssertionError();
        }
        C6899dH c6899dH = c8130kj.f49737b;
        int i13 = c6899dH.f47346h;
        int[] iArr = new int[i13];
        SH.a(new XG(((YG) c6899dH.o()).f45960b), iArr);
        Arrays.sort(iArr);
        C7963jj c7963jj = new C7963jj();
        int i14 = 0;
        while (i14 < i13) {
            int i15 = iArr[i14];
            C8631nj c8631nj = (C8631nj) c8130kj.f49737b.get(i15);
            if (!C8130kj.f49735c && i15 != c8631nj.f51041a) {
                throw new AssertionError();
            }
            int i16 = c7963jj.f49320f + c8631nj.f51043c;
            int i17 = c7963jj.f49319e + c8631nj.f51042b;
            if (i12 < 0) {
                i10 = i14;
                i11 = i15;
            } else {
                i10 = i14;
                i11 = i15;
                long j10 = ((i15 + 1) * i16) - i17;
                if ((j10 > 2147483647L ? Integer.MAX_VALUE : (int) j10) > i12) {
                    c7963jj.a();
                }
            }
            int i18 = c7963jj.f49320f + c8631nj.f51043c;
            c7963jj.f49320f = i18;
            int i19 = c7963jj.f49319e + c8631nj.f51042b;
            c7963jj.f49319e = i19;
            int i20 = i11 + 1;
            if (i12 >= 0) {
                long j11 = (i20 * i18) - i19;
            }
            if (z10 || i19 > i20) {
                c7963jj.f49316b = new C8464mj(i11, true, i18, i19);
                c7963jj.f49318d = 0;
                i14 = i10 + 1;
            }
            c7963jj.f49318d = i11;
            i14 = i10 + 1;
        }
        c7963jj.a();
        int i21 = c8130kj.f49736a;
        DG dg2 = c7963jj.f49315a;
        int i22 = dg2.f39474c;
        DG dg3 = (i22 > 1 || (i22 == 1 && ((C8464mj) new CG(((C8731oG) dg2.values()).f51202b).a().f44051c).f50400b)) ? c7963jj.f49315a : null;
        c4798y.E().f50599F1.getClass();
        sg2.put(num, new C7797ij(i21, dg3));
    }

    public static boolean a(com.android.tools.r8.graph.H5 h52, C4516j1 c4516j1) {
        return c4516j1.C0().equals(h52.getReference().t0());
    }

    public final String a() {
        ArrayList arrayList = new ArrayList(this.f51326a.values());
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer valueOf;
                valueOf = Integer.valueOf(((C7797ij) obj).f49032a);
                return valueOf;
            }
        }));
        final boolean z10 = false;
        return C10656zq0.a("\n", arrayList, new Function() {
            @Override
            public final Object apply(Object obj) {
                String a10;
                a10 = ((C7797ij) obj).a(z10);
                return a10;
            }
        });
    }

    public static void a(com.android.tools.r8.graph.J0 j02, int i10) {
        int u10 = a(j02.f36463j).u();
        if (!f51325b && u10 > i10) {
            throw new AssertionError();
        }
    }

    public static AbstractC5635Np a(AbstractC5635Np[] abstractC5635NpArr) {
        AbstractC5635Np abstractC5635Np = null;
        for (AbstractC5635Np abstractC5635Np2 : abstractC5635NpArr) {
            if (!abstractC5635Np2.L()) {
                abstractC5635Np = abstractC5635Np2;
            }
        }
        return abstractC5635Np;
    }
}
