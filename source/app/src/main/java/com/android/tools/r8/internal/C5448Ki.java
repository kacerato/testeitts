package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4516j1;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.openjdk.tools.doclint.DocLint;

public final class C5448Ki extends AbstractC6931dX {

    public static final boolean f41737h = true;

    public final M70 f41738a;

    public final C9539t70 f41739b;

    public final AbstractC7264fX f41740c;

    public final Set f41741d = AbstractC5513Ll0.c();

    public final C8322lr0 f41742e;

    public final C8322lr0 f41743f;

    public C5093Ef f41744g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.tools.r8.internal.U70] */
    public C5448Ki(M70 m70, C9539t70 c9539t70, ExecutorService executorService) {
        this.f41738a = m70;
        this.f41739b = c9539t70;
        C7097eX c7097eX = C7097eX.f47704c;
        m70.getClass();
        this.f41740c = m70 instanceof C6520b10 ? c7097eX : new U70(m70.a(), c7097eX);
        this.f41744g = c9539t70.f49522a.k();
        this.f41742e = new C8322lr0(c9539t70.f49531j, executorService);
        this.f41743f = new C8322lr0(c9539t70.f49531j, executorService);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    public final void b(final com.android.tools.r8.graph.H5 h52, final AbstractC7103ea abstractC7103ea) {
        if (!this.f41741d.contains(h52.p())) {
            com.android.tools.r8.synthesis.J g10 = this.f41739b.f49522a.f38408a.g();
            com.android.tools.r8.graph.H2 holder = h52.getHolder();
            g10.getClass();
            if (!g10.g(holder.f36245e)) {
                return;
            }
        }
        C8322lr0 c8322lr0 = this.f41743f;
        InterfaceC5930Sr0 interfaceC5930Sr0 = new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C5448Ki.this.a(h52, abstractC7103ea);
            }
        };
        c8322lr0.getClass();
        try {
            c8322lr0.b(interfaceC5930Sr0);
        } catch (ExecutionException e10) {
            throw new C6052Uu0(e10);
        }
    }

    @Override
    public final boolean c(com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    @Override
    public final AbstractC7264fX d() {
        return this.f41740c;
    }

    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        this.f41739b.a(h52, abstractC7103ea, (AbstractC8028k40) AbstractC8529n40.f50496b, this, this.f41744g.a(h52), C8659ns0.c());
    }

    @Override
    public final E8 c() {
        throw new C5417Jv0("Invalid attempt to obtain call-site information in D8");
    }

    public final void d(com.android.tools.r8.graph.H5 h52) {
        this.f41739b.b(h52, AbstractC8529n40.f50496b, this, this.f41744g.a(h52), EW.b(this.f41739b.f49522a, h52), C8659ns0.c());
    }

    public final void a(Iterable iterable) {
        iterable.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5448Ki.this.b((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea, C8659ns0 c8659ns0) {
        String str;
        C9539t70 c9539t70 = this.f41739b;
        C5035Df a10 = this.f41744g.a(h52);
        c9539t70.getClass();
        C4516j1 d10 = h52.d();
        if ((c9539t70.f49531j.f50697l instanceof ClassFileConsumer) && d10.a1()) {
            C5313Ib a11 = c9539t70.f49522a.E().a(d10.P0());
            d10.L0();
            if (!C4516j1.f37313x && a11 == null) {
                throw new AssertionError();
            }
            d10.f37321n = (C5313Ib) C40.c(d10.f37321n, a11);
        }
        if (d10.Q0() != null && c9539t70.f49531j.a(d10)) {
            if (c9539t70.f49522a.E().f50739z) {
                com.android.tools.r8.graph.L2 l22 = h52.p().f36592f;
                for (com.android.tools.r8.graph.L2 l23 : c9539t70.f49518D.f52019a) {
                    l22.getClass();
                    boolean z10 = true;
                    if (l22.b(l23.f36562f)) {
                        c9539t70.f49520F.getAndSet(true);
                    } else {
                        Iterator it = c9539t70.f49518D.f52020b.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (!l22.b(((com.android.tools.r8.graph.L2) it.next()).f36562f)) {
                                    c9539t70.f49519E.getAndSet(true);
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    if (c9539t70.f49520F.get() && c9539t70.f49519E.get()) {
                        synchronized (c9539t70) {
                            try {
                                str = c9539t70.f49521G;
                                if (str == null) {
                                    StringBuilder sb2 = new StringBuilder("Merging DEX file containing classes with prefix");
                                    sb2.append(c9539t70.f49518D.f52019a.size() > 1 ? "es " : " ");
                                    int i10 = 0;
                                    while (i10 < c9539t70.f49518D.f52019a.size()) {
                                        sb2.append("'");
                                        sb2.append(((com.android.tools.r8.graph.L2) c9539t70.f49518D.f52019a.get(i10)).toString().substring(1).replace('/', '.'));
                                        sb2.append("'");
                                        sb2.append(i10 < c9539t70.f49518D.f52019a.size() - 1 ? ", " : "");
                                        i10++;
                                    }
                                    if (!c9539t70.f49518D.f52020b.isEmpty()) {
                                        sb2.append(" with other classes, except classes with prefix");
                                        sb2.append(c9539t70.f49518D.f52020b.size() > 1 ? "es " : " ");
                                        int i11 = 0;
                                        while (i11 < c9539t70.f49518D.f52020b.size()) {
                                            sb2.append("'");
                                            sb2.append(((com.android.tools.r8.graph.L2) c9539t70.f49518D.f52020b.get(i11)).toString().substring(1).replace('/', '.'));
                                            sb2.append("'");
                                            sb2.append(i11 < c9539t70.f49518D.f52020b.size() - 1 ? ", " : "");
                                            i11++;
                                        }
                                        sb2.append(DocLint.SEPARATOR);
                                    } else {
                                        sb2.append(" with classes with any other prefixes");
                                    }
                                    sb2.append(" is not allowed: ");
                                    Iterator it2 = c9539t70.f49522a.f().e().iterator();
                                    int i12 = 11;
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            break;
                                        }
                                        com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it2.next();
                                        com.android.tools.r8.graph.L2 l24 = h22.f36245e.f36592f;
                                        l24.getClass();
                                        if (!l24.b(l23.f36562f)) {
                                            Iterator it3 = c9539t70.f49518D.f52020b.iterator();
                                            while (true) {
                                                if (it3.hasNext()) {
                                                    com.android.tools.r8.graph.L2 l25 = (com.android.tools.r8.graph.L2) it3.next();
                                                    com.android.tools.r8.graph.L2 l26 = h22.f36245e.f36592f;
                                                    l26.getClass();
                                                    if (l26.b(l25.f36562f)) {
                                                        break;
                                                    }
                                                } else {
                                                    int i13 = i12 - 1;
                                                    if (i12 >= 0) {
                                                        if (z10) {
                                                            z10 = false;
                                                        } else {
                                                            sb2.append(", ");
                                                        }
                                                        sb2.append((Object) h22.f36245e);
                                                        i12 = i13;
                                                    } else {
                                                        sb2.append(ClasspathEntry.DOT_DOT);
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    sb2.append(".");
                                    str = sb2.toString();
                                    c9539t70.f49521G = str;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        throw new C5325If(str);
                    }
                }
            }
            C8570nJ c8570nJ = c9539t70.f49531j;
            if (!(c8570nJ.f50697l instanceof ClassFileConsumer) && c8570nJ.f50736y && d10.Q0().v0()) {
                if (!C9539t70.f52537J && !d10.Q0().v0()) {
                    throw new AssertionError();
                }
                return;
            }
            c9539t70.a(h52, abstractC7103ea, (AbstractC8028k40) c9539t70.f49515A, this, a10, c8659ns0);
        }
    }

    @Override
    public final void b(final com.android.tools.r8.graph.H5 h52) {
        if (!this.f41741d.contains(h52.p())) {
            com.android.tools.r8.synthesis.J g10 = this.f41739b.f49522a.f38408a.g();
            com.android.tools.r8.graph.H2 holder = h52.getHolder();
            g10.getClass();
            if (!g10.g(holder.f36245e)) {
                return;
            }
        }
        if (h52.d().d1()) {
            return;
        }
        C8322lr0 c8322lr0 = this.f41742e;
        InterfaceC5930Sr0 interfaceC5930Sr0 = new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C5448Ki.this.d(h52);
            }
        };
        c8322lr0.getClass();
        try {
            c8322lr0.b(interfaceC5930Sr0);
        } catch (ExecutionException e10) {
            throw new C6052Uu0(e10);
        }
    }
}
