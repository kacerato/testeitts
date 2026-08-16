package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11415s1;
import com.android.tools.r8.shaking.C11416s2;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public abstract class DM {

    public static final boolean f39503a = true;

    public static AbstractC7024e3 a(final C4798y c4798y, List list, ExecutorService executorService) {
        final EM em2 = new EM(c4798y.b());
        final C6691c3 c6691c3 = new C6691c3();
        C5467Kr0.a(list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                BN bn2 = (BN) obj;
                DM.a(bn2, (C4514j) C4798y.this.f(), em2, c6691c3);
            }
        }, c4798y.E().G(), executorService);
        return c6691c3.a(c4798y);
    }

    public static void a(BN bn2, C4514j c4514j, final EM em2, final C6691c3 c6691c3) {
        final AM am2 = new AM(c4514j, em2);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                DM.a(AM.this, c6691c3, em2, (DN) obj);
            }
        };
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                DM.a(AM.this, c6691c3, (TM) obj);
            }
        };
        bn2.getClass();
        bn2.a(H4.a(consumer), H4.a(consumer2));
    }

    public static void a(AM am2, final C6691c3 c6691c3, final EM em2, DN dn2) {
        am2.f38602e = new Consumer() {
            @Override
            public final void accept(Object obj) {
                DM.a(C6691c3.this, em2, (BM) obj);
            }
        };
        CM cm2 = new CM(dn2);
        am2.f38600c = cm2;
        am2.f38601d = new C10579zM(cm2);
        am2.a(0);
        am2.f38600c = null;
        am2.f38601d = null;
    }

    public static void a(C6691c3 c6691c3, final EM em2, final BM bm2) {
        if (bm2.f38883b.isEmpty()) {
            c6691c3.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DM.a(BM.this, em2, (C11416s2) obj);
                }
            });
        } else {
            c6691c3.a(new Y50(a(bm2, em2, new C11416s2(new IdentityHashMap())), bm2.f38883b));
        }
    }

    public static void a(AM am2, final C6691c3 c6691c3, final TM tm2) {
        am2.f38602e = new Consumer() {
            @Override
            public final void accept(Object obj) {
                DM.a(C6691c3.this, tm2, (BM) obj);
            }
        };
        CM cm2 = new CM(tm2);
        am2.f38600c = cm2;
        am2.f38601d = new C10579zM(cm2);
        am2.a(0);
        am2.f38600c = null;
        am2.f38601d = null;
    }

    public static void a(C6691c3 c6691c3, final TM tm2, final BM bm2) {
        if (!f39503a && !bm2.f38883b.isEmpty()) {
            throw new AssertionError();
        }
        c6691c3.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DM.a(TM.this, bm2, (C11416s2) obj);
            }
        });
    }

    public static void a(TM tm2, BM bm2, final C11416s2 c11416s2) {
        final boolean z10 = tm2.f44449b == 1;
        AT.a(bm2.f38884c, new InterfaceC10593zT() {
            @Override
            public final void accept(Object obj, int i10) {
                DM.a(z10, c11416s2, (com.android.tools.r8.graph.D5) obj, i10);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(boolean z10, C11416s2 c11416s2, com.android.tools.r8.graph.G5 g52) {
        AbstractC11415s1 a10 = c11416s2.a(((com.android.tools.r8.graph.G0) g52).getReference());
        a10.n();
        if (z10) {
            a10.h();
        }
    }

    public static void a(final boolean z10, final C11416s2 c11416s2, com.android.tools.r8.graph.D5 d52, int i10) {
        AbstractC11415s1 a10 = c11416s2.a(d52.getReference());
        a10.n();
        if (z10) {
            a10.h();
        }
        if (d52.isClass()) {
            d52.d0().k(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DM.a(z10, c11416s2, (com.android.tools.r8.graph.G5) obj);
                }
            });
        }
    }

    public static C11416s2 a(final BM bm2, final EM em2, final C11416s2 c11416s2) {
        AT.a(bm2.f38884c, new InterfaceC10593zT() {
            @Override
            public final void accept(Object obj, int i10) {
                DM.a(C11416s2.this, bm2, em2, (com.android.tools.r8.graph.D5) obj, i10);
            }
        });
        return c11416s2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractCollection, java.util.List] */
    public static void a(C11416s2 c11416s2, BM bm2, EM em2, com.android.tools.r8.graph.D5 d52, int i10) {
        ((AbstractC10581zN) bm2.f38885d.get(i10)).a(new C10412yM(c11416s2.a(d52.getReference()), bm2.f38882a, d52, em2));
    }
}
