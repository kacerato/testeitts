package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4572m0;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class SJ extends AbstractC4572m0 {

    public static final boolean f44176j = true;

    public final C4798y f44177e;

    public final E00 f44178f;

    public final Function f44179g;

    public final ConcurrentHashMap f44180h;

    public final Predicate f44181i;

    public SJ(C4798y c4798y, E00 e00, Function function, ConcurrentHashMap concurrentHashMap, Predicate predicate) {
        super(c4798y, e00.a());
        this.f44177e = c4798y;
        this.f44178f = e00;
        this.f44179g = function;
        this.f44180h = concurrentHashMap;
        this.f44181i = predicate;
    }

    public static void a(AbstractC8374m80 abstractC8374m80, com.android.tools.r8.graph.C4 c42) {
        com.android.tools.r8.graph.H0 h02 = c42.f36195b;
        if (h02 instanceof com.android.tools.r8.graph.H5) {
            abstractC8374m80.add((AbstractC8374m80) h02.H());
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49581e);
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49582f);
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49583g);
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49584h);
    }

    public final void a(boolean z10, com.android.tools.r8.graph.H5 h52) {
        if (!this.f44181i.test(h52) || h52.d().d1() || h52.d().f37314g.J()) {
            return;
        }
        com.android.tools.r8.shaking.I1 a10 = this.f44177e.a(h52);
        C8570nJ E10 = this.f44177e.E();
        a10.getClass();
        if (h52.A().H() ? false : a10.h(E10)) {
            return;
        }
        ((E00) this.f44179g.apply(h52)).a(this.f44178f, z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009d, code lost:
    
        if (r12 != 4) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.A2 a22, EnumC8071kK enumC8071kK) {
        com.android.tools.r8.graph.Z4 b10;
        com.android.tools.r8.graph.H0 h02;
        com.android.tools.r8.graph.H5 H10;
        com.android.tools.r8.graph.H5 a10 = this.f44178f.a();
        NW a11 = this.f44177e.v().a(a22, a10.getReference(), enumC8071kK, b(), AbstractC9530t40.f52519c);
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) a11.f41111a;
        EnumC8071kK enumC8071kK2 = a11.f42623d;
        if (!enumC8071kK2.b() && !enumC8071kK2.e()) {
            b10 = ((C11245i) this.f44177e.f()).f(a23);
        } else {
            b10 = ((C11245i) this.f44177e.f()).b(a23, enumC8071kK2.b());
        }
        if (!b10.w()) {
            return;
        }
        if (!enumC8071kK2.b() && !enumC8071kK2.e()) {
            C11245i c11245i = (C11245i) this.f44177e.f();
            C4798y<? extends C4514j> c4798y = this.f44177e;
            Z4.c<?> o10 = b10.o();
            C4798y c4798y2 = this.f44177e;
            if (!C11245i.f57385J) {
                c11245i.c();
            } else {
                c11245i.getClass();
            }
            if (a23.s0().I0()) {
                int ordinal = enumC8071kK2.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal == 2) {
                            h02 = c11245i.b(a23, a10, c4798y);
                        } else if (ordinal == 3) {
                            c11245i.getClass();
                            h02 = c11245i.a(a23, a10.getHolder(), c4798y, c4798y.f());
                        }
                    }
                    h02 = c11245i.a(c4798y, a23, o10, a10, enumC8071kK2.b(), c4798y2, AbstractC10330xt.m());
                } else {
                    h02 = c11245i.a(a23, a10, c4798y);
                }
                boolean z10 = com.android.tools.r8.graph.H0.f36361e;
                H10 = h02 != null ? h02.H() : null;
                if (H10 == null) {
                    a(H10, a10);
                    return;
                }
                return;
            }
            h02 = null;
            boolean z102 = com.android.tools.r8.graph.H0.f36361e;
            if (h02 != null) {
            }
            if (H10 == null) {
            }
        } else {
            a(enumC8071kK2, b10.o(), a10);
        }
    }

    public void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        if (!f44176j && h53.d().e1() && h52.d() == h53.d()) {
            throw new AssertionError();
        }
        a(false, h52);
    }

    public final AbstractC8374m80 a(com.android.tools.r8.graph.H0 h02, Z4.c cVar, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        if (!h02.d().r1()) {
            return null;
        }
        com.android.tools.r8.graph.H4 b10 = cVar.b(h52.getHolder(), this.f44177e);
        if (!b10.d()) {
            return null;
        }
        final AbstractC8374m80 c10 = AbstractC8374m80.c();
        b10.a().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SJ.a(AbstractC8374m80.this, (com.android.tools.r8.graph.D4) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                SJ.a(AbstractC8374m80.this, (com.android.tools.r8.graph.C4) obj);
            }
        });
        return c10;
    }

    public static void a(AbstractC8374m80 abstractC8374m80, com.android.tools.r8.graph.D4 d42) {
        com.android.tools.r8.graph.H0 l10 = d42.l();
        l10.getClass();
        if (l10 instanceof com.android.tools.r8.graph.H5) {
            abstractC8374m80.add((AbstractC8374m80) l10.H());
        }
    }

    @Override
    public void a(com.android.tools.r8.graph.D0 d02) {
        a(2, d02.f36214g);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49580d);
    }

    public void a(EnumC8071kK enumC8071kK, final Z4.c cVar, final com.android.tools.r8.graph.H5 h52) {
        AbstractC8374m80 abstractC8374m80;
        final com.android.tools.r8.graph.H0 a10 = com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d);
        com.android.tools.r8.graph.A2 reference = a10.getReference();
        com.android.tools.r8.graph.E0 holder = a10.getHolder();
        this.f44177e.E().f50599F1.getClass();
        if (holder.f0() || (abstractC8374m80 = (AbstractC8374m80) this.f44180h.computeIfAbsent(reference, new Function() {
            @Override
            public final Object apply(Object obj) {
                return SJ.this.a(a10, cVar, h52, (com.android.tools.r8.graph.A2) obj);
            }
        })) == null) {
            return;
        }
        boolean z10 = abstractC8374m80.f45165b.size() >= this.f44177e.E().f50651X;
        Iterator it = abstractC8374m80.f45165b.values().iterator();
        while (it.hasNext()) {
            a(z10, (com.android.tools.r8.graph.H5) it.next());
        }
    }
}
