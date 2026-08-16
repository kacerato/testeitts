package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.AbstractC4761w0;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.InterfaceC4651q3;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.threading.ThreadingModule;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C9539t70 extends C8048kB {

    public static final boolean f52537J = true;

    public final C8659ns0 f52538I;

    public C9539t70(C4798y c4798y, C8659ns0 c8659ns0) {
        super(c4798y);
        this.f52538I = c8659ns0;
    }

    public static boolean d(com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    public final void a(C4798y c4798y, ExecutorService executorService) {
        AbstractC5200Gc c5084Ec;
        InterfaceC8795oi s70;
        com.android.tools.r8.graph.M2 m22;
        ArrayList arrayList;
        int i10;
        int i11;
        H3.b bVar;
        List<H3.e> r10;
        if (c4798y.E().f50616L0.b()) {
            AbstractC8252lR.a(c4798y, c4798y.f().d());
        }
        a(executorService);
        AbstractC4780x0 a10 = c4798y.f().a();
        M70 b10 = M70.b(c4798y);
        C5448Ki c5448Ki = new C5448Ki(b10, this, executorService);
        int a11 = C10404yI.a(c4798y.E());
        JI ji2 = a11 == 3 ? null : new JI(c4798y, a11);
        this.f52538I.b("IR conversion");
        C4798y c4798y2 = this.f49522a;
        if (c4798y2.E().l().f50754b) {
            c5084Ec = new C5142Fc(c4798y2, this, c5448Ki, ji2);
        } else {
            c5084Ec = new C5084Ec(c4798y2, this, c5448Ki, ji2);
        }
        C5316Ic a12 = c5084Ec.a(executorService, this.f52538I);
        this.f49526e.a(c5448Ki, executorService, this.f52538I);
        c5448Ki.f41743f.a((Consumer) null);
        c5448Ki.f41742e.a((Consumer) null);
        boolean z10 = C5448Ki.f41737h;
        if (!z10 && c5448Ki.f41742e.f53861c.size() != 0) {
            throw new AssertionError();
        }
        if (!z10 && c5448Ki.f41743f.f53861c.size() != 0) {
            throw new AssertionError();
        }
        AbstractC5274Hi.a(this.f49522a, a12.f41149a, this.f52538I);
        this.f49526e.a(this.f52538I);
        this.f49526e.a();
        if (c4798y.f38408a.g().b()) {
            c4798y.b(a10);
            a10 = c4798y.e();
        }
        boolean z11 = f52537J;
        if (!z11 && a10 != c4798y.e()) {
            throw new AssertionError();
        }
        a(c5448Ki, ji2, executorService);
        if (c4798y.f38408a.g().b()) {
            c4798y.b(a10);
            a10 = c4798y.e();
        }
        if (!z11 && a10 != c4798y.e()) {
            throw new AssertionError();
        }
        boolean z12 = b10 instanceof C6520b10;
        if (z12) {
            s70 = C8628ni.f51037a;
        } else {
            s70 = z12 ? C8628ni.f51037a : new S70(b10.a());
        }
        C4798y c4798y3 = this.f49522a;
        if (C8461mi.a(c4798y3)) {
            new C8461mi(c4798y3, this).a(s70, executorService);
        }
        AbstractC4761w0 c10 = a10.c();
        if (c4798y.E().x().f45396a.f53764a) {
            C6996du c6996du = new C6996du(c4798y);
            if (!C6996du.f47542c && !c4798y.E().x().f45396a.f53764a) {
                throw new AssertionError();
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = c10.f38316a;
            int size = arrayList3.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj = arrayList3.get(i12);
                i12++;
                com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
                if (c6996du.f47544b.containsKey(h22.f36245e)) {
                    if (c6996du.f47543a.a(h22)) {
                        arrayList = arrayList3;
                        i10 = size;
                    } else {
                        com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) c6996du.f47544b.get(h22.f36245e);
                        boolean z13 = C6996du.f47542c;
                        if (!z13 && m23 == null) {
                            throw new AssertionError();
                        }
                        C4516j1[] a13 = c6996du.a(h22, m23);
                        C4516j1[] c4516j1Arr = C4516j1.f37310u;
                        if (!z13 && h22.a1() != c6996du.f47543a.b().f38068i2) {
                            throw new AssertionError();
                        }
                        if (!z13 && h22.f36251k.f37700b.f() > 0) {
                            throw new AssertionError();
                        }
                        if (!z13 && h22.T0() != null) {
                            throw new AssertionError();
                        }
                        if (!z13 && !h22.f36256p.isEmpty()) {
                            throw new AssertionError();
                        }
                        if (!z13 && h22.f36251k.f37700b.f() > 0) {
                            throw new AssertionError();
                        }
                        ProgramResource.Kind kind = h22.f36366u;
                        arrayList = arrayList3;
                        Origin origin = h22.f36244d;
                        com.android.tools.r8.graph.Q accessFlags = h22.getAccessFlags();
                        com.android.tools.r8.graph.M2 m24 = c6996du.f47543a.b().f38068i2;
                        com.android.tools.r8.graph.O2 k02 = com.android.tools.r8.graph.O2.k0();
                        com.android.tools.r8.graph.L2 Z02 = h22.Z0();
                        List list = Collections.EMPTY_LIST;
                        com.android.tools.r8.graph.H2 h23 = new com.android.tools.r8.graph.H2(m23, kind, origin, accessFlags, m24, k02, Z02, null, list, list, list, null, list, h22.N0(), h22.k0(), InterfaceC4651q3.empty(), N4.a.a(c4516j1Arr, a13), false, h22.f36371z, EnumC5372Jb0.f41429b);
                        ArrayList arrayList4 = new ArrayList();
                        H3.b N02 = h22.N0();
                        int i13 = 0;
                        while (i13 < h22.f36248h.size()) {
                            com.android.tools.r8.graph.M2 m25 = h22.f36248h.f36675b[i13];
                            if (c6996du.f47544b.containsKey(m25)) {
                                if (N02 == null) {
                                    r10 = Collections.EMPTY_LIST;
                                } else {
                                    H3.c cVar = N02.e().get(i13);
                                    if (!C6996du.f47542c && m25 != cVar.q()) {
                                        throw new AssertionError();
                                    }
                                    r10 = cVar.r();
                                }
                                i11 = size;
                                bVar = N02;
                                arrayList4.add(new H3.c((com.android.tools.r8.graph.M2) c6996du.f47544b.get(m25), r10, null, H3.k.f36403b));
                            } else {
                                i11 = size;
                                bVar = N02;
                            }
                            i13++;
                            size = i11;
                            N02 = bVar;
                        }
                        i10 = size;
                        h23.a(arrayList4, c6996du.f47543a.b());
                        h22 = h23;
                    }
                    arrayList2.add(h22);
                } else {
                    arrayList = arrayList3;
                    i10 = size;
                    arrayList2.add(h22);
                }
                size = i10;
                arrayList3 = arrayList;
            }
            c10.a(arrayList2);
            if (!TQ.f44467a && !c4798y.E().x().f45396a.f53764a) {
                throw new AssertionError();
            }
            for (com.android.tools.r8.graph.H2 h24 : c4798y.f().d()) {
                boolean containsKey = c4798y.E().x().a().j().containsKey(h24.f36245e);
                if (h24.O0() != null && (m22 = h24.O0().f37289a) != null && c4798y.E().x().a().j().containsKey(m22) != containsKey) {
                    h24.f36253m = null;
                }
                if (!h24.Q0().isEmpty()) {
                    ArrayList arrayList5 = new ArrayList();
                    for (C4425e4 c4425e4 : h24.Q0()) {
                        if (c4798y.E().x().a().j().containsKey(c4425e4.b()) == containsKey) {
                            arrayList5.add(c4425e4);
                        }
                    }
                    if (arrayList5.size() != h24.Q0().size()) {
                        h24.f36254n = arrayList5;
                    }
                }
            }
        }
        this.f52538I.d();
        c4798y.b(c10.b());
        b10.a(c4798y);
    }

    public final void a(final com.android.tools.r8.graph.H5 h52, final AbstractC7103ea abstractC7103ea, final AbstractC8028k40 abstractC8028k40, final C5448Ki c5448Ki, final C5035Df c5035Df, final C8659ns0 c8659ns0) {
    }

    public final void a(C5448Ki c5448Ki, JI ji2, ExecutorService executorService) {
        C8659ns0 b10 = this.f52538I.b("Post processing desugaring");
        try {
            C4798y c4798y = this.f49522a;
            M70 m70 = c5448Ki.f41738a;
            AbstractC5947Ta c5831Ra = new C5831Ra(c5448Ki, this.f49526e);
            m70.getClass();
            if (!(m70 instanceof C6520b10)) {
                c5831Ra = new R70(m70.a(), c4798y.E().q(), c5831Ra);
            }
            c5448Ki.f41744g = c5448Ki.f41739b.f49522a.k();
            AbstractC5773Qa.a(this.f49522a, this.f49526e.a(ji2), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C9539t70.d((com.android.tools.r8.graph.H5) obj);
                }
            }).a(this.f49522a.f().d(), c5831Ra, executorService, this.f52538I);
            c5448Ki.f41743f.a((Consumer) null);
            c5448Ki.f41742e.a((Consumer) null);
            c5831Ra.a();
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void a(final AbstractC7103ea abstractC7103ea, ExecutorService executorService) {
        C8659ns0 b10 = this.f52538I.b("Prepare desugaring");
        try {
            final Z70 z70 = new Z70();
            ThreadingModule G10 = this.f49522a.E().G();
            C5467Kr0.a(this.f49522a.f().d(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9539t70.this.a(abstractC7103ea, z70, (com.android.tools.r8.graph.H2) obj);
                }
            }, G10, executorService);
            z70.a(G10, executorService);
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void a(final AbstractC7103ea abstractC7103ea, final Z70 z70, com.android.tools.r8.graph.H2 h22) {
        final Y9 y92 = this.f49526e.get();
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y9.this.a(abstractC7103ea, z70, (com.android.tools.r8.graph.H5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9539t70.a((C4516j1) obj);
            }
        });
    }

    public static boolean a(C4516j1 c4516j1) {
        return c4516j1.b1() && c4516j1.Q0().t0();
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, AbstractC7103ea abstractC7103ea, C5448Ki c5448Ki, JI ji2, C8659ns0 c8659ns0) {
        com.android.tools.r8.graph.H5 h10 = h22.h(h22.L0());
        ArrayList a10 = AT.a(new InterfaceC6285Yx() {
            @Override
            public final void forEach(Consumer consumer) {
                com.android.tools.r8.graph.H2.this.l(consumer);
            }
        });
        if (h10 != null) {
            c5448Ki.a(h10, abstractC7103ea, c8659ns0);
        }
        int size = a10.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) obj;
            if (!h52.d().f1()) {
                c5448Ki.a(h52, abstractC7103ea, c8659ns0);
                if (ji2 != null) {
                    ji2.a(h52, abstractC7103ea);
                }
            }
        }
        if (!(this.f49531j.f50697l instanceof ClassFileConsumer) || h22.f36367v == null) {
            return;
        }
        h22.a(this.f49522a.E().a(h22.G1()));
    }

    public final C8659ns0 a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea, AbstractC8028k40 abstractC8028k40, AbstractC6931dX abstractC6931dX, C5035Df c5035Df, C8659ns0 c8659ns0) {
        if (h52.d().Q0().t0()) {
            C8659ns0 b10 = c8659ns0.b("Desugar code");
            try {
                Y9 y92 = this.f49526e.get();
                y92.a(h52, abstractC7103ea);
                if (y92.a(h52)) {
                    y92.a(h52, abstractC7103ea, c5035Df);
                }
                b10.d();
            } catch (Throwable th2) {
                try {
                    b10.d();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        return a(h52, abstractC8028k40, abstractC6931dX, c5035Df, EW.b(this.f49522a, h52), c8659ns0);
    }
}
