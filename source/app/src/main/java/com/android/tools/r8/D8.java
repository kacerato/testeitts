package com.android.tools.r8;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.dex.C4311k;
import com.android.tools.r8.dex.C4312l;
import com.android.tools.r8.graph.AbstractC4761w0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4552l;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC9109qb0;
import com.android.tools.r8.internal.B4;
import com.android.tools.r8.internal.C10189x10;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C10682zz;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C5779Qc;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C7037e70;
import com.android.tools.r8.internal.C7097eX;
import com.android.tools.r8.internal.C7306fm;
import com.android.tools.r8.internal.C7441gb0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8647no0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8696o40;
import com.android.tools.r8.internal.C8775ob0;
import com.android.tools.r8.internal.C9539t70;
import com.android.tools.r8.internal.C9881vA;
import com.android.tools.r8.internal.E4;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.F4;
import com.android.tools.r8.internal.FW;
import com.android.tools.r8.internal.HE;
import com.android.tools.r8.internal.IE;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.InterfaceC8500mv;
import com.android.tools.r8.internal.JE;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.QD;
import com.android.tools.r8.internal.T8;
import com.android.tools.r8.internal.ZI;
import com.android.tools.r8.ir.optimize.C10706f;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.naming.C10983p0;
import com.android.tools.r8.shaking.C11278k;
import com.android.tools.r8.shaking.L4;
import com.android.tools.r8.synthesis.C11617z;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Supplier;

public final class D8 {

    static final boolean f35224a = true;

    private static void a(C4798y c4798y) {
        C11278k c11278k = new C11278k();
        com.android.tools.r8.internal.G1 g12 = c4798y.f38427t;
        C4724u1 b10 = c4798y.b();
        C8570nJ E10 = c4798y.E();
        if (E10.P()) {
            C4554l1 c4554l1 = b10.f38031d5.f38212d;
            long d10 = E10.z().d();
            g12.getClass();
            C10189x10 c10189x10 = new C10189x10(d10, 2147483647L);
            E4 a10 = c11278k.a(c4554l1);
            a10.f39743b = F4.a(a10.f39743b, c10189x10);
            c11278k.a(b10.f38031d5.f38212d).f39744c = true;
        }
        c4798y.f38412e = c11278k.a();
    }

    public static void d(C11662i c11662i, final C8570nJ c8570nJ, ExecutorService executorService) {
        C8659ns0 a10;
        if (c8570nJ.f50730w) {
            System.gc();
            System.gc();
            Runtime runtime = Runtime.getRuntime();
            PrintStream printStream = System.out;
            printStream.println("D8 is running with total memory:" + runtime.totalMemory());
            printStream.println("D8 is running with free memory:" + runtime.freeMemory());
            printStream.println("D8 is running with max memory:" + runtime.maxMemory());
        }
        int i10 = C8659ns0.f51095d;
        AbstractC9109qb0 abstractC9109qb0 = c8570nJ.f50596E1;
        if (abstractC9109qb0 != null) {
            a10 = abstractC9109qb0.f51817a;
        } else {
            a10 = C8659ns0.a(c8570nJ, "D8 8.10.21");
        }
        try {
            try {
                a10.b("Pre conversion");
                if (!f35224a && !B4.a(c8570nJ, new Supplier() {
                    @Override
                    public final Object get() {
                        Boolean a11;
                        a11 = D8.a(C8570nJ.this);
                        return a11;
                    }
                })) {
                    throw new AssertionError();
                }
                a10.b("Read input app");
                final C4798y<C4477h> a11 = a(c11662i, c8570nJ, executorService, a10);
                a10.d();
                a10.b("Initialize assume info collection");
                a(a11);
                a10.d();
                a10.b("Desugared library amend");
                C7306fm.a(a11);
                a10.d();
                a10.b("Collect input synthetics");
                com.android.tools.r8.synthesis.J.a(a11);
                a10.d();
                if (C10706f.a(c8570nJ)) {
                    C8696o40 c8696o40 = C8696o40.f51162b;
                    final C5779Qc c5779Qc = new C5779Qc(a11);
                    C5467Kr0.a(a11.f().d(), new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            D8.a(C5779Qc.this, (com.android.tools.r8.graph.H2) obj);
                        }
                    }, a11.E().G(), executorService);
                }
                if (c8570nJ.f50599F1.f50839Q0) {
                    a11.a(C4552l.a(a11).a());
                }
                a10.d();
                new C9539t70(a11, a10).a(a11, executorService);
                a10.b("Post conversion");
                AbstractC4895Av0 it = c11662i.f58591e.iterator();
                while (it.hasNext()) {
                    ((ZI) it.next()).close();
                }
                if (c8570nJ.f50589C0.f45780d.length > 0) {
                    System.out.println("Finished compilation with method filter: ");
                    c8570nJ.f50589C0.forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            D8.a((String) obj);
                        }
                    });
                }
                boolean z10 = a11.f().a().f38368f.f38453b;
                boolean z11 = a11.f().a().f38368f.f38452a;
                com.android.tools.r8.dex.W y10 = z10 ? c8570nJ.y() : null;
                a10.a("Run inspections", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        D8.a(C8570nJ.this, a11);
                    }
                });
                a10.a("Create prefix rewriting lens", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        C7037e70.a(C4798y.this);
                    }
                });
                a10.a("Create record rewriting lens", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        com.android.tools.r8.naming.O0.a(C4798y.this);
                    }
                });
                if (c8570nJ.P() && z11 && z10 && a11.E().x().b().a()) {
                    a10.b("Rewrite non-dex inputs");
                    C4765w4 a12 = a(a11, c11662i, executorService, y10, a10);
                    a10.d();
                    a11.b(a12);
                    a11.f38419l = AbstractC10992r0.a();
                } else if (c8570nJ.P() && z11) {
                    a11.f38419l = AbstractC10992r0.a();
                }
                if (c8570nJ.P() && !c8570nJ.f50602G1.isEmpty()) {
                    a10.b("Generate main-dex list");
                    a11.b().b();
                    a11.b(a11.f().a(new GenerateMainDexList(c8570nJ).traceMainDexForD8(a11, executorService)));
                    a10.d();
                }
                a11.f38411d = a11.f38411d.c(a11);
                a11.f38424q = a11.f38424q.c(a11);
                a(a11, a10, executorService);
                a10.a("Create MethodHandle.Lookup rewriting lens", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        D8.d(C4798y.this);
                    }
                });
                a10.d();
                e(a11);
                a(a11, c11662i, y10, executorService);
                c8570nJ.Z();
                c11662i.b(c8570nJ.f50691j);
                c8570nJ.f0();
                if (c8570nJ.U()) {
                    a10.e();
                }
            } catch (ExecutionException e10) {
                throw new RuntimeException(e10);
            }
        } catch (Throwable th2) {
            c11662i.b(c8570nJ.f50691j);
            c8570nJ.f0();
            if (c8570nJ.U()) {
                a10.e();
            }
            throw th2;
        }
    }

    public static void main(final String[] strArr) {
        if (strArr.length != 0) {
            AbstractC8333lv.a(new InterfaceC8500mv() {
                @Override
                public final void run() {
                    D8.b(strArr);
                }
            });
            return;
        }
        QC qc2 = C11046q.f56172b;
        StringBuilder sb2 = new StringBuilder();
        C10656zq0.a(sb2, "Usage: d8 [options] [@<argfile>] <input-files>", " where <input-files> are any combination of dex, class, zip, jar, or apk files", " and each <argfile> is a file containing additional arguments (one per line)", " and options are:");
        new ParseFlagPrinter().addFlags(AbstractC7552hC.a(C11046q.a())).appendLinesToBuilder(sb2);
        throw new RuntimeException(C10656zq0.a("Invalid invocation.", sb2.toString()));
    }

    public static void run(D8Command d8Command) throws CompilationFailedException {
        final C11662i a10 = d8Command.a();
        final C8570nJ b10 = d8Command.b();
        final ExecutorService a11 = C5467Kr0.a(b10);
        AbstractC8333lv.b(d8Command.g(), new AbstractC8333lv.a() {
            @Override
            public final void run() {
                D8.a(C11662i.this, b10, a11);
            }
        });
    }

    public static void c(C4798y c4798y, ExecutorService executorService) {
        AbstractC4761w0 c10;
        HE v10 = c4798y.E().v();
        if ((v10.f40717b || !v10.f40716a.isEmpty()) && c4798y.E().P()) {
            C8647no0 c8647no0 = new C8647no0(c4798y);
            c8647no0.a(executorService);
            if (c4798y.g(c8647no0.f51082e.f51356b) != null) {
                return;
            }
            String str = c8647no0.f51083f.f40718c;
            if (str == null || com.android.tools.r8.graph.H2.a(c4798y.g(c8647no0.f51080c.d(C4932Bl.H(str)))) != null) {
                com.android.tools.r8.graph.H2 a10 = JE.a(c8647no0.f51080c);
                if (c8647no0.f51083f.f40719d != null) {
                    C4460g1 b10 = a10.b(c8647no0.f51080c.b("writeToLogcat"));
                    R2.c cVar = R2.c.f36741e;
                    b10.a((com.android.tools.r8.graph.R2) cVar);
                    a10.b(c8647no0.f51080c.b("writeToLogcatIncludeDuplicates")).a((com.android.tools.r8.graph.R2) cVar);
                    a10.b(c8647no0.f51080c.b("logcatTag")).a((com.android.tools.r8.graph.R2) new R2.k(c8647no0.f51080c.b(c8647no0.f51083f.f40719d)));
                }
                AbstractC7552hC a11 = AbstractC7552hC.a(IE.a(c8647no0.f51080c), a10);
                c8647no0.f51079b.a(a11, C7097eX.f47704c, EW.a(c4798y), executorService);
                AbstractC4761w0 c11 = c4798y.e().c();
                synchronized (c11) {
                    c11.f38316a.addAll(a11);
                    c10 = c11.c();
                }
                c4798y.b(c10.b());
            }
        }
    }

    private static void e(C4798y c4798y) {
        SyntheticInfoConsumer syntheticInfoConsumer = c4798y.E().f50706o;
        if (syntheticInfoConsumer == null || !c4798y.E().f50595E0) {
            return;
        }
        c4798y.f38408a.g().a(syntheticInfoConsumer);
        syntheticInfoConsumer.finished();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(String[] strArr) {
        D8Command d8Command = (D8Command) D8Command.parse(strArr, com.android.tools.r8.origin.a.f56150f).build();
        if (d8Command.isPrintHelp()) {
            PrintStream printStream = System.out;
            QC qc2 = C11046q.f56172b;
            StringBuilder sb2 = new StringBuilder();
            C10656zq0.a(sb2, "Usage: d8 [options] [@<argfile>] <input-files>", " where <input-files> are any combination of dex, class, zip, jar, or apk files", " and each <argfile> is a file containing additional arguments (one per line)", " and options are:");
            new ParseFlagPrinter().addFlags(AbstractC7552hC.a(C11046q.a())).appendLinesToBuilder(sb2);
            printStream.println(sb2.toString());
            return;
        }
        if (d8Command.isPrintVersion()) {
            System.out.println("D8 " + Version.getVersionString());
            return;
        }
        a(d8Command.a(), d8Command.b());
    }

    public static void run(D8Command d8Command, final ExecutorService executorService) throws CompilationFailedException {
        final C11662i a10 = d8Command.a();
        final C8570nJ b10 = d8Command.b();
        AbstractC8333lv.b(d8Command.g(), new AbstractC8333lv.a() {
            @Override
            public final void run() {
                D8.d(C11662i.this, b10, executorService);
            }
        });
    }

    public static void a(C4798y c4798y, ExecutorService executorService, C8659ns0 c8659ns0) {
        if (!C9881vA.f53047c && !c4798y.E().K().e()) {
            throw new AssertionError();
        }
        new C9881vA(c4798y).b(c8659ns0, (L4) null, executorService);
    }

    public static void b(C4798y c4798y, ExecutorService executorService) {
        new com.android.tools.r8.kotlin.Z(c4798y).a(executorService);
    }

    public static void a(C11662i c11662i, C8570nJ c8570nJ, ExecutorService executorService) {
        try {
            d(c11662i, c8570nJ, executorService);
        } finally {
            executorService.shutdown();
        }
    }

    public static void a(final C11662i c11662i, final C8570nJ c8570nJ) throws CompilationFailedException {
        final ExecutorService a10 = C5467Kr0.a(c8570nJ);
        AbstractC8333lv.b(c8570nJ.f50691j, new AbstractC8333lv.a() {
            @Override
            public final void run() {
                D8.c(C11662i.this, c8570nJ, a10);
            }
        });
    }

    private static C4798y a(C11662i c11662i, final C8570nJ c8570nJ, ExecutorService executorService, final C8659ns0 c8659ns0) {
        c8659ns0.b("Application read");
        final C4303c c4303c = new C4303c(c11662i, c8570nJ, c8659ns0);
        final C4765w4 a10 = c4303c.a(executorService);
        c8659ns0.d();
        c8659ns0.b("Load desugared lib");
        c8570nJ.x().a(c8659ns0, a10);
        c8659ns0.d();
        final C4477h c4477h = (C4477h) c8659ns0.a("Create app-info", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                C4477h a11;
                a11 = D8.a(C4765w4.this, c8570nJ, c4303c);
                return a11;
            }
        });
        return (C4798y) c8659ns0.a("Create app-view", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                C4798y a11;
                a11 = C4798y.a(C4477h.this, c8659ns0);
                return a11;
            }
        });
    }

    public static Boolean a(C8570nJ c8570nJ) {
        return Boolean.valueOf(!c8570nJ.f50599F1.f50835O0);
    }

    public static void a(String str) {
        System.out.println("  - " + str);
    }

    public static void a(C8570nJ c8570nJ, C4798y c4798y) {
        QD.a(c8570nJ.f50721t, c4798y.f().d());
    }

    public static void a(C5779Qc c5779Qc, com.android.tools.r8.graph.H2 h22) {
        H5 h10 = h22.h(h22.L0());
        if (h10 != null) {
            c5779Qc.a(h10, h22, (com.android.tools.r8.shaking.N) null);
        }
    }

    private static void a(C4798y c4798y, C11662i c11662i, com.android.tools.r8.dex.W w10, ExecutorService executorService) {
        C8570nJ E10 = c4798y.E();
        if (E10.f50596E1 != null) {
            C7441gb0 c7441gb0 = new C7441gb0(c4798y);
            if (!C7441gb0.f48296d) {
                AbstractC10992r0 s10 = c4798y.s();
                s10.getClass();
                if (!(s10 instanceof C10983p0)) {
                    throw new AssertionError();
                }
            }
            c7441gb0.a(executorService);
            C8775ob0 c8775ob0 = c7441gb0.f48299c;
            c8775ob0.getClass();
            c8775ob0.f51287d = c4798y.f38411d.b(c4798y);
            C6300Zd c6300Zd = c4798y.f().f37255b;
            c6300Zd.getClass();
            IdentityHashMap identityHashMap = new IdentityHashMap(c6300Zd.f46303a);
            com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
            if (!C6300Zd.f46302c && g10.b()) {
                throw new AssertionError();
            }
            for (com.android.tools.r8.graph.H2 h22 : c4798y.f().d()) {
                g10.getClass();
                if (g10.g(h22.f36245e)) {
                    FeatureSplit a10 = c6300Zd.a(h22.getReference(), g10);
                    if (!a10.isBase()) {
                        identityHashMap.put(h22.getType(), a10);
                    }
                }
            }
            c8775ob0.f51288e = new C6300Zd(identityHashMap, c6300Zd.f46304b);
            c8775ob0.f51289f = new ArrayList();
            c8775ob0.f51290g = new ArrayList();
            for (com.android.tools.r8.graph.H2 h23 : c4798y.f().d()) {
                if (c8775ob0.a(c4798y, h23) == FW.f40237c) {
                    c8775ob0.f51289f.add(h23);
                } else {
                    c8775ob0.f51290g.add(h23);
                }
            }
            c8775ob0.f51291h = c4798y.f38424q;
            return;
        }
        if (E10.f50697l instanceof ClassFileConsumer) {
            new T8(c4798y, w10).a((ClassFileConsumer) E10.f50697l, c11662i, executorService);
        } else {
            C4311k.a((C4798y<?>) c4798y, w10).a(c11662i, executorService);
        }
    }

    public static void c(C11662i c11662i, C8570nJ c8570nJ, ExecutorService executorService) {
        try {
            d(c11662i, c8570nJ, executorService);
        } finally {
            executorService.shutdown();
        }
    }

    private static void a(final C4798y c4798y, final C8659ns0 c8659ns0, final ExecutorService executorService) {
        c8659ns0.a("Finalize synthetics", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C11617z.a(C4798y.this, c8659ns0, executorService);
            }
        });
        c8659ns0.a("Horizontal merger", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                D8.a(C4798y.this, executorService, c8659ns0);
            }
        });
        c8659ns0.a("Signature rewriter", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                D8.a(C4798y.this, executorService);
            }
        });
        c8659ns0.a("Kotlin metadata rewriter", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                D8.b(C4798y.this, executorService);
            }
        });
        c8659ns0.a("Startup instrumentation", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                D8.c(C4798y.this, executorService);
            }
        });
        c8659ns0.a("Api reference stubber", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                D8.d(C4798y.this, executorService);
            }
        });
    }

    public static void a(C4798y c4798y, ExecutorService executorService) {
        C10682zz c10682zz = new C10682zz(c4798y);
        Collection<com.android.tools.r8.graph.H2> d10 = c4798y.f().d();
        AbstractC10992r0 s10 = c4798y.s();
        s10.getClass();
        if (s10 instanceof C10983p0) {
            return;
        }
        c10682zz.a(d10, executorService);
    }

    private static C4765w4 a(C4798y c4798y, C11662i c11662i, ExecutorService executorService, com.android.tools.r8.dex.W w10, C8659ns0 c8659ns0) {
        C4311k c4311k;
        c4798y.E().f50691j.warning(new StringDiagnostic("The compilation is slowed down due to a mix of class file and dex file inputs in the context of desugared library. This can be fixed by pre-compiling to dex the class file inputs and dex merging only dex files."));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.android.tools.r8.graph.H2 h22 : c4798y.f().d()) {
            if (h22.f36366u == ProgramResource.Kind.DEX) {
                arrayList.add(h22);
            } else {
                arrayList2.add(h22);
            }
        }
        c4798y.b(c4798y.e().c().a(arrayList2).b());
        C10902n c10902n = new C10902n();
        new C10682zz(c4798y).a(c4798y.f().d(), executorService);
        new com.android.tools.r8.kotlin.Z(c4798y).a(executorService);
        boolean z10 = C4311k.f35875k;
        if (c4798y.E().f50599F1.f50892m) {
            c4311k = new C4312l(c4798y, w10, c10902n);
        } else {
            c4311k = new C4311k(c4798y, w10, c10902n);
        }
        c4311k.c(executorService);
        C11662i.a a10 = C11662i.a(c11662i);
        a10.b();
        a10.f58597a.clear();
        a10.a(c10902n);
        C4765w4 a11 = new C4303c(a10.a(), c4798y.E(), c8659ns0).a(executorService);
        a11.getClass();
        C4765w4.a aVar = new C4765w4.a(a11);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) obj;
            synchronized (aVar) {
                aVar.f38316a.add(h23);
            }
        }
        return aVar.b();
    }

    public static void d(C4798y c4798y) {
        c4798y.f38419l = com.android.tools.r8.naming.V0.a(c4798y);
    }

    public static void d(C4798y c4798y, ExecutorService executorService) {
        new com.android.tools.r8.internal.Y2(c4798y).a(executorService);
    }

    public static C4477h a(C4765w4 c4765w4, C8570nJ c8570nJ, C4303c c4303c) {
        com.android.tools.r8.synthesis.E b10;
        if (c8570nJ.f50697l instanceof DexIndexedConsumer) {
            b10 = com.android.tools.r8.synthesis.E.e();
        } else {
            b10 = com.android.tools.r8.synthesis.E.b();
        }
        boolean z10 = C6300Zd.f46302c;
        return new C4477h(C6300Zd.a(c8570nJ.m(), c8570nJ.f50718s, c8570nJ.f50691j), com.android.tools.r8.synthesis.J.a(c4765w4, b10), c4303c.a(c4765w4, c4303c.f35827e.f38453b));
    }
}
