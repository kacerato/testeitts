package com.android.tools.r8;

import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.dex.C4311k;
import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4552l;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.G5;
import com.android.tools.r8.graph.M5;
import com.android.tools.r8.graph.O5;
import com.android.tools.r8.graph.R3;
import com.android.tools.r8.graph.Y5;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC5139Fb;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC5529Lu;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC8376m9;
import com.android.tools.r8.internal.AbstractC8528n4;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.AbstractC8710o9;
import com.android.tools.r8.internal.AbstractC8737oJ;
import com.android.tools.r8.internal.AbstractC8863p40;
import com.android.tools.r8.internal.AbstractC9109qb0;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.B4;
import com.android.tools.r8.internal.BN;
import com.android.tools.r8.internal.C10374y70;
import com.android.tools.r8.internal.C10441ya0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C10682zz;
import com.android.tools.r8.internal.C5085Ec0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5252Ha;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C5658Oa0;
import com.android.tools.r8.internal.C5711Oy;
import com.android.tools.r8.internal.C5766Pw0;
import com.android.tools.r8.internal.C6021Uf0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6507ax0;
import com.android.tools.r8.internal.C6678bz;
import com.android.tools.r8.internal.C6795ci0;
import com.android.tools.r8.internal.C6845cz;
import com.android.tools.r8.internal.C6991ds0;
import com.android.tools.r8.internal.C7002dw;
import com.android.tools.r8.internal.C7037e70;
import com.android.tools.r8.internal.C7306fm;
import com.android.tools.r8.internal.C8048kB;
import com.android.tools.r8.internal.C8494mt;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8787of0;
import com.android.tools.r8.internal.C9445sc0;
import com.android.tools.r8.internal.C9642tm0;
import com.android.tools.r8.internal.C9779uc0;
import com.android.tools.r8.internal.C9881vA;
import com.android.tools.r8.internal.EI;
import com.android.tools.r8.internal.ER;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.EnumC8361m4;
import com.android.tools.r8.internal.FR;
import com.android.tools.r8.internal.FW;
import com.android.tools.r8.internal.GR;
import com.android.tools.r8.internal.H5;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.InterfaceC5976Tl0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.InterfaceC8500mv;
import com.android.tools.r8.internal.M7;
import com.android.tools.r8.internal.M70;
import com.android.tools.r8.internal.MJ;
import com.android.tools.r8.internal.OV;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.QD;
import com.android.tools.r8.internal.R7;
import com.android.tools.r8.internal.T00;
import com.android.tools.r8.internal.T8;
import com.android.tools.r8.internal.TV;
import com.android.tools.r8.internal.UZ;
import com.android.tools.r8.internal.VV;
import com.android.tools.r8.internal.ZI;
import com.android.tools.r8.internal.ZS;
import com.android.tools.r8.ir.optimize.C10701c0;
import com.android.tools.r8.ir.optimize.C10707f0;
import com.android.tools.r8.kotlin.AbstractC10752b0;
import com.android.tools.r8.naming.C10973n0;
import com.android.tools.r8.shaking.AbstractC11112a2;
import com.android.tools.r8.shaking.C11109a;
import com.android.tools.r8.shaking.C11132b5;
import com.android.tools.r8.shaking.C11144c0;
import com.android.tools.r8.shaking.C11178e0;
import com.android.tools.r8.shaking.C11211g;
import com.android.tools.r8.shaking.C11228h;
import com.android.tools.r8.shaking.C11229h0;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11278k;
import com.android.tools.r8.shaking.C11295l;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.shaking.C11363p;
import com.android.tools.r8.shaking.C11514y;
import com.android.tools.r8.shaking.D4;
import com.android.tools.r8.shaking.I4;
import com.android.tools.r8.shaking.K4;
import com.android.tools.r8.shaking.L4;
import com.android.tools.r8.shaking.N;
import com.android.tools.r8.shaking.V4;
import com.android.tools.r8.synthesis.C11617z;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import javax.xml.parsers.ParserConfigurationException;
import org.xml.sax.SAXException;

public class R8 {

    static final boolean f35448c = true;

    private final C8659ns0 f35449a;

    private final C8570nJ f35450b;

    public R8(C8570nJ c8570nJ) {
        this.f35450b = c8570nJ;
        if (c8570nJ.f50730w) {
            System.gc();
        }
        int i10 = C8659ns0.f51095d;
        AbstractC9109qb0 abstractC9109qb0 = c8570nJ.f50596E1;
        this.f35449a = abstractC9109qb0 != null ? abstractC9109qb0.f51817a : C8659ns0.a(c8570nJ, "R8 8.10.21");
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22) {
        return true;
    }

    public static Collection d(C4798y c4798y) {
        return ((C4514j) c4798y.f()).a().e();
    }

    public static Boolean e(C4798y c4798y) {
        R3.a a10 = com.android.tools.r8.graph.R3.b(c4798y, com.android.tools.r8.graph.M3.a(c4798y)).a(((C4514j) c4798y.f()).d());
        a10.getClass();
        return Boolean.valueOf(a10 == R3.a.f36768f);
    }

    public Boolean f(C4798y c4798y) {
        boolean z10;
        if (this.f35450b.W()) {
            R3.a a10 = com.android.tools.r8.graph.R3.b(c4798y, com.android.tools.r8.graph.M3.a(c4798y)).a(((C4514j) c4798y.f()).d());
            a10.getClass();
            if (a10 != R3.a.f36768f) {
                z10 = false;
                return Boolean.valueOf(z10);
            }
        }
        z10 = true;
        return Boolean.valueOf(z10);
    }

    public static void g(C4798y c4798y) {
        c4798y.a(C4552l.a((C4798y<?>) c4798y).a());
    }

    public static Boolean i(C4798y c4798y) {
        return Boolean.valueOf(a(c4798y));
    }

    public static Boolean j(C4798y c4798y) {
        return Boolean.valueOf(a(c4798y));
    }

    public static void main(final String[] strArr) {
        if (strArr.length != 0) {
            AbstractC8333lv.a(new InterfaceC8500mv() {
                @Override
                public final void run() {
                    R8.b(strArr);
                }
            });
            return;
        }
        boolean z10 = R8Command.f35454b0;
        QC qc2 = C11037o0.f56135b;
        StringBuilder sb2 = new StringBuilder();
        C10656zq0.a(sb2, "Usage: r8 [options] [@<argfile>] <input-files>", " where <input-files> are any combination class, zip, or jar files", " and each <argfile> is a file containing additional arguments (one per line)", " and options are:");
        new ParseFlagPrinter().addFlags(AbstractC7552hC.a(C11037o0.a())).appendLinesToBuilder(sb2);
        throw new RuntimeException(C10656zq0.a("Invalid invocation.", sb2.toString()));
    }

    public static void run(R8Command r8Command) throws CompilationFailedException {
        a(r8Command.a(), r8Command.b());
    }

    public static void a(C11662i c11662i) {
        AbstractC4895Av0 it = c11662i.f58591e.iterator();
        while (it.hasNext()) {
            ((ZI) it.next()).close();
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.tools.r8.graph.h] */
    public static void b(C4798y<?> c4798y, C11662i c11662i, ExecutorService executorService) throws ExecutionException {
        C8570nJ E10 = c4798y.E();
        QD.a(E10.f50721t, c4798y.f().d());
        try {
            com.android.tools.r8.dex.W y10 = E10.y();
            if (!f35448c && y10 == null) {
                throw new AssertionError();
            }
            if (E10.f50697l instanceof ClassFileConsumer) {
                new T8(c4798y, y10).a((ClassFileConsumer) E10.f50697l, c11662i, executorService);
                return;
            }
            AbstractC9109qb0 abstractC9109qb0 = E10.f50596E1;
            if (abstractC9109qb0 != null) {
                abstractC9109qb0.b().b(c4798y.L());
            }
            C4311k.a(c4798y, y10).a(c11662i, executorService);
        } catch (IOException e10) {
            throw new RuntimeException("Cannot write application", e10);
        }
    }

    public static void c(C11662i c11662i, C8570nJ c8570nJ, ExecutorService executorService) {
        if (c8570nJ.f50593D1.f48614a) {
            try {
                new C11105s0(c8570nJ).a(c11662i, executorService);
                return;
            } catch (ResourceException e10) {
                throw new RuntimeException(e10);
            }
        }
        new R8(c8570nJ).a(c11662i, executorService);
    }

    public static void run(R8Command r8Command, final ExecutorService executorService) throws CompilationFailedException {
        final C11662i a10 = r8Command.a();
        final C8570nJ b10 = r8Command.b();
        AbstractC8333lv.a(r8Command.g(), new AbstractC8333lv.a() {
            @Override
            public final void run() {
                R8.c(C11662i.this, b10, executorService);
            }
        });
    }

    public static void a(final C11662i c11662i, final C8570nJ c8570nJ) throws CompilationFailedException {
        final ExecutorService a10 = C5467Kr0.a(c8570nJ);
        AbstractC8333lv.a(c8570nJ.f50691j, new AbstractC8333lv.a() {
            @Override
            public final void run() {
                R8.b(C11662i.this, c8570nJ, a10);
            }
        });
    }

    public static Boolean c(C4798y c4798y) {
        return Boolean.valueOf(a(c4798y));
    }

    /* JADX WARN: Code restructure failed: missing block: B:224:0x0966, code lost:
    
        if (a(r6, r24, r1) == false) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x096e, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0584 A[Catch: all -> 0x0572, TryCatch #1 {all -> 0x0572, blocks: (B:290:0x0551, B:292:0x0559, B:294:0x0569, B:295:0x057c, B:297:0x0584, B:298:0x058e, B:300:0x05c5, B:302:0x05fb, B:303:0x05ff, B:305:0x0609, B:307:0x0610, B:309:0x0615, B:311:0x061a, B:313:0x0623, B:315:0x0628, B:316:0x0635, B:318:0x0693, B:321:0x069f, B:322:0x06a4, B:323:0x06a5), top: B:289:0x0551, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x05c5 A[Catch: all -> 0x0572, TryCatch #1 {all -> 0x0572, blocks: (B:290:0x0551, B:292:0x0559, B:294:0x0569, B:295:0x057c, B:297:0x0584, B:298:0x058e, B:300:0x05c5, B:302:0x05fb, B:303:0x05ff, B:305:0x0609, B:307:0x0610, B:309:0x0615, B:311:0x061a, B:313:0x0623, B:315:0x0628, B:316:0x0635, B:318:0x0693, B:321:0x069f, B:322:0x06a4, B:323:0x06a5), top: B:289:0x0551, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:326:0x06cc A[Catch: all -> 0x06e0, ExecutionException -> 0x06e6, TryCatch #11 {ExecutionException -> 0x06e6, all -> 0x06e0, blocks: (B:288:0x054a, B:324:0x06b9, B:326:0x06cc, B:328:0x06d8, B:329:0x06ec, B:331:0x06fa, B:333:0x06fe, B:334:0x0701, B:336:0x070a, B:338:0x070e, B:165:0x0722, B:167:0x0742, B:169:0x0748, B:170:0x074b, B:172:0x075e, B:173:0x078a, B:175:0x07b6, B:176:0x07c5, B:178:0x07e1, B:180:0x07e9, B:182:0x07f9, B:183:0x0800, B:186:0x080f, B:187:0x0816, B:189:0x0820, B:191:0x0831, B:192:0x0838, B:194:0x0844, B:195:0x084e, B:197:0x0853, B:198:0x085a, B:200:0x0864, B:202:0x0875, B:203:0x087c, B:205:0x0893, B:207:0x089f, B:208:0x08e3, B:210:0x0909, B:275:0x08c1, B:277:0x08c9, B:280:0x07c0, B:282:0x077b, B:285:0x0784, B:286:0x0789, B:347:0x0714, B:348:0x0719, B:290:0x0551, B:292:0x0559, B:294:0x0569, B:295:0x057c, B:297:0x0584, B:298:0x058e, B:300:0x05c5, B:302:0x05fb, B:303:0x05ff, B:305:0x0609, B:307:0x0610, B:309:0x0615, B:311:0x061a, B:313:0x0623, B:315:0x0628, B:316:0x0635, B:318:0x0693, B:321:0x069f, B:322:0x06a4, B:323:0x06a5), top: B:287:0x054a, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:340:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x058c  */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v202, types: [com.android.tools.r8.g3, java.util.function.Supplier] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final C11662i c11662i, final ExecutorService executorService) {
        C11662i c11662i2;
        C11662i c11662i3;
        Throwable th2;
        ExecutionException executionException;
        List c10;
        Throwable th3;
        GraphConsumer graphConsumer;
        GraphConsumer graphConsumer2;
        Object obj;
        ArrayList arrayList;
        final C4798y c4798y;
        List list;
        final ExecutorService executorService2;
        L4 l42;
        K4 k42;
        C5711Oy c5711Oy;
        C6845cz c6845cz;
        com.android.tools.r8.graph.M3 m32;
        C9445sc0 a10;
        C5711Oy c5711Oy2;
        ?? r22 = "Run prelude";
        this.f35449a.b("Run prelude");
        boolean z10 = f35448c;
        if (!z10 && this.f35450b.f50697l == null) {
            throw new AssertionError();
        }
        if (!z10) {
            C8570nJ c8570nJ = this.f35450b;
            r22 = new Supplier() {
                @Override
                public final Object get() {
                    Boolean a11;
                    a11 = R8.this.a();
                    return a11;
                }
            };
            if (!B4.a(c8570nJ, r22)) {
                throw new AssertionError();
            }
        }
        C11662i c11662i4 = r22;
        if (this.f35450b.f50730w) {
            System.gc();
            System.gc();
            Runtime runtime = Runtime.getRuntime();
            PrintStream printStream = System.out;
            printStream.println("R8 is running with total memory:" + runtime.totalMemory());
            printStream.println("R8 is running with free memory:" + runtime.freeMemory());
            printStream.println("R8 is running with max memory:" + runtime.maxMemory());
            c11662i4 = printStream;
        }
        this.f35450b.Y();
        this.f35449a.d();
        try {
            try {
                this.f35449a.b("Read app");
                C4303c c4303c = new C4303c(c11662i, this.f35450b, this.f35449a);
                C4765w4 a11 = c4303c.a(executorService);
                AbstractC9109qb0 abstractC9109qb0 = this.f35450b.f50596E1;
                if (abstractC9109qb0 != null) {
                    try {
                        c10 = abstractC9109qb0.b().c();
                    } catch (ExecutionException e10) {
                        executionException = e10;
                        throw AbstractC8333lv.a(executionException);
                    } catch (Throwable th4) {
                        th2 = th4;
                        c11662i3 = c11662i;
                        c11662i3.b(this.f35450b.f50691j);
                        this.f35450b.f0();
                        throw th2;
                    }
                } else {
                    c10 = a11.j();
                }
                List list2 = c10;
                this.f35449a.b("To direct app");
                C4462g3 i10 = a11.i();
                this.f35449a.d();
                this.f35449a.d();
                this.f35450b.x().a(this.f35449a, i10);
                this.f35449a.b("Read main dex classes");
                C11349o2 a12 = c4303c.a(i10);
                this.f35449a.d();
                this.f35449a.a("Close providers", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        R8.a(C11662i.this);
                    }
                });
                this.f35449a.b("Create AppView");
                final C4798y a13 = C4798y.a(i10, a12);
                this.f35449a.d();
                this.f35449a.a("Set app services", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        R8.g(C4798y.this);
                    }
                });
                this.f35449a.a("Collect synthetic inputs", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        com.android.tools.r8.synthesis.J.a(C4798y.this);
                    }
                });
                this.f35449a.b("Register references and more setup");
                if (!z10) {
                    AbstractC8528n4.a(a13, new EnumC8361m4[0]);
                }
                a(a13, list2);
                C8570nJ c8570nJ2 = this.f35450b;
                c8570nJ2.f50707o0 = c8570nJ2.O() && AbstractC10752b0.a(a13);
                if (!this.f35450b.f50602G1.isEmpty()) {
                    C4477h f10 = a13.f();
                    if (f10.g(f10.b().f38108n2) != null) {
                        if (f10.g(f10.b().f38116o2) == null) {
                            throw new C5325If("Tracing for legacy multi dex is not possible without all classpath libraries (java.lang.annotation.Annotation is missing)");
                        }
                    } else {
                        throw new C5325If("Tracing for legacy multi dex is not possible without all classpath libraries (java.lang.Enum is missing)");
                    }
                }
                C7306fm.a(a13);
                EI.a(a13.f(), this.f35450b);
                H5.a(this.f35450b);
                if (this.f35450b.f50603H) {
                    AbstractC5529Lu.a(a13.b());
                }
                if (AbstractC8737oJ.b(this.f35450b.k())) {
                    C9779uc0.a(a13.b());
                }
                if (this.f35450b.d0()) {
                    C5766Pw0.d(a13.b());
                }
                AbstractC5139Fb.a(a13.b());
                AbstractC8710o9 a14 = AbstractC8710o9.a(a13);
                AbstractC8376m9.a(a13).a(executorService, a14, this.f35449a);
                a14.b(a13);
                if (a13.u().b()) {
                    a13.F();
                }
                try {
                    this.f35449a.d();
                    this.f35449a.b("Strip unused code");
                    this.f35449a.b("Before enqueuer");
                    try {
                        ArrayList a15 = com.android.tools.r8.shaking.B3.a(a13);
                        M70 b10 = M70.b(a13);
                        C11278k a16 = C11295l.a();
                        Y5 a17 = Y5.a((C4798y<? extends C4514j>) a13);
                        a13.a(D4.a((C4798y<? extends C4514j>) a13, b10, a17, AbstractC9907vK.a(a15, (List) this.f35450b.B().p())).a(a16).b(executorService).a(executorService));
                        a13.a(a16.a());
                        if (!this.f35450b.f50602G1.isEmpty()) {
                            if (!z10) {
                                try {
                                    if (!a13.v().j()) {
                                        throw new AssertionError();
                                    }
                                } catch (Throwable th5) {
                                    th3 = th5;
                                    this.f35449a.d();
                                    throw th3;
                                }
                            }
                            a13.f38423p = com.android.tools.r8.shaking.B4.b(a13, b10, a17, this.f35450b.f50602G1).a(executorService);
                            ((C4514j) a13.f()).k();
                        }
                        C11211g c11211g = this.f35450b.W() ? new C11211g(N.a.f56825b) : null;
                        this.f35449a.d();
                        this.f35449a.b("Enqueuer");
                        C11211g c11211g2 = c11211g;
                        final C4798y a18 = a(c11211g, executorService, a13, b10, a17, list2);
                        this.f35449a.d();
                        this.f35449a.b("After enqueuer");
                        if (!z10) {
                            a13.G().a(a18);
                        }
                        if (!z10) {
                            a13.G().c(a18);
                        }
                        if (!z10) {
                            a13.G().d(a18);
                        }
                        if (!z10) {
                            a13.G().b(a13);
                        }
                        if (!z10) {
                            AbstractC8528n4.a(a13, new EnumC8361m4[0]);
                        }
                        D4 G10 = a13.G();
                        C8570nJ c8570nJ3 = this.f35450b;
                        G10.getClass();
                        D4.a(c8570nJ3);
                        if (this.f35450b.a().f40654a && System.getProperty("com.android.tools.r8.reportUnknownApiReferences") != null) {
                            a13.d().b();
                        }
                        if (this.f35450b.f50638S1 != null) {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            PrintStream printStream2 = new PrintStream(byteArrayOutputStream);
                            I4.a(((C4514j) a13.f()).m(), printStream2, new Predicate() {
                                @Override
                                public final boolean test(Object obj2) {
                                    boolean a19;
                                    a19 = R8.a((com.android.tools.r8.graph.M2) obj2);
                                    return a19;
                                }
                            });
                            printStream2.flush();
                            C8570nJ c8570nJ4 = this.f35450b;
                            AbstractC8333lv.a(c8570nJ4.f50691j, c8570nJ4.f50638S1, byteArrayOutputStream.toString());
                            C8570nJ c8570nJ5 = this.f35450b;
                            AbstractC8333lv.a(c8570nJ5.f50691j, c8570nJ5.f50638S1);
                        }
                        if (this.f35450b.W()) {
                            InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                                @Override
                                public final void accept(Object obj2) {
                                    R8.a((C5711Oy) obj2);
                                }
                            };
                            C5658Oa0 c5658Oa0 = a13.f38388C;
                            if (c5658Oa0 != null && (c5711Oy2 = c5658Oa0.f42924c) != null) {
                                interfaceC6160Wr0.accept(c5711Oy2);
                            }
                            com.android.tools.r8.graph.M3 a19 = com.android.tools.r8.graph.M3.a(a13);
                            com.android.tools.r8.graph.R3.a(a13, a19).a(((C4514j) a13.f()).d());
                            M5 m52 = new M5();
                            if (a13.E().a0().f50801e) {
                                a13.f38388C.f42927f.a(m52);
                            }
                            O5 a20 = new V4(a18).a(executorService, this.f35449a, m52);
                            C11245i c11245i = (C11245i) a18.f();
                            N.a aVar = N.a.f56825b;
                            c11245i.getClass();
                            if (aVar.b()) {
                                c11245i.f57403r = C6991ds0.f47532b;
                            }
                            c11245i.f57397l = C6991ds0.f47532b;
                            new C11109a(a18).a();
                            new C11228h(a18, c11211g2.f57321a, c11211g2.f57322b, a20.f36682e).a().a(executorService);
                            new C10682zz(a13, a19).a(((C4514j) a13.f()).d(), executorService);
                            if (!z10 && !a13.a(new Supplier() {
                                @Override
                                public final Object get() {
                                    Boolean i11;
                                    i11 = R8.i(C4798y.this);
                                    return i11;
                                }
                            })) {
                                throw new AssertionError();
                            }
                        }
                        boolean a21 = C10701c0.a(a13, a17);
                        this.f35449a.d();
                        this.f35449a.d();
                        this.f35449a.b("Run center tasks");
                        if (!z10 && !((C4514j) a13.f()).i()) {
                            throw new AssertionError();
                        }
                        final C4798y<C11245i> M10 = a13.M();
                        this.f35450b.a(M10);
                        new C5252Ha(M10).b(executorService);
                        ZS.a(M10, executorService);
                        if (!z10) {
                            a(((C4514j) a13.f()).d());
                        }
                        if (!z10 && !a13.a(new Supplier() {
                            @Override
                            public final Object get() {
                                Boolean j10;
                                j10 = R8.j(C4798y.this);
                                return j10;
                            }
                        })) {
                            throw new AssertionError();
                        }
                        b(a13, executorService);
                        a13.b().b();
                        new C10707f0(M10).a(executorService, this.f35449a);
                        a13.a(VV.a(M10, executorService));
                        if (this.f35450b.F().f50868d0) {
                            new OV(M10).b(executorService);
                        } else {
                            M10.f().o().b();
                        }
                        M10.f().a(M10);
                        if (!z10) {
                            AbstractC8528n4.a(a13, new EnumC8361m4[0]);
                        }
                        com.android.tools.r8.internal.Q1.a(M10, this.f35449a, executorService);
                        new C5085Ec0(M10).a().a(executorService, this.f35449a);
                        R7.a(M10, this.f35449a, executorService);
                        if (!z10) {
                            AbstractC8528n4.a(a13, new EnumC8361m4[0]);
                        }
                        ZS.b(a13, this.f35449a, executorService);
                        C6507ax0.b(M10, this.f35449a).b(executorService, this.f35449a);
                        ((C4514j) a13.f()).f().a();
                        if (!z10) {
                            a13.b().e();
                        }
                        if (!z10 && !a13.a(new Supplier() {
                            @Override
                            public final Object get() {
                                Boolean c11;
                                c11 = R8.c(C4798y.this);
                                return c11;
                            }
                        })) {
                            throw new AssertionError();
                        }
                        if (this.f35450b.f50673d0) {
                            M10.b(new com.android.tools.r8.ir.optimize.J0(M10).a());
                        }
                        Set p10 = a13.M().f().p();
                        if (!z10) {
                            AbstractC8528n4.a(a13, new EnumC8361m4[0]);
                        }
                        new C10374y70(M10, this.f35449a, a21).b(M10, executorService);
                        if (!z10) {
                            ZS.a(a13);
                        }
                        if (!z10) {
                            AbstractC8528n4.a(a13, EnumC8361m4.f50191b);
                        }
                        a13.b().b();
                        this.f35449a.a("AppliedGraphLens construction", new InterfaceC5930Sr0() {
                            @Override
                            public final void a() {
                                C4798y.this.n();
                            }
                        });
                        this.f35449a.d();
                        if (this.f35450b.e0()) {
                            try {
                                this.f35449a.b("Post optimization code stripping");
                                try {
                                    if (this.f35450b.W()) {
                                        GraphConsumer graphConsumer3 = this.f35450b.f50650W1;
                                        if (a13.G().f56395e.isEmpty()) {
                                            graphConsumer = graphConsumer3;
                                        } else {
                                            graphConsumer = new C11132b5(graphConsumer3);
                                            graphConsumer2 = graphConsumer;
                                            K4 k43 = !this.f35450b.N() ? new K4(a13) : null;
                                            obj = "Could not validate generic signatures";
                                            final com.android.tools.r8.shaking.N a22 = C11178e0.a(a13, executorService, Y5.a((C4798y<? extends C4514j>) a13), graphConsumer, p10, k43);
                                            a13.b(a22.a(a13.G(), executorService, this.f35449a).a());
                                            a13.l();
                                            final EW.a b11 = EW.b(a13);
                                            a13.a(new InterfaceC6160Wr0() {
                                                @Override
                                                public final void accept(Object obj2) {
                                                    R8.this.b(b11, M10, executorService, (C6678bz) obj2);
                                                }
                                            });
                                            if (this.f35450b.W()) {
                                                arrayList = a15;
                                                c4798y = a13;
                                                list = list2;
                                                executorService2 = executorService;
                                                l42 = null;
                                            } else {
                                                C11514y c11514y = (C11514y) a13.a(C11514y.f57988a, new Function() {
                                                    @Override
                                                    public final Object apply(Object obj2) {
                                                        C11514y a23;
                                                        a23 = R8.a(com.android.tools.r8.shaking.N.this, (C5711Oy) obj2);
                                                        return a23;
                                                    }
                                                });
                                                com.android.tools.r8.graph.M3 a23 = com.android.tools.r8.graph.M3.a(a13);
                                                O5 a24 = new V4(M10, c11514y).a(executorService, this.f35449a, new M5().a(p10));
                                                C11245i f11 = M10.f();
                                                N.a aVar2 = N.a.f56826c;
                                                f11.getClass();
                                                if (aVar2.b()) {
                                                    f11.f57403r = C6991ds0.f47532b;
                                                }
                                                f11.f57397l = C6991ds0.f47532b;
                                                C8570nJ c8570nJ6 = this.f35450b;
                                                StringConsumer stringConsumer = c8570nJ6.f50635R1;
                                                if (stringConsumer != null) {
                                                    AbstractC8333lv.a(c8570nJ6.f50691j, stringConsumer);
                                                }
                                                if (!z10) {
                                                    com.android.tools.r8.ir.optimize.W.b(M10);
                                                }
                                                if (!z10) {
                                                    com.android.tools.r8.ir.optimize.W.a(a13);
                                                }
                                                if (!z10) {
                                                    a13.c().a(M10);
                                                }
                                                if (!z10) {
                                                    a13.J();
                                                }
                                                if (!z10) {
                                                    a13.M().f().r();
                                                }
                                                arrayList = a15;
                                                list = list2;
                                                executorService2 = executorService;
                                                a(a13.G(), new Supplier() {
                                                    @Override
                                                    public final Object get() {
                                                        Collection d10;
                                                        d10 = R8.d(C4798y.this);
                                                        return d10;
                                                    }
                                                }, graphConsumer2, a13, a22, false, this.f35450b, this.f35449a, executorService);
                                                c4798y = a13;
                                                l42 = null;
                                                c4798y.a((D4) null);
                                                new M7(M10).a(executorService2, this.f35449a);
                                                new C11228h(c4798y.M(), AbstractC5513Ll0.c(), aVar2, a24.f36682e).a(executorService2);
                                                new C10682zz(c4798y, a23).a(((C4514j) c4798y.f()).d(), executorService2);
                                                if (!z10 && !c4798y.a(new Supplier() {
                                                    @Override
                                                    public final Object get() {
                                                        Boolean e11;
                                                        e11 = R8.e(C4798y.this);
                                                        return e11;
                                                    }
                                                })) {
                                                    throw new AssertionError(obj);
                                                }
                                                new C11363p(M10).a(executorService2);
                                                C7002dw.a(M10, this.f35449a, executorService2);
                                            }
                                            this.f35449a.d();
                                            if (c4798y.E().a0().a()) {
                                                if (c4798y.E().a0().f50801e) {
                                                    c4798y.f38388C.f42927f.a();
                                                }
                                                final C8048kB c8048kB = new C8048kB(c4798y);
                                                InterfaceC6160Wr0 interfaceC6160Wr02 = new InterfaceC6160Wr0() {
                                                    @Override
                                                    public final void accept(Object obj2) {
                                                        R8.this.a(c8048kB, executorService2, (C6845cz) obj2);
                                                    }
                                                };
                                                C5658Oa0 c5658Oa02 = c4798y.f38388C;
                                                if (c5658Oa02 != null && (c6845cz = c5658Oa02.f42925d) != null) {
                                                    interfaceC6160Wr02.accept(c6845cz);
                                                }
                                                InterfaceC6160Wr0 interfaceC6160Wr03 = new InterfaceC6160Wr0() {
                                                    @Override
                                                    public final void accept(Object obj2) {
                                                        R8.this.a(c8048kB, executorService2, (C5711Oy) obj2);
                                                    }
                                                };
                                                C5658Oa0 c5658Oa03 = c4798y.f38388C;
                                                if (c5658Oa03 != null && (c5711Oy = c5658Oa03.f42924c) != null) {
                                                    interfaceC6160Wr03.accept(c5711Oy);
                                                }
                                            }
                                            k42 = k43;
                                        }
                                    } else {
                                        graphConsumer = null;
                                    }
                                    graphConsumer2 = null;
                                    if (!this.f35450b.N()) {
                                    }
                                    obj = "Could not validate generic signatures";
                                    final com.android.tools.r8.shaking.N a222 = C11178e0.a(a13, executorService, Y5.a((C4798y<? extends C4514j>) a13), graphConsumer, p10, k43);
                                    a13.b(a222.a(a13.G(), executorService, this.f35449a).a());
                                    a13.l();
                                    final EW.a b112 = EW.b(a13);
                                    a13.a(new InterfaceC6160Wr0() {
                                        @Override
                                        public final void accept(Object obj2) {
                                            R8.this.b(b112, M10, executorService, (C6678bz) obj2);
                                        }
                                    });
                                    if (this.f35450b.W()) {
                                    }
                                    this.f35449a.d();
                                    if (c4798y.E().a0().a()) {
                                    }
                                    k42 = k43;
                                } catch (Throwable th6) {
                                    this.f35449a.d();
                                    throw th6;
                                }
                            } catch (ExecutionException e11) {
                                e = e11;
                                executionException = e;
                                throw AbstractC8333lv.a(executionException);
                            } catch (Throwable th7) {
                                th = th7;
                                c11662i2 = c11662i;
                                th2 = th;
                                c11662i3 = c11662i2;
                                c11662i3.b(this.f35450b.f50691j);
                                this.f35450b.f0();
                                throw th2;
                            }
                        } else {
                            obj = "Could not validate generic signatures";
                            arrayList = a15;
                            c4798y = a13;
                            list = list2;
                            executorService2 = executorService;
                            l42 = null;
                            k42 = null;
                        }
                        this.f35449a.b("Run postlude");
                        a(c4798y, executorService2);
                        if (!((C4514j) c4798y.f()).a().f().f38454c.isEmpty() && (a10 = C9445sc0.a(c4798y)) != null) {
                            a10.a();
                        }
                        TV a25 = VV.a(c4798y, executorService2);
                        c4798y.a(a25);
                        if (((C4514j) c4798y.f()).i()) {
                            this.f35449a.b("Bridge remover");
                            new C5085Ec0(c4798y.M()).a(executorService2, this.f35449a, a25);
                            this.f35449a.d();
                        } else if (!z10 && this.f35450b.W()) {
                            throw new AssertionError();
                        }
                        c4798y.a(c4798y.o().c(c4798y));
                        c4798y.a(c4798y.t().c(c4798y));
                        new T00(c4798y).b(executorService2, this.f35449a);
                        if (((C4514j) c4798y.f()).i()) {
                            C11617z.c(c4798y.M(), this.f35449a, executorService2);
                        } else {
                            C11617z.b(c4798y, this.f35449a, executorService2);
                        }
                        this.f35449a.b("read -applymapping file");
                        c4798y.D();
                        this.f35449a.d();
                        AbstractC8863p40.a(c4798y, executorService2);
                        if (c4798y.f().i()) {
                            if (this.f35450b.V()) {
                                new C8787of0(c4798y.M()).a(executorService2, this.f35449a);
                            }
                            if (!z10) {
                                C8787of0.a(c4798y.M(), executorService2);
                            }
                        }
                        ZS.b(c4798y, this.f35449a, executorService2);
                        if (c4798y.f38396K.isEmpty()) {
                            if (!z10) {
                                c4798y.b().e();
                            }
                            if (c4798y.f().i()) {
                                C6507ax0.c(c4798y.M(), this.f35449a).b(executorService2, this.f35449a);
                                if (!z10) {
                                    c4798y.b().e();
                                }
                            }
                            com.android.tools.r8.graph.M3 a26 = com.android.tools.r8.graph.M3.a(c4798y);
                            C9881vA.a(c4798y).b(this.f35449a, k42 != null ? k42.a(c4798y.v()) : l42, executorService2);
                            if (!z10) {
                                c4798y.b().e();
                            }
                            if (c4798y.f().i()) {
                                C6507ax0.a(c4798y.M(), this.f35449a).b(executorService2, this.f35449a);
                                if (!z10) {
                                    c4798y.b().e();
                                }
                                new C9642tm0(M10).a(executorService2, this.f35449a);
                                new C10441ya0(M10).a(executorService2, this.f35449a);
                            }
                            m32 = a26;
                        } else {
                            m32 = l42;
                        }
                        if (this.f35450b.B().r()) {
                            this.f35449a.b("apply-mapping");
                            c4798y.a(new com.android.tools.r8.naming.D0(c4798y.M()).a(executorService2, this.f35449a));
                            this.f35449a.d();
                            c4798y.j();
                        } else if (this.f35450b.R()) {
                            this.f35449a.b("Minification");
                            new C10973n0(c4798y.M()).a(executorService2, this.f35449a);
                            this.f35449a.d();
                        }
                        ((C4514j) c4798y.f()).n();
                        this.f35449a.b("MinifyIdentifiers");
                        new com.android.tools.r8.naming.D(c4798y).d(executorService2);
                        this.f35449a.d();
                        if (this.f35450b.f50589C0.f45780d.length > 0) {
                            System.out.println("Finished compilation with method filter: ");
                            this.f35450b.f50589C0.forEach(new Consumer() {
                                @Override
                                public final void accept(Object obj2) {
                                    R8.a((String) obj2);
                                }
                            });
                            c11662i.b(this.f35450b.f50691j);
                            this.f35450b.f0();
                            return;
                        }
                        Object obj2 = obj;
                        if (!z10) {
                            b(c4798y).l();
                        }
                        if (!z10 && !((C4514j) c4798y.f()).d().stream().allMatch(new Predicate() {
                            @Override
                            public final boolean test(Object obj3) {
                                boolean a27;
                                a27 = R8.this.a((com.android.tools.r8.graph.H2) obj3);
                                return a27;
                            }
                        })) {
                            throw new AssertionError();
                        }
                        Consumer consumer = this.f35450b.f50659Z1;
                        if (consumer != null) {
                            consumer.accept(arrayList);
                        }
                        C7037e70.a(c4798y);
                        com.android.tools.r8.naming.O0.a(c4798y);
                        new com.android.tools.r8.internal.Y2(c4798y).a(executorService2);
                        this.f35449a.b("MinifyKotlinMetadata");
                        new com.android.tools.r8.kotlin.Z(c4798y).b(executorService2);
                        this.f35449a.d();
                        if (m32 != 0) {
                            new C10682zz(c4798y, m32).a(((C4514j) c4798y.f()).d(), executorService2);
                        }
                        if (!z10 && !c4798y.a(new Supplier() {
                            @Override
                            public final Object get() {
                                Boolean f12;
                                f12 = R8.this.f(c4798y);
                                return f12;
                            }
                        })) {
                            throw new AssertionError(obj2);
                        }
                        C8570nJ E10 = c4798y.E();
                        if (!E10.x().f45396a.f53764a && E10.f50647V1 != null) {
                            E10.f50599F1.getClass();
                        }
                        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                        C8570nJ c8570nJ7 = this.f35450b;
                        if (c8570nJ7.f50672d != null && c8570nJ7.f50676e != null && !c8570nJ7.f50682g.isOptimizedShrinking()) {
                            C8570nJ c8570nJ8 = this.f35450b;
                            c8570nJ8.f50697l = new Z((DexIndexedConsumer) c8570nJ8.f50697l, concurrentHashMap, "base");
                            if (this.f35450b.I()) {
                                ArrayList arrayList2 = (ArrayList) this.f35450b.u().a();
                                int size = arrayList2.size();
                                int i11 = 0;
                                int i12 = 0;
                                while (i12 < size) {
                                    Object obj3 = arrayList2.get(i12);
                                    i12++;
                                    FeatureSplit featureSplit = (FeatureSplit) obj3;
                                    featureSplit.a(new Z((DexIndexedConsumer) featureSplit.getProgramConsumer(), concurrentHashMap, "feature" + i11));
                                    i11++;
                                }
                            }
                        }
                        boolean z11 = f35448c;
                        if (!z11) {
                            c4798y.K();
                        }
                        this.f35449a.d();
                        ZS.a(c4798y, this.f35449a, executorService2);
                        if (!z11) {
                            c4798y.b().e();
                        }
                        a(list);
                        b((C4798y<?>) c4798y, c11662i, executorService2);
                        C8570nJ c8570nJ9 = this.f35450b;
                        if (c8570nJ9.f50672d != null && c8570nJ9.f50676e != null) {
                            a(concurrentHashMap, c4798y);
                        }
                        if (!z11) {
                            c4798y.q().a(this.f35450b);
                        }
                        this.f35450b.Z();
                        if (this.f35450b.U()) {
                            this.f35449a.e();
                        }
                        c11662i.b(this.f35450b.f50691j);
                        this.f35450b.f0();
                    } catch (Throwable th8) {
                        th3 = th8;
                    }
                } catch (ExecutionException e12) {
                    e = e12;
                }
            } catch (Throwable th9) {
                th = th9;
                c11662i2 = c11662i4;
            }
        } catch (ExecutionException e13) {
            e = e13;
        } catch (Throwable th10) {
            th = th10;
            c11662i2 = c11662i;
        }
    }

    public static void b(C11662i c11662i, C8570nJ c8570nJ, ExecutorService executorService) {
        try {
            c(c11662i, c8570nJ, executorService);
        } finally {
            executorService.shutdown();
        }
    }

    private static C4462g3 b(C4798y c4798y) {
        return c4798y.f().a().a();
    }

    public void b(EW.a aVar, C4798y c4798y, ExecutorService executorService, C6678bz c6678bz) {
        c6678bz.a(aVar, c4798y, executorService, this.f35449a);
    }

    private void b(C4798y c4798y, ExecutorService executorService) {
        if (this.f35450b.f50602G1.isEmpty()) {
            return;
        }
        if (!f35448c && !c4798y.v().j()) {
            throw new AssertionError();
        }
        c4798y.b(((C4514j) c4798y.f()).a(new com.android.tools.r8.shaking.N(c4798y, M70.b(c4798y), executorService, Y5.a((C4798y<? extends C4514j>) c4798y), null, N.a.f56827d, null, null).c(executorService, this.f35449a)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(String[] strArr) {
        final R8Command r8Command = (R8Command) R8Command.parse(strArr, com.android.tools.r8.origin.a.f56150f).build();
        if (r8Command.isPrintHelp()) {
            if (System.getProperty("R8_THROW_EXCEPTION_FOR_TESTING_RETRACE") == null) {
                PrintStream printStream = System.out;
                QC qc2 = C11037o0.f56135b;
                StringBuilder sb2 = new StringBuilder();
                C10656zq0.a(sb2, "Usage: r8 [options] [@<argfile>] <input-files>", " where <input-files> are any combination class, zip, or jar files", " and each <argfile> is a file containing additional arguments (one per line)", " and options are:");
                new ParseFlagPrinter().addFlags(AbstractC7552hC.a(C11037o0.a())).appendLinesToBuilder(sb2);
                printStream.println(sb2.toString());
                return;
            }
            throw new RuntimeException("Intentional exception for testing retrace.");
        }
        if (r8Command.isPrintVersion()) {
            System.out.println("R8 " + Version.getVersionString());
            return;
        }
        final C8570nJ b10 = r8Command.b();
        final ExecutorService a10 = C5467Kr0.a(b10);
        try {
            AbstractC8333lv.a(b10.f50691j, new AbstractC8333lv.a() {
                @Override
                public final void run() {
                    R8.a(R8Command.this, b10, a10);
                }
            });
        } finally {
            a10.shutdown();
        }
    }

    public Boolean a() {
        return Boolean.valueOf(!this.f35450b.f50599F1.f50835O0);
    }

    public static void a(C5711Oy c5711Oy) {
        c5711Oy.a(N.a.f56825b);
    }

    public static C11514y a(com.android.tools.r8.shaking.N n10, C5711Oy c5711Oy) {
        return c5711Oy.a(n10.f56786b);
    }

    public void a(C8048kB c8048kB, ExecutorService executorService, C6845cz c6845cz) {
        c6845cz.a(c8048kB, executorService, this.f35449a);
    }

    public void a(C8048kB c8048kB, ExecutorService executorService, C5711Oy c5711Oy) {
        c5711Oy.a(c8048kB, executorService, this.f35449a);
    }

    public static void a(String str) {
        System.out.println("  - " + str);
    }

    public boolean a(com.android.tools.r8.graph.H2 h22) {
        h22.a(this.f35450b);
        return true;
    }

    private void a(C4798y c4798y, final List list) {
        this.f35449a.b("Read keep specifications");
        try {
            for (AbstractC11112a2 abstractC11112a2 : c4798y.E().f50694k) {
                Objects.requireNonNull(list);
                abstractC11112a2.a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        List.this.add((BN) obj);
                    }
                });
            }
        } catch (ResourceException e10) {
            this.f35450b.f50691j.error(new ExceptionDiagnostic(e10, e10.getOrigin()));
        }
        this.f35449a.d();
    }

    private boolean a(C4798y c4798y, C11662i c11662i, ExecutorService executorService) {
        C8570nJ c8570nJ = this.f35450b;
        if (c8570nJ.f50599F1.f50819G0 || c8570nJ.f50596E1 != null) {
            return true;
        }
        AbstractC7552hC abstractC7552hC = c11662i.f58587a;
        AbstractC8552nC abstractC8552nC = c11662i.f58588b;
        AbstractC7552hC abstractC7552hC2 = c11662i.f58589c;
        AbstractC7552hC abstractC7552hC3 = c11662i.f58590d;
        AbstractC7552hC abstractC7552hC4 = c11662i.f58591e;
        InterfaceC11677v0 interfaceC11677v0 = c11662i.f58592f;
        InterfaceC11677v0.a aVar = c11662i.f58593g;
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        C4303c c4303c = new C4303c(new C11662i(abstractC7552hC, abstractC8552nC, abstractC7552hC2, abstractC7552hC3, abstractC7552hC4, interfaceC11677v0, aVar, c6190Xe0, c6190Xe0), this.f35450b, this.f35449a);
        C4765w4 a10 = c4303c.a(c4303c.f35826d.i(), executorService, new C8494mt());
        if (!f35448c) {
            c4798y.v().a(c4798y, a10);
        }
        return true;
    }

    private void a(List list) {
        if (this.f35450b.f50641T1 == null || list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            List<String> c10 = C10656zq0.c(((BN) it.next()).toString());
            StringBuilder sb2 = new StringBuilder("# Start of content from keep annotations\n");
            for (String str : c10) {
                sb2.append("# ");
                sb2.append(str);
                sb2.append("\n");
            }
            sb2.append("# End of content from keep annotations\n");
            C8570nJ c8570nJ = this.f35450b;
            AbstractC8333lv.a(c8570nJ.f50691j, c8570nJ.f50641T1, sb2.toString());
        }
    }

    private void a(ConcurrentHashMap concurrentHashMap, C4798y c4798y) {
        InterfaceC5976Tl0 c6021Uf0;
        GR c10;
        C5094Ef0 c5094Ef0 = this.f35450b.f50691j;
        try {
            int i10 = 0;
            if (c4798y.E().S()) {
                c10 = c4798y.f38400O.d();
            } else {
                final ER er = new ER();
                concurrentHashMap.forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        ER.this.a((String) obj, (byte[]) obj2);
                    }
                });
                a(er, c5094Ef0, this.f35450b.f50672d, FeatureSplit.BASE);
                if (this.f35450b.I()) {
                    ArrayList arrayList = this.f35450b.f50718s.f43761a;
                    int size = arrayList.size();
                    int i11 = 0;
                    while (i11 < size) {
                        Object obj = arrayList.get(i11);
                        i11++;
                        FeatureSplit featureSplit = (FeatureSplit) obj;
                        if (featureSplit.getAndroidResourceProvider() != null) {
                            a(er, c5094Ef0, featureSplit.getAndroidResourceProvider(), featureSplit);
                        }
                    }
                }
                C8570nJ c8570nJ = this.f35450b;
                List list = c8570nJ.f50679f;
                if (list != null) {
                    er.f39862g = list;
                }
                StringConsumer debugConsumer = c8570nJ.f50682g.getDebugConsumer();
                if (debugConsumer == null) {
                    c6021Uf0 = UZ.f44793a;
                } else {
                    c6021Uf0 = new C6021Uf0(debugConsumer, c5094Ef0);
                }
                er.f39863h = c6021Uf0;
                c10 = er.a().c();
            }
            C8570nJ c8570nJ2 = this.f35450b;
            a(c5094Ef0, c10, c8570nJ2.f50672d, c8570nJ2.f50676e, FeatureSplit.BASE);
            if (this.f35450b.I()) {
                ArrayList arrayList2 = this.f35450b.f50718s.f43761a;
                int size2 = arrayList2.size();
                while (i10 < size2) {
                    Object obj2 = arrayList2.get(i10);
                    i10++;
                    FeatureSplit featureSplit2 = (FeatureSplit) obj2;
                    if (featureSplit2.getAndroidResourceProvider() != null) {
                        a(c5094Ef0, c10, featureSplit2.getAndroidResourceProvider(), featureSplit2.getAndroidResourceConsumer(), featureSplit2);
                    }
                }
            }
        } catch (ResourceException e10) {
            e = e10;
            c5094Ef0.error(new ExceptionDiagnostic(e));
        } catch (IOException e11) {
            e = e11;
            c5094Ef0.error(new ExceptionDiagnostic(e));
        } catch (ParserConfigurationException e12) {
            e = e12;
            c5094Ef0.error(new ExceptionDiagnostic(e));
        } catch (SAXException e13) {
            e = e13;
            c5094Ef0.error(new ExceptionDiagnostic(e));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void a(C5094Ef0 c5094Ef0, GR gr, AndroidResourceProvider androidResourceProvider, AndroidResourceConsumer androidResourceConsumer, FeatureSplit featureSplit) {
        for (AndroidResourceInput androidResourceInput : androidResourceProvider.getAndroidResources()) {
            int i10 = AbstractC4282a0.f35582a[androidResourceInput.getKind().ordinal()];
            if (i10 == 1 || i10 == 2) {
                androidResourceConsumer.accept(new C4297d0(androidResourceInput, c5094Ef0), c5094Ef0);
            } else if (i10 == 3) {
                androidResourceConsumer.accept(new C4292c0(androidResourceInput, c5094Ef0, ((C6795ci0) gr.f40484b.get(featureSplit)).toByteArray()), c5094Ef0);
            } else if (i10 == 5 || i10 == 6) {
                if (gr.f40483a.contains(androidResourceInput.getPath().location())) {
                    androidResourceConsumer.accept(new C4297d0(androidResourceInput, c5094Ef0), c5094Ef0);
                }
            }
        }
        androidResourceConsumer.finished(c5094Ef0);
    }

    private static void a(ER er, C5094Ef0 c5094Ef0, AndroidResourceProvider androidResourceProvider, FeatureSplit featureSplit) {
        byte[] readAllBytes;
        for (AndroidResourceInput androidResourceInput : androidResourceProvider.getAndroidResources()) {
            try {
                readAllBytes = androidResourceInput.getByteStream().readAllBytes();
                String location = androidResourceInput.getPath().location();
                int i10 = AbstractC4282a0.f35582a[androidResourceInput.getKind().ordinal()];
                if (i10 == 1) {
                    er.f39860e.add(new FR(location, readAllBytes));
                } else if (i10 == 3) {
                    er.f39861f.put(new FR(location, readAllBytes), featureSplit);
                    try {
                        System.currentTimeMillis();
                    } catch (MJ e10) {
                        throw new RuntimeException(e10);
                        break;
                    }
                } else if (i10 == 4) {
                    er.f39859d.add(readAllBytes);
                } else if (i10 == 5) {
                    FR fr = (FR) er.f39857b.get(location);
                    if (fr != null) {
                        fr.f40199c = true;
                    } else {
                        er.f39857b.put(location, new FR(location, readAllBytes));
                    }
                } else if (i10 == 6) {
                    FR fr2 = (FR) er.f39858c.get(location);
                    if (fr2 != null) {
                        fr2.f40199c = true;
                    } else {
                        er.f39858c.put(location, new FR(location, readAllBytes));
                    }
                }
            } catch (IOException e11) {
                c5094Ef0.error(new ExceptionDiagnostic(e11, androidResourceInput.getOrigin()));
            }
        }
    }

    private static boolean a(C4798y c4798y) {
        com.android.tools.r8.internal.H2 a10 = c4798y.E().a();
        if (a10.f40654a && a10.f40660g) {
            Iterator it = ((C4514j) c4798y.f()).e().iterator();
            while (it.hasNext()) {
                ((com.android.tools.r8.graph.H2) it.next()).k(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        R8.a((G5) obj);
                    }
                });
            }
        }
        return true;
    }

    public static void a(G5 g52) {
        if (!f35448c && g52.d().z0().x()) {
            throw new AssertionError((Object) "Every member should have been analyzed");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(final C4798y c4798y, ExecutorService executorService) {
        GraphConsumer graphConsumer;
        GraphConsumer graphConsumer2;
        if (this.f35450b.f50602G1.isEmpty()) {
            return;
        }
        if (!f35448c && c4798y.f38423p == null) {
            throw new AssertionError();
        }
        GraphConsumer graphConsumer3 = this.f35450b.f50653X1;
        if (c4798y.f38423p.f56395e.isEmpty()) {
            graphConsumer = graphConsumer3;
            graphConsumer2 = null;
        } else {
            graphConsumer = new C11132b5(graphConsumer3);
            graphConsumer2 = graphConsumer;
        }
        com.android.tools.r8.shaking.N n10 = new com.android.tools.r8.shaking.N(c4798y, M70.b(c4798y), executorService, Y5.a((C4798y<? extends C4514j>) c4798y), graphConsumer, N.a.f56828e, null, null);
        final C11349o2 c10 = n10.c(executorService, this.f35449a);
        c4798y.b(((C4514j) c4798y.f()).a(c10));
        a(c4798y.f38423p, new Supplier() {
            @Override
            public final Object get() {
                Collection a10;
                a10 = R8.a(C11349o2.this, c4798y);
                return a10;
            }
        }, graphConsumer2, c4798y, n10, true, this.f35450b, this.f35449a, executorService);
    }

    public static Collection a(C11349o2 c11349o2, final C4798y c4798y) {
        final ArrayList arrayList = new ArrayList();
        c11349o2.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                R8.a(C4798y.this, arrayList, (com.android.tools.r8.graph.M2) obj);
            }
        });
        return arrayList;
    }

    public static void a(C4798y c4798y, ArrayList arrayList, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = c4798y.g(m22);
        if (!f35448c && !g10.e0()) {
            throw new AssertionError();
        }
        arrayList.add(g10.d0());
    }

    private C4798y a(C11211g c11211g, final ExecutorService executorService, C4798y c4798y, M70 m70, Y5 y52, List list) {
        final EW.a aVar;
        this.f35449a.b("Set up enqueuer");
        com.android.tools.r8.shaking.N a10 = C11178e0.a(c4798y, m70, executorService, y52);
        a10.getClass();
        boolean z10 = com.android.tools.r8.shaking.N.f56757p0;
        if (!z10 && !a10.f56786b.b()) {
            throw new AssertionError();
        }
        if (!z10 && list == null) {
            throw new AssertionError();
        }
        a10.f56816r = list;
        a10.f56808m = c11211g;
        this.f35449a.d();
        this.f35449a.b("Trace application");
        C11229h0 a11 = a10.a(c4798y.G(), executorService, this.f35449a);
        if (!f35448c) {
            m70.c();
        }
        this.f35449a.d();
        this.f35449a.b("Finalize enqueuer result");
        final C4798y b10 = c4798y.b(a11.a());
        if (C8570nJ.b()) {
            InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                @Override
                public final void accept(Object obj) {
                    R8.a(C4798y.this, (C5658Oa0) obj);
                }
            };
            C5658Oa0 c5658Oa0 = b10.f38388C;
            if (c5658Oa0 != null) {
                interfaceC6160Wr0.accept(c5658Oa0);
            }
        }
        boolean z11 = EW.f39887a;
        if (!c4798y.m()) {
            aVar = EW.a(c4798y);
        } else {
            if (!z11 && !c4798y.H().b()) {
                throw new AssertionError();
            }
            aVar = new EW.a(FW.f40236b);
        }
        c4798y.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                R8.this.a(aVar, b10, executorService, (C6678bz) obj);
            }
        });
        this.f35449a.d();
        return b10;
    }

    public static void a(C4798y c4798y, C5658Oa0 c5658Oa0) {
        Set set = ((C11245i) c4798y.f()).f57395j;
        c5658Oa0.getClass();
        if (C8570nJ.b()) {
            c5658Oa0.f42930i = set;
            return;
        }
        throw new C5417Jv0();
    }

    public void a(EW.a aVar, C4798y c4798y, ExecutorService executorService, C6678bz c6678bz) {
        c6678bz.a(aVar, c4798y, executorService, this.f35449a);
    }

    public static void a(D4 d42, Supplier supplier, C11132b5 c11132b5, C4798y c4798y, com.android.tools.r8.shaking.N n10, boolean z10, C8570nJ c8570nJ, C8659ns0 c8659ns0, ExecutorService executorService) {
        com.android.tools.r8.shaking.F f10;
        C11132b5 c11132b52;
        com.android.tools.r8.shaking.N n11;
        if (c11132b5 != null) {
            AbstractC4895Av0 it = d42.f56395e.iterator();
            while (it.hasNext()) {
                c11132b5.a(n10.f56795f0.a((com.android.tools.r8.graph.J2) it.next()), System.out);
            }
        }
        if (z10) {
            f10 = new com.android.tools.r8.shaking.E(c4798y, c4798y.f38423p.f56422a.a(C11144c0.f57206a));
        } else {
            f10 = new com.android.tools.r8.shaking.F(c4798y);
        }
        ArrayList a10 = f10.a((Collection) supplier.get(), executorService);
        if (c4798y.E().f50599F1.f50917y0) {
            if (!f35448c && a10.isEmpty()) {
                throw new AssertionError();
            }
            return;
        }
        if (a10.isEmpty()) {
            return;
        }
        if (c11132b5 == null) {
            c11132b52 = new C11132b5(null);
            Y5 a11 = Y5.a((C4798y<? extends C4514j>) c4798y);
            if (z10) {
                n11 = new com.android.tools.r8.shaking.N(c4798y, M70.b(c4798y), executorService, a11, c11132b52, N.a.f56828e, null, null);
                n11.c(executorService, c8659ns0);
            } else {
                com.android.tools.r8.shaking.N n12 = new com.android.tools.r8.shaking.N(c4798y, M70.b(c4798y), executorService, a11, c11132b52, N.a.f56830g, null, null);
                n12.a(d42, executorService, c8659ns0);
                n11 = n12;
            }
        } else {
            c11132b52 = c11132b5;
            n11 = n10;
        }
        c8570nJ.f50691j.error(new com.android.tools.r8.errors.c().a(a10, n11.f56795f0, c11132b52).a());
        c8570nJ.f50691j.a();
    }

    private static void a(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            for (C4516j1 c4516j1 : ((com.android.tools.r8.graph.H2) it.next()).z1()) {
                if (c4516j1.Q0() != null && !f35448c) {
                    c4516j1.Q0().D0();
                }
            }
        }
    }

    public static void a(R8Command r8Command, C8570nJ c8570nJ, ExecutorService executorService) {
        c(r8Command.a(), c8570nJ, executorService);
    }
}
