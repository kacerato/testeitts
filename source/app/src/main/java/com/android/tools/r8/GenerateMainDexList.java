package com.android.tools.r8;

import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4552l;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Y5;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5354It;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8644nn0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.M70;
import com.android.tools.r8.shaking.B4;
import com.android.tools.r8.shaking.C11132b5;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.shaking.C4;
import com.android.tools.r8.shaking.N;
import com.android.tools.r8.utils.C11662i;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Supplier;

public class GenerateMainDexList {

    static final boolean f35310c = true;

    private final C8659ns0 f35311a = new C8659ns0("maindex", false);

    private final C8570nJ f35312b;

    public GenerateMainDexList(C8570nJ c8570nJ) {
        this.f35312b = c8570nJ;
    }

    private void a(C11662i c11662i, ExecutorService executorService, final C8644nn0 c8644nn0) {
        try {
            traceMainDexForGenerateMainDexList(executorService, new C4303c(c11662i, this.f35312b, this.f35311a).a(executorService)).a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    GenerateMainDexList.this.a(c8644nn0, (com.android.tools.r8.graph.M2) obj);
                }
            });
            c8644nn0.finished(this.f35312b.f50691j);
        } catch (ExecutionException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void main(String[] strArr) throws CompilationFailedException {
        GenerateMainDexListCommand build = GenerateMainDexListCommand.parse(strArr).build();
        if (build.isPrintHelp()) {
            System.out.println(GenerateMainDexListCommand.f35313j);
            return;
        }
        if (build.isPrintVersion()) {
            System.out.println("MainDexListGenerator 8.10.21");
            return;
        }
        List<String> run = run(build);
        if (build.getMainDexListConsumer() == null) {
            final PrintStream printStream = System.out;
            Objects.requireNonNull(printStream);
            run.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    PrintStream.this.println((String) obj);
                }
            });
        }
    }

    public static List<String> run(GenerateMainDexListCommand generateMainDexListCommand) throws CompilationFailedException {
        return a(generateMainDexListCommand.a(), generateMainDexListCommand.b());
    }

    public C11349o2 traceMainDexForD8(C4798y<C4477h> c4798y, ExecutorService executorService) throws ExecutionException {
        return a(new C4798y(C4514j.a(c4798y.e().i(), C6300Zd.a(), c4798y.f().f(), com.android.tools.r8.synthesis.E.e()), C5354It.f41240c, AbstractC9148qo0.b(), 1, C8659ns0.c()), executorService);
    }

    public C11349o2 traceMainDexForGenerateMainDexList(ExecutorService executorService, AbstractC4780x0 abstractC4780x0) throws ExecutionException {
        return a(C4798y.a(abstractC4780x0.i()), executorService);
    }

    public static void b(C11662i c11662i, ExecutorService executorService, C8570nJ c8570nJ, List list) {
        try {
            new GenerateMainDexList(c8570nJ).a(c11662i, executorService, new C8644nn0(new I(c8570nJ.f50629P1, list)));
        } finally {
            executorService.shutdown();
        }
    }

    public static List<String> run(GenerateMainDexListCommand generateMainDexListCommand, final ExecutorService executorService) throws CompilationFailedException {
        final C11662i a10 = generateMainDexListCommand.a();
        final C8570nJ b10 = generateMainDexListCommand.b();
        final ArrayList arrayList = new ArrayList();
        AbstractC8333lv.a(generateMainDexListCommand.c(), new AbstractC8333lv.a() {
            @Override
            public final void run() {
                GenerateMainDexList.a(C11662i.this, executorService, b10, arrayList);
            }
        });
        return arrayList;
    }

    public void a(C8644nn0 c8644nn0, com.android.tools.r8.graph.M2 m22) {
        String str = m22.U0() + ".class";
        C5094Ef0 c5094Ef0 = this.f35312b.f50691j;
        c8644nn0.f51073b.add(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private C11349o2 a(final C4798y c4798y, ExecutorService executorService) {
        GraphConsumer graphConsumer;
        GraphConsumer graphConsumer2;
        c4798y.a(C4552l.a((C4798y<?>) c4798y).a());
        C4477h f10 = c4798y.f();
        if (f10.g(f10.b().f38108n2) != null) {
            if (f10.g(f10.b().f38116o2) != null) {
                Y5 a10 = Y5.a((C4798y<? extends C4514j>) c4798y);
                B4 a11 = new C4(c4798y, M70.b(), a10, this.f35312b.f50602G1).a(executorService);
                c4798y.f38423p = a11;
                GraphConsumer graphConsumer3 = this.f35312b.f50653X1;
                if (a11.f56395e.isEmpty()) {
                    graphConsumer = graphConsumer3;
                    graphConsumer2 = null;
                } else {
                    graphConsumer = new C11132b5(graphConsumer3);
                    graphConsumer2 = graphConsumer;
                }
                com.android.tools.r8.shaking.N n10 = new com.android.tools.r8.shaking.N(c4798y, M70.b(c4798y), executorService, a10, graphConsumer, N.a.f56829f, null, null);
                final C11349o2 c10 = n10.c(executorService, this.f35311a);
                R8.a(a11, new Supplier() {
                    @Override
                    public final Object get() {
                        Collection a12;
                        a12 = GenerateMainDexList.a(C11349o2.this, c4798y);
                        return a12;
                    }
                }, graphConsumer2, c4798y, n10, true, this.f35312b, this.f35311a, executorService);
                return c10;
            }
            throw new C5325If("Tracing for legacy multi dex is not possible without all classpath libraries (java.lang.annotation.Annotation is missing)");
        }
        throw new C5325If("Tracing for legacy multi dex is not possible without all classpath libraries (java.lang.Enum is missing)");
    }

    public static Collection a(C11349o2 c11349o2, final C4798y c4798y) {
        final ArrayList arrayList = new ArrayList();
        c11349o2.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                GenerateMainDexList.a(C4798y.this, arrayList, (com.android.tools.r8.graph.M2) obj);
            }
        });
        return arrayList;
    }

    public static void a(C4798y c4798y, ArrayList arrayList, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = c4798y.g(m22);
        if (!f35310c && !g10.e0()) {
            throw new AssertionError();
        }
        arrayList.add(g10.d0());
    }

    public static List<String> a(final C11662i c11662i, final C8570nJ c8570nJ) throws CompilationFailedException {
        final ExecutorService a10 = C5467Kr0.a(c8570nJ);
        final ArrayList arrayList = new ArrayList();
        AbstractC8333lv.a(c8570nJ.f50691j, new AbstractC8333lv.a() {
            @Override
            public final void run() {
                GenerateMainDexList.b(C11662i.this, a10, c8570nJ, arrayList);
            }
        });
        return arrayList;
    }

    public static void a(C11662i c11662i, ExecutorService executorService, C8570nJ c8570nJ, List list) {
        new GenerateMainDexList(c8570nJ).a(c11662i, executorService, new C8644nn0(new I(c8570nJ.f50629P1, list)));
    }
}
