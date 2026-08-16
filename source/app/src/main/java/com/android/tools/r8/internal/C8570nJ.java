package com.android.tools.r8.internal;

import android.security.keystore.KeyProperties;
import com.android.tools.r8.AndroidResourceConsumer;
import com.android.tools.r8.AndroidResourceProvider;
import com.android.tools.r8.CancelCompilationChecker;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.CompilationMode;
import com.android.tools.r8.DataResourceConsumer;
import com.android.tools.r8.DesugarGraphConsumer;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DexIndexedConsumer;
import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.MapIdProvider;
import com.android.tools.r8.ProgramConsumer;
import com.android.tools.r8.ResourceShrinkerConfiguration;
import com.android.tools.r8.SourceFileProvider;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.SyntheticInfoConsumer;
import com.android.tools.r8.Version;
import com.android.tools.r8.dex.InterfaceC4302b;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.errors.DuplicateTypeInProgramAndLibraryDiagnostic;
import com.android.tools.r8.errors.IncompleteNestNestDesugarDiagnosic;
import com.android.tools.r8.errors.InvalidLibrarySuperclassDiagnostic;
import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4693s8;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11350o3;
import com.android.tools.r8.shaking.N;
import com.android.tools.r8.threading.ThreadingModule;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class C8570nJ implements com.android.tools.r8.shaking.Q0 {

    public static final boolean f50578e2;

    public static final C5313Ib f50579f2;

    public static final int f50580g2;

    public static final boolean f50581h2 = true;

    public final C9237rJ f50582A;

    public final QC f50583A0;

    public C9362s4 f50584A1;

    public boolean f50585B;

    public final QC f50586B0;

    public C8981po0 f50587B1;

    public final boolean f50588C;

    public final C6190Xe0 f50589C0;

    public final HE f50590C1;

    public boolean f50591D;

    public C2 f50592D0;

    public C7608hb0 f50593D1;

    public boolean f50594E;

    public boolean f50595E0;

    public AbstractC9109qb0 f50596E1;

    public boolean f50597F;

    public boolean f50598F0;

    public final p f50599F1;

    public boolean f50600G;

    public boolean f50601G0;

    public List f50602G1;

    public boolean f50603H;

    public boolean f50604H0;

    public boolean f50605H1;

    public boolean f50606I;

    public boolean f50607I0;

    public boolean f50608I1;

    public boolean f50609J;

    public boolean f50610J0;

    public i f50611J1;

    public boolean f50612K;

    public boolean f50613K0;

    public final HashMap f50614K1;

    public boolean f50615L;

    public f f50616L0;

    public final HashMap f50617L1;

    public boolean f50618M;

    public boolean f50619M0;

    public final HashMap f50620M1;

    public final boolean f50621N;

    public final boolean f50622N0;

    public ConcurrentHashMap f50623N1;

    public boolean f50624O;

    public boolean f50625O0;

    public boolean f50626O1;

    public final boolean f50627P;

    public boolean f50628P0;

    public StringConsumer f50629P1;

    public boolean f50630Q;

    public Z30 f50631Q0;

    public com.android.tools.r8.naming.Q f50632Q1;

    public boolean f50633R;

    public Z30 f50634R0;

    public StringConsumer f50635R1;

    public boolean f50636S;

    public boolean f50637S0;

    public StringConsumer f50638S1;

    public boolean f50639T;

    public boolean f50640T0;

    public StringConsumer f50641T1;

    public BiPredicate f50642U;

    public boolean f50643U0;

    public boolean f50644U1;

    public boolean f50645V;

    public final boolean f50646V0;

    public StringConsumer f50647V1;

    public boolean f50648W;

    public final boolean f50649W0;

    public GraphConsumer f50650W1;

    public final int f50651X;

    public boolean f50652X0;

    public GraphConsumer f50653X1;

    public final Thread f50654Y;

    public boolean f50655Y0;

    public DesugarGraphConsumer f50656Y1;

    public boolean f50657Z;

    public boolean f50658Z0;

    public Consumer f50659Z1;

    public final C4724u1 f50660a;

    public boolean f50661a0;

    public boolean f50662a1;

    public MapIdProvider f50663a2;

    public int f50665b0;

    public boolean f50666b1;

    public SourceFileProvider f50667b2;

    public boolean f50669c0;

    public boolean f50670c1;

    public final Set f50671c2;

    public boolean f50673d0;

    public boolean f50674d1;

    public final Set f50675d2;

    public final l f50677e0;

    public boolean f50678e1;

    public boolean f50680f0;

    public A4 f50681f1;

    public boolean f50683g0;

    public final boolean f50684g1;

    public boolean f50686h0;

    public boolean f50687h1;

    public final C11350o3 f50688i;

    public final boolean f50689i0;

    public boolean f50690i1;

    public final C5094Ef0 f50691j;

    public boolean f50692j0;

    public final U1 f50693j1;

    public List f50694k;

    public int f50695k0;

    public final o f50696k1;

    public ProgramConsumer f50697l;

    public boolean f50698l0;

    public final b f50699l1;

    public InterfaceC4302b f50700m;

    public boolean f50701m0;

    public final c f50702m1;

    public GlobalSyntheticsConsumer f50703n;

    public boolean f50704n0;

    public final d f50705n1;

    public SyntheticInfoConsumer f50706o;

    public boolean f50707o0;

    public final h f50708o1;

    public Consumer f50709p;

    public final boolean f50710p0;

    public final C10310xm0 f50711p1;

    public Consumer f50712q;

    public final boolean f50713q0;

    public final g f50714q1;

    public DataResourceConsumer f50715r;

    public boolean f50716r0;

    public final C7006dx0 f50717r1;

    public C5821Qv f50718s;

    public boolean f50719s0;

    public final k f50720s1;

    public List f50721t;

    public boolean f50722t0;

    public final n f50723t1;

    public ThreadingModule f50724u;

    public final boolean f50725u0;

    public final C4911Bc0 f50726u1;

    public boolean f50727v;

    public AbstractC9162qt f50728v0;

    public final C9071qJ f50729v1;

    public final boolean f50730w;

    public C9328rt f50731w0;

    public final H2 f50732w1;

    public boolean f50733x;

    public W.b f50734x0;

    public final e f50735x1;

    public boolean f50736y;

    public boolean f50737y0;

    public final WR f50738y1;

    public final boolean f50739z;

    public com.android.tools.r8.dex.W f50740z0;

    public final j f50741z1;

    public final AtomicBoolean f50664b = new AtomicBoolean(false);

    public CancelCompilationChecker f50668c = null;

    public AndroidResourceProvider f50672d = null;

    public AndroidResourceConsumer f50676e = null;

    public List f50679f = null;

    public ResourceShrinkerConfiguration f50682g = ResourceShrinkerConfiguration.DEFAULT_CONFIGURATION;

    public long f50685h = -1;

    public interface a {
        boolean a(C4798y<?> c4798y, com.android.tools.r8.graph.H5 h52, int i10);
    }

    public class b {

        public static final boolean f50742f = true;

        public boolean f50743a = true;

        public final boolean f50744b = AbstractC9824ur0.a("com.android.tools.r8.enableComposableArgumentRemoval");

        public boolean f50745c = true;

        public boolean f50746d = false;

        public b() {
        }

        public void a() {
            this.f50743a = false;
        }

        public b b(boolean z10) {
            if (!z10) {
                a();
                return this;
            }
            if (!f50742f) {
                if (!((C8570nJ.this.T() && C8570nJ.this.W()) ? this.f50743a : false)) {
                    throw new AssertionError();
                }
            }
            return this;
        }

        public b c(boolean z10) {
            this.f50746d = z10;
            return this;
        }

        public b a(boolean z10) {
            this.f50745c = z10;
            return this;
        }
    }

    public static class c {

        public boolean f50748a = true;

        public boolean f50749b = false;

        public c a(boolean z10) {
            this.f50748a = z10;
            return this;
        }

        public c b(boolean z10) {
            this.f50749b = z10;
            return this;
        }
    }

    public class d {

        public static final boolean f50750c = true;

        public int f50751a = -1;

        public d() {
        }
    }

    public static class e {

        public final boolean f50753a;

        public final boolean f50754b;

        public boolean f50755c;

        public final boolean f50756d;

        public e() {
            this.f50753a = System.getProperty("com.android.tools.r8.sortMethodsOnCfWriting") != null;
            this.f50754b = System.getProperty("com.android.tools.r8.allowAllDesugaredInput") != null;
            this.f50755c = System.getProperty("com.android.tools.r8.noCfMarkerForDesugaredCode") != null;
            this.f50756d = System.getProperty("com.android.tools.r8.lambdaClassFieldsNotFinal") == null;
        }
    }

    public enum f {
        f50757b,
        f50758c;

        f() {
        }

        public final boolean a() {
            return this == f50757b;
        }

        public final boolean b() {
            return this == f50758c;
        }
    }

    public class g {

        public boolean f50760a;

        public boolean f50761b;

        public boolean f50762c;

        public boolean f50763d;

        public boolean f50764e;

        public boolean f50765f;

        public g() {
            this.f50760a = System.getProperty("com.android.tools.r8.disableHorizontalClassMerging") == null;
            this.f50761b = true;
            this.f50762c = System.getProperty("com.android.tools.r8.enableHorizontalInterfaceMerging") != null;
            this.f50763d = System.getProperty("com.android.tools.r8.enableSameFilePolicy") != null;
            this.f50764e = true;
            this.f50765f = false;
        }

        public void a() {
            this.f50760a = false;
        }

        public void b() {
            this.f50764e = false;
        }

        public void c() {
            this.f50760a = true;
        }

        public int d() {
            return 30;
        }

        public final boolean e() {
            return (!this.f50765f && C8570nJ.this.T() && C8570nJ.this.W()) ? false : true;
        }

        public void f() {
            this.f50761b = true;
        }

        public void g() {
            this.f50762c = true;
        }

        public void h() {
            this.f50765f = true;
        }

        public void a(boolean z10) {
            this.f50760a = z10;
        }

        public void b(boolean z10) {
            this.f50762c = z10;
        }

        public void c(boolean z10) {
            this.f50763d = z10;
        }

        public final boolean a(int i10) {
            if (this.f50760a) {
                C8570nJ c8570nJ = C8570nJ.this;
                if (!c8570nJ.f50690i1 && !c8570nJ.f50595E0) {
                    if (i10 != 0) {
                        return i10 != 1 || (c8570nJ.T() && C8570nJ.this.W());
                    }
                    throw null;
                }
            }
            return false;
        }
    }

    public static class h {

        public boolean f50767a = true;

        public boolean f50768b = AbstractC9824ur0.a("com.android.tools.r8.enableConstructorInliningWithFinalFields", false);

        public boolean f50769c = !AbstractC9824ur0.a("com.android.tools.r8.disableinlining");

        public int f50770d;

        public boolean f50771e;

        public int[] f50772f;

        public int f50773g;

        public int f50774h;

        public final int f50775i;

        public boolean f50776j;

        public boolean f50777k;

        public final boolean f50778l;

        public a f50779m;

        public final C8570nJ f50780n;

        public h(C8570nJ c8570nJ) {
            String property = Version.isDevelopmentVersion() ? System.getProperty("com.android.tools.r8.inliningInstructionLimit") : null;
            this.f50770d = property != null ? Integer.parseInt(property) : -1;
            this.f50771e = true;
            this.f50772f = new int[]{Integer.MAX_VALUE, 28, 16, 12, 10};
            this.f50773g = 1500;
            this.f50774h = 4;
            this.f50775i = 15;
            this.f50776j = true;
            this.f50777k = true;
            this.f50778l = true;
            this.f50779m = null;
            this.f50780n = c8570nJ;
        }

        public static void a(C8570nJ c8570nJ) {
            c8570nJ.L().f50769c = false;
        }

        public static void b(C8570nJ c8570nJ) {
            p pVar = c8570nJ.f50599F1;
            int i10 = QC.f43505c;
            pVar.f50903r0 = C7119ef0.f47742j;
        }

        public void a(boolean z10) {
            this.f50767a = z10;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class i {

        public static final i f50781b = new i(0, "OFF");

        public static final i f50782c = new i(1, "ON");

        public i(int i10, String str) {
        }
    }

    public static class j {

        public boolean f50783a = false;

        public final boolean f50784b = AbstractC9824ur0.a("com.android.tools.r8.allowemptymappedranges");

        public final boolean f50785c = true;
    }

    public static class k {

        public static final boolean f50786c = true;

        public boolean f50787a = true;

        public final ArrayList f50788b = new ArrayList();

        public static boolean b(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0, com.android.tools.r8.graph.E0 e02) {
            return true;
        }

        public void a() {
            this.f50787a = false;
        }

        public void c() {
            if (!f50786c && this.f50787a) {
                throw new AssertionError();
            }
            this.f50788b.add(new InterfaceC9404sJ() {
                @Override
                public final boolean a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0, com.android.tools.r8.graph.E0 e02) {
                    boolean a10;
                    a10 = abstractC8999pu0.a(c4798y);
                    return a10;
                }
            });
        }

        public void d() {
            if (!f50786c && this.f50787a) {
                throw new AssertionError();
            }
            this.f50788b.add(new InterfaceC9404sJ() {
                @Override
                public final boolean a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0, com.android.tools.r8.graph.E0 e02) {
                    return C8570nJ.k.d(c4798y, abstractC8999pu0, e02);
                }
            });
        }

        public k a(final ClassReference classReference) {
            if (!f50786c && this.f50787a) {
                throw new AssertionError();
            }
            this.f50788b.add(new InterfaceC9404sJ() {
                @Override
                public final boolean a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0, com.android.tools.r8.graph.E0 e02) {
                    boolean equals;
                    equals = e02.b1().equals(ClassReference.this.getTypeName());
                    return equals;
                }
            });
            return this;
        }

        public void b() {
            if (!f50786c && this.f50787a) {
                throw new AssertionError();
            }
            this.f50788b.add(new InterfaceC9404sJ() {
                @Override
                public final boolean a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0, com.android.tools.r8.graph.E0 e02) {
                    return C8570nJ.k.b(c4798y, abstractC8999pu0, e02);
                }
            });
        }

        public static boolean d(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0, com.android.tools.r8.graph.E0 e02) {
            return abstractC8999pu0.s() && abstractC8999pu0.b().E().D0().equals("java.util.zip.ZipFile") && e02.b1().equals("java.lang.AutoCloseable");
        }

        public final boolean a(final C4798y c4798y, final AbstractC8999pu0 abstractC8999pu0, final com.android.tools.r8.graph.E0 e02) {
            return this.f50787a || this.f50788b.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean a10;
                    a10 = ((InterfaceC9404sJ) obj).a(C4798y.this, abstractC8999pu0, e02);
                    return a10;
                }
            });
        }
    }

    public static class l {

        public boolean f50789a = true;

        public int f50790b = 3;

        public int f50791c = 99;

        public int f50792d = 20;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class m {

        public static final m f50793b = new m(0, KeyProperties.DIGEST_NONE);

        public static final m f50794c = new m(1, "MINIFICATION");

        public static final m f50795d = new m(2, "REPACKAGE");

        public static final m f50796e = new m(3, "FLATTEN");

        public m(int i10, String str) {
        }
    }

    public static class n {

        public boolean f50797a = false;

        public boolean f50798b = false;

        public boolean f50799c = false;

        public boolean f50800d = false;

        public boolean f50801e = false;

        public final boolean a() {
            return this.f50797a || this.f50798b || this.f50799c || this.f50801e;
        }
    }

    public class o {

        public static final boolean f50802c = true;

        public int f50803a = 239;

        public o() {
        }
    }

    public static class p {

        public static final boolean f50805k1 = true;

        public Function<List<AbstractC9369s60>, List<AbstractC9369s60>> f50806A;

        public boolean f50807A0;

        public InterfaceC7495gt0<C4798y<?>, Iterable<com.android.tools.r8.graph.H2>, com.android.tools.r8.graph.H2, com.android.tools.r8.graph.H2> f50808B;

        public boolean f50809B0;

        public BiConsumer<C4724u1, AbstractC10992r0> f50810C;

        public boolean f50811C0;

        public BiConsumer<C4724u1, C9788uf0> f50812D;

        public boolean f50813D0;

        public BiConsumer<C4724u1, C8664nu> f50814E;

        public int f50815E0;

        public BiConsumer<C4724u1, C8674nx0> f50816F;

        public boolean f50817F0;

        public Consumer<Deque<AbstractC8374m80>> f50818G;

        public boolean f50819G0;

        public Consumer<com.android.tools.r8.graph.H2> f50820H;

        public final boolean f50821H0;

        public boolean f50822I;

        public boolean f50823I0;

        public boolean f50824J;

        public boolean f50825J0;

        public boolean f50826K;

        public Set<String> f50827K0;

        public boolean f50828L;

        public boolean f50829L0;

        public boolean f50830M;

        public final boolean f50831M0;

        public final boolean f50832N;

        public final boolean f50833N0;

        public boolean f50834O;

        public boolean f50835O0;

        public boolean f50836P;

        public boolean f50837P0;

        public boolean f50838Q;

        public boolean f50839Q0;

        public boolean f50840R;

        public boolean f50841R0;

        public boolean f50842S;

        public boolean f50843S0;

        public boolean f50844T;

        public boolean f50845T0;

        public boolean f50846U;

        public boolean f50847U0;

        public boolean f50848V;

        public boolean f50849V0;

        public final boolean f50850W;

        public boolean f50851W0;

        public boolean f50852X;

        public boolean f50853X0;

        public boolean f50854Y;

        public int f50855Y0;

        public boolean f50856Z;

        public a f50857Z0;

        public boolean f50858a;

        public final boolean f50859a0;

        public Runnable f50860a1;

        public boolean f50861b;

        public boolean f50862b0;

        public boolean f50863b1;

        public boolean f50864c;

        public final boolean f50865c0;

        public b f50866c1;

        public boolean f50867d;

        public final boolean f50868d0;

        public Consumer<com.android.tools.r8.graph.H5> f50869d1;

        public boolean f50870e;

        public boolean f50871e0;

        public Predicate<com.android.tools.r8.graph.A2> f50872e1;

        public boolean f50873f;

        public boolean f50874f0;

        public boolean f50875f1;

        public boolean f50876g;

        public boolean f50877g0;

        public boolean f50878g1;

        public boolean f50879h;

        public boolean f50880h0;

        public final boolean f50881h1;

        public boolean f50882i;

        public boolean f50883i0;

        public boolean f50884i1;

        public C5629Nm f50885j;

        public boolean f50886j0;

        public int f50887j1;

        public boolean f50888k;

        public boolean f50889k0;

        public boolean f50890l;

        public boolean f50891l0;

        public boolean f50892m;

        public boolean f50893m0;

        public final boolean f50894n;

        public boolean f50895n0;

        public boolean f50896o;

        public boolean f50897o0;

        public boolean f50898p;

        public boolean f50899p0;

        public final boolean f50900q;

        public final int f50901q0;

        public InterfaceC9359s3 f50902r;

        public Set<com.android.tools.r8.ir.optimize.U> f50903r0;

        public Predicate<com.android.tools.r8.graph.H2> f50904s;

        public boolean f50905s0;

        public byte[] f50906t;

        public boolean f50907t0;

        public final InterfaceC8883pB f50908u;

        public boolean f50909u0;

        public BiFunction f50910v;

        public BiConsumer<C7215fB, C4798y<?>> f50911v0;

        public BiConsumer<C11245i, N.a> f50912w;

        public Consumer<C7215fB> f50913w0;

        public Consumer<String> f50914x;

        public int f50915x0;

        public final Function f50916y;

        public boolean f50917y0;

        public BiConsumer<C4798y<?>, CA> f50918z;

        public boolean f50919z0;

        public static class b {

            public int f50921a = 0;

            public int f50922b = 0;
        }

        public p() {
            this.f50858a = System.getProperty("com.android.tools.r8.enableKeepAnnotations") != null;
            this.f50861b = false;
            this.f50864c = false;
            this.f50867d = false;
            this.f50887j1 = 1;
            this.f50870e = false;
            this.f50873f = true;
            this.f50876g = false;
            this.f50879h = false;
            this.f50882i = false;
            this.f50885j = null;
            this.f50888k = false;
            this.f50890l = System.getProperty("com.android.tools.r8.dexVersion40ForApiLevel30") != null;
            this.f50892m = System.getProperty("com.android.tools.r8.dexContainerExperiment") != null;
            this.f50894n = System.getProperty("com.android.tools.r8.nullOutDebugInfo") != null;
            this.f50896o = true;
            this.f50898p = false;
            this.f50900q = System.getProperty("com.android.tools.r8.testing.forceThrowInConvert") != null;
            this.f50902r = new C9026q3();
            this.f50904s = EnumC6871d70.f47286b;
            this.f50906t = null;
            this.f50908u = (!C8570nJ.b() || C8570nJ.f50578e2) ? C8549nB.f50549a : C8716oB.f51190a;
            this.f50910v = new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return C8570nJ.p.a((com.android.tools.r8.dex.Y) obj, (com.android.tools.r8.dex.t0) obj2);
                }
            };
            this.f50912w = null;
            this.f50914x = null;
            this.f50916y = new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new C8286lf0((C4798y) obj);
                }
            };
            this.f50918z = C6628bi.a();
            this.f50806A = Function.identity();
            this.f50808B = new InterfaceC7495gt0() {
                @Override
                public final Object a(Object obj, Object obj2, Object obj3) {
                    return C8570nJ.p.a((C4798y) obj, (Iterable) obj2, (com.android.tools.r8.graph.H2) obj3);
                }
            };
            this.f50810C = C6628bi.a();
            this.f50812D = C6628bi.a();
            this.f50814E = C6628bi.a();
            this.f50816F = C6628bi.a();
            this.f50818G = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8570nJ.p.a((Deque) obj);
                }
            };
            this.f50820H = null;
            this.f50822I = true;
            this.f50824J = AbstractC9824ur0.a("com.android.tools.r8.allowCodeReplacement", true);
            this.f50826K = false;
            this.f50828L = true;
            this.f50830M = true;
            this.f50832N = AbstractC9824ur0.a("com.android.tools.r8.allowLibraryExtendsProgramInFullMode", false);
            this.f50834O = true;
            this.f50836P = (Version.isDevelopmentVersion() && System.getProperty("com.android.tools.r8.allowTypeErrors") == null) ? false : true;
            this.f50838Q = false;
            this.f50840R = true;
            this.f50842S = true;
            this.f50844T = true;
            this.f50846U = AbstractC9824ur0.a("com.android.tools.r8.applyIfRulesToLibrary", false);
            this.f50848V = false;
            this.f50850W = true;
            this.f50852X = false;
            this.f50854Y = true;
            this.f50856Z = true;
            this.f50859a0 = System.getProperty("com.android.tools.r8.disableEnqueuerDeferredTracing") == null;
            this.f50862b0 = true;
            this.f50865c0 = System.getProperty("com.android.tools.r8.enableLegacyClassDefOrdering") != null;
            this.f50868d0 = true;
            this.f50871e0 = false;
            this.f50874f0 = false;
            this.f50877g0 = true;
            this.f50880h0 = true;
            this.f50883i0 = System.getProperty("com.android.tools.r8.enableEnumUnboxingDebugLogs") != null;
            this.f50886j0 = false;
            this.f50889k0 = false;
            this.f50891l0 = false;
            this.f50893m0 = false;
            this.f50895n0 = false;
            this.f50897o0 = false;
            this.f50899p0 = false;
            this.f50901q0 = System.getProperty("com.android.tools.r8.pc2pcOverheadThreshold") != null ? Integer.parseInt(System.getProperty("com.android.tools.r8.pc2pcOverheadThreshold")) : 200000;
            this.f50903r0 = null;
            this.f50905s0 = false;
            this.f50907t0 = false;
            this.f50909u0 = false;
            this.f50911v0 = null;
            this.f50913w0 = null;
            this.f50915x0 = -1;
            this.f50917y0 = System.getProperty("com.android.tools.r8.testing.dontReportFailingCheckDiscarded") != null;
            this.f50919z0 = false;
            this.f50807A0 = System.getProperty("com.android.tools.r8.trackDesugaredAPIConversions") != null;
            this.f50809B0 = false;
            this.f50811C0 = false;
            this.f50813D0 = false;
            this.f50815E0 = -1;
            this.f50817F0 = System.getProperty("com.android.tools.r8.forceIRForCfToCfDesugar") != null;
            this.f50819G0 = false;
            this.f50821H0 = System.getProperty("com.android.tools.r8.allowInvalidCfAccessFlags") != null;
            this.f50823I0 = System.getProperty("com.android.tools.r8.verifyInputs") != null;
            this.f50825J0 = false;
            this.f50827K0 = new HashSet();
            this.f50829L0 = System.getProperty("com.android.tools.r8.enableTestAssertions") != null;
            this.f50831M0 = System.getProperty("com.android.tools.r8.disableMarkingMethodsFinal") != null;
            this.f50833N0 = System.getProperty("com.android.tools.r8.disableMarkingClassesFinal") != null;
            this.f50835O0 = false;
            this.f50837P0 = true;
            this.f50839Q0 = false;
            this.f50841R0 = false;
            this.f50843S0 = true;
            this.f50845T0 = false;
            this.f50847U0 = false;
            this.f50849V0 = false;
            this.f50851W0 = false;
            this.f50853X0 = false;
            this.f50855Y0 = -1;
            this.f50857Z0 = new a();
            this.f50860a1 = null;
            this.f50863b1 = false;
            this.f50866c1 = new b();
            this.f50869d1 = C6628bi.b();
            this.f50872e1 = null;
            this.f50875f1 = false;
            this.f50878g1 = false;
            boolean equals = Tj.d.f25405q.equals(System.getProperty("com.android.tools.r8.enableListIterationRewriting"));
            this.f50881h1 = equals;
            this.f50884i1 = equals;
        }

        public static com.android.tools.r8.dex.Y a(com.android.tools.r8.dex.Y y10, com.android.tools.r8.dex.t0 t0Var) {
            return y10;
        }

        public final boolean b() {
            return this.f50887j1 == 1;
        }

        public final boolean c() {
            return this.f50887j1 == 2;
        }

        public void d() {
            if (!f50805k1 && this.f50887j1 != 1) {
                throw new AssertionError();
            }
            this.f50887j1 = 3;
        }

        public static class a {

            public Comparator<com.android.tools.r8.graph.A2> f50920a = null;

            public final Comparator a(Comparator comparator) {
                return this.f50920a != null ? new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        return C8570nJ.p.a.this.a((com.android.tools.r8.graph.H0) obj, (com.android.tools.r8.graph.H0) obj2);
                    }
                } : comparator;
            }

            public final int a(com.android.tools.r8.graph.H0 h02, com.android.tools.r8.graph.H0 h03) {
                return this.f50920a.compare(h02.getReference(), h03.getReference());
            }
        }

        public static com.android.tools.r8.graph.H2 a(C4798y c4798y, Iterable iterable, com.android.tools.r8.graph.H2 h22) {
            return h22;
        }

        public static void a(Deque deque) {
        }

        public final C5629Nm a() {
            if (this.f50885j == null && !this.f50882i) {
                this.f50882i = true;
                String property = System.getProperty("com.android.tools.r8.checkdeterminism");
                if (property != null) {
                    a(C5629Nm.a(Paths.get(property, new String[0])));
                }
            }
            return this.f50885j;
        }

        public void a(C5629Nm c5629Nm) {
            this.f50885j = c5629Nm;
        }

        public void a(BiFunction<com.android.tools.r8.dex.Y, com.android.tools.r8.dex.t0, com.android.tools.r8.dex.Y> biFunction) {
            this.f50910v = biFunction;
        }
    }

    static {
        f50578e2 = System.getProperty("com.android.tools.r8.deterministicdebugging") != null;
        f50579f2 = C5313Ib.f41144o;
        C2.f39077O.c().getClass();
        f50580g2 = EnumC5583Ms.V41.f42433b;
    }

    public C8570nJ() {
        List list = Collections.EMPTY_LIST;
        this.f50694k = list;
        this.f50697l = null;
        this.f50700m = null;
        this.f50703n = null;
        this.f50706o = null;
        this.f50709p = null;
        this.f50712q = null;
        this.f50721t = list;
        this.f50724u = null;
        this.f50727v = System.getProperty("com.android.tools.r8.printtimes") != null;
        this.f50730w = System.getProperty("com.android.tools.r8.printmemory") != null;
        this.f50733x = (System.getProperty("com.android.tools.r8.enableJvmCompatibleStepOutBehavior") == null && System.getenv("R8_ENABLE_JVM_COMPATIBLE_STEP_OUT_BEHAVIOR") == null) ? false : true;
        this.f50736y = false;
        this.f50739z = true;
        int i10 = AbstractC7552hC.f48487c;
        this.f50582A = new C9237rJ(new C5920Sm0("j$."), new C5920Sm0("java."));
        this.f50585B = false;
        this.f50588C = System.getProperty("com.android.tools.r8.fieldBitAccessAnalysis") != null;
        this.f50591D = true;
        this.f50594E = true;
        this.f50597F = true;
        this.f50600G = true;
        this.f50603H = true;
        this.f50606I = true;
        this.f50609J = true;
        this.f50612K = true;
        this.f50615L = true;
        this.f50618M = true;
        this.f50621N = true;
        this.f50624O = true;
        this.f50627P = System.getProperty("com.android.tools.r8.allowServiceLoaderRewritingPinnedTypes") != null;
        this.f50630Q = true;
        this.f50633R = true;
        this.f50636S = false;
        this.f50639T = false;
        this.f50642U = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C8570nJ.a((String) obj, (Long) obj2);
            }
        };
        this.f50645V = false;
        this.f50648W = System.getProperty("com.android.tools.r8.disableL8AnnotationRemoval") != null;
        this.f50651X = 50;
        this.f50654Y = Thread.currentThread();
        this.f50657Z = true;
        this.f50661a0 = true;
        this.f50665b0 = 3;
        this.f50669c0 = true;
        this.f50673d0 = true;
        this.f50677e0 = new l();
        this.f50680f0 = true;
        this.f50683g0 = true;
        this.f50686h0 = false;
        this.f50689i0 = true;
        this.f50692j0 = false;
        this.f50695k0 = f50578e2 ? 1 : -1;
        this.f50698l0 = false;
        this.f50701m0 = System.getProperty("com.android.tools.r8.strictdebuginfo") != null;
        this.f50704n0 = false;
        this.f50707o0 = false;
        this.f50710p0 = System.getProperty("com.android.tools.r8.emitRecordAnnotationsInDex") != null;
        this.f50713q0 = System.getProperty("com.android.tools.r8.disableRecordPartialDesugaring") == null;
        this.f50716r0 = System.getProperty("com.android.tools.r8.emitNestAnnotationsInDex") != null;
        this.f50719s0 = System.getProperty("com.android.tools.r8.forceNestDesugaring") != null;
        this.f50722t0 = System.getProperty("com.android.tools.r8.legacyNestDesugaringIAClasses") != null;
        this.f50725u0 = System.getProperty("com.android.tools.r8.emitPermittedSubclassesAnnotationsInDex") != null;
        this.f50728v0 = AbstractC9162qt.a();
        this.f50734x0 = null;
        this.f50737y0 = false;
        this.f50583A0 = t();
        this.f50586B0 = s();
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        this.f50589C0 = c6190Xe0;
        this.f50592D0 = C2.b();
        this.f50595E0 = false;
        this.f50598F0 = false;
        this.f50601G0 = true;
        this.f50604H0 = System.getProperty("com.android.tools.r8.ignoreBootClasspathEnumsForMaindexTracing") != null;
        this.f50607I0 = System.getProperty("com.android.tools.r8.pruneNonVissibleAnnotationClasses") != null;
        this.f50610J0 = System.getProperty("com.android.tools.r8.experimentalTraceAndroidEnumSerialization") != null;
        this.f50613K0 = true;
        this.f50616L0 = f.f50758c;
        this.f50619M0 = false;
        this.f50622N0 = true;
        this.f50625O0 = false;
        this.f50628P0 = true;
        Z30 z30 = Z30.f46154c;
        this.f50631Q0 = z30;
        this.f50634R0 = z30;
        this.f50637S0 = true;
        this.f50640T0 = false;
        this.f50643U0 = true;
        this.f50652X0 = false;
        this.f50655Y0 = false;
        this.f50658Z0 = false;
        this.f50662a1 = false;
        this.f50666b1 = false;
        this.f50670c1 = false;
        this.f50674d1 = false;
        this.f50678e1 = false;
        this.f50681f1 = null;
        this.f50684g1 = false;
        this.f50687h1 = false;
        this.f50690i1 = false;
        this.f50693j1 = new U1(this);
        this.f50696k1 = new o();
        this.f50699l1 = new b();
        this.f50702m1 = new c();
        this.f50705n1 = new d();
        this.f50708o1 = new h(this);
        this.f50711p1 = new C10310xm0(this);
        AbstractC9824ur0.a("com.android.tools.r8.jetpackcompose.enableModelingOfChangedArguments", false);
        this.f50714q1 = new g();
        this.f50717r1 = new C7006dx0(this);
        this.f50720s1 = new k();
        this.f50723t1 = new n();
        this.f50726u1 = new C4911Bc0();
        this.f50729v1 = new C9071qJ();
        this.f50732w1 = new H2(this);
        this.f50735x1 = new e();
        this.f50738y1 = new WR(this);
        this.f50741z1 = new j();
        this.f50584A1 = new C9362s4(this);
        this.f50587B1 = new C8981po0(this);
        this.f50593D1 = C7608hb0.b();
        this.f50596E1 = null;
        this.f50599F1 = new p();
        this.f50602G1 = c6190Xe0;
        this.f50608I1 = true;
        this.f50611J1 = i.f50782c;
        this.f50614K1 = new HashMap();
        this.f50617L1 = new HashMap();
        this.f50620M1 = new HashMap();
        this.f50626O1 = false;
        this.f50629P1 = null;
        this.f50632Q1 = null;
        this.f50635R1 = null;
        this.f50638S1 = null;
        this.f50641T1 = null;
        this.f50644U1 = false;
        this.f50647V1 = null;
        this.f50650W1 = null;
        this.f50653X1 = null;
        this.f50656Y1 = null;
        this.f50659Z1 = null;
        this.f50663a2 = null;
        this.f50667b2 = null;
        this.f50671c2 = C4875Al0.a();
        new AtomicBoolean(false);
        this.f50675d2 = C4875Al0.a();
        this.f50691j = new C5094Ef0();
        this.f50660a = new C4724u1();
        this.f50688i = null;
        this.f50646V0 = false;
        this.f50649W0 = false;
        this.f50590C1 = new HE(this);
    }

    public static boolean a(String str, Long l10) {
        return true;
    }

    public static QC s() {
        String property = System.getProperty("com.android.tools.r8.extensiveInterfaceMethodMinifierLoggingFilter");
        if (property == null) {
            int i10 = QC.f43505c;
            return C7119ef0.f47742j;
        }
        int i11 = QC.f43505c;
        IC ic2 = new IC();
        C10656zq0.a(property, ';', (Consumer) new Dm1(ic2));
        return ic2.a();
    }

    public static QC t() {
        String property = System.getProperty("com.android.tools.r8.extensiveLoggingFilter");
        if (property == null) {
            int i10 = QC.f43505c;
            return C7119ef0.f47742j;
        }
        int i11 = QC.f43505c;
        IC ic2 = new IC();
        C10656zq0.a(property, ';', (Consumer) new Dm1(ic2));
        return ic2.a();
    }

    public k A() {
        return this.f50720s1;
    }

    public C11350o3 B() {
        return this.f50688i;
    }

    public C4911Bc0 C() {
        return this.f50726u1;
    }

    public C10310xm0 D() {
        return this.f50711p1;
    }

    public C8981po0 E() {
        return this.f50587B1;
    }

    public p F() {
        return this.f50599F1;
    }

    public ThreadingModule G() {
        if (this.f50724u == null) {
            this.f50724u = com.android.tools.r8.threading.a.b().create();
        }
        return this.f50724u;
    }

    public C7006dx0 H() {
        return this.f50717r1;
    }

    public final boolean I() {
        return this.f50718s != null;
    }

    public final boolean J() {
        return this.f50632Q1 != null;
    }

    public g K() {
        return this.f50714q1;
    }

    public h L() {
        return this.f50708o1;
    }

    public final boolean M() {
        return (this.f50697l instanceof ClassFileConsumer) && this.f50616L0.b();
    }

    public final boolean N() {
        return this.f50714q1.a(1) && !this.f50714q1.e();
    }

    public final boolean O() {
        return this.f50697l instanceof ClassFileConsumer;
    }

    public boolean P() {
        ProgramConsumer programConsumer = this.f50697l;
        return (programConsumer instanceof DexIndexedConsumer) || (programConsumer instanceof DexFilePerClassFileConsumer);
    }

    public final boolean Q() {
        return this.f50697l != null && this.f50616L0.b() && this.f50631Q0 == Z30.f46154c && !f();
    }

    public final boolean R() {
        C11350o3 c11350o3;
        if (f50581h2 || (c11350o3 = this.f50688i) == null || this.f50649W0 == c11350o3.v()) {
            return this.f50649W0;
        }
        throw new AssertionError();
    }

    public final boolean S() {
        return this.f50672d != null && this.f50682g.isOptimizedShrinking();
    }

    public final boolean T() {
        return this.f50688i != null && B().w();
    }

    public final boolean U() {
        return this.f50727v && this.f50596E1 == null;
    }

    public final boolean V() {
        C11350o3 c11350o3;
        if (this.f50690i1 || (c11350o3 = this.f50688i) == null) {
            return false;
        }
        m j10 = c11350o3.j();
        j10.getClass();
        if (j10 == m.f50793b) {
            return false;
        }
        return R() || !this.f50674d1;
    }

    public final boolean W() {
        C11350o3 c11350o3;
        if (f50581h2 || (c11350o3 = this.f50688i) == null || this.f50646V0 == c11350o3.A()) {
            return this.f50646V0;
        }
        throw new AssertionError();
    }

    public j X() {
        return this.f50741z1;
    }

    public final void Y() {
        this.f50623N1 = new ConcurrentHashMap();
    }

    public final void Z() {
        boolean z10;
        if (this.f50617L1.size() > 0) {
            C5094Ef0 c5094Ef0 = this.f50691j;
            StringDiagnostic stringDiagnostic = new StringDiagnostic("Invalid parameter counts in MethodParameter attributes. This is likely due to Proguard having removed a parameter.");
            synchronized (c5094Ef0) {
                c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
            }
            Iterator it = new TreeSet(this.f50617L1.o()).iterator();
            while (it.hasNext()) {
                Origin origin = (Origin) it.next();
                StringBuilder sb2 = new StringBuilder("Methods with invalid MethodParameter attributes:");
                for (C8904pJ c8904pJ : (List) this.f50617L1.get(origin)) {
                    sb2.append("\n  ");
                    sb2.append((Object) c8904pJ.f51493a);
                    sb2.append(" expected count: ");
                    sb2.append(c8904pJ.f51494b);
                    sb2.append(" actual count: ");
                    sb2.append(c8904pJ.f51495c);
                }
                this.f50691j.info(new StringDiagnostic(sb2.toString(), origin));
            }
        }
        if (this.f50620M1.size() > 0) {
            Iterator it2 = this.f50620M1.values().iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                i10 += ((List) it2.next()).size();
            }
            this.f50691j.info(new StringDiagnostic("Stripped invalid locals information from " + i10 + (i10 == 1 ? " method." : " methods.")));
            Iterator it3 = new TreeSet(this.f50620M1.o()).iterator();
            while (it3.hasNext()) {
                Origin origin2 = (Origin) it3.next();
                StringBuilder sb3 = new StringBuilder("Methods with invalid locals information:");
                for (C8699o50 c8699o50 : (List) this.f50620M1.get(origin2)) {
                    sb3.append("\n  ");
                    sb3.append(((com.android.tools.r8.graph.H5) c8699o50.a()).r());
                    sb3.append("\n  ");
                    sb3.append((String) c8699o50.b());
                }
                this.f50691j.info(new StringDiagnostic(sb3.toString(), origin2));
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f50614K1.size() > 0) {
            this.f50691j.info(new StringDiagnostic("InnerClasses attribute has entries missing a corresponding EnclosingMethod attribute. Such InnerClasses attribute entries are ignored."));
            Iterator it4 = new TreeSet(this.f50614K1.o()).iterator();
            while (it4.hasNext()) {
                Origin origin3 = (Origin) it4.next();
                StringBuilder sb4 = new StringBuilder("Classes with missing EnclosingMethod: ");
                boolean z11 = true;
                for (C9571tJ c9571tJ : (List) this.f50614K1.get(origin3)) {
                    if (z11) {
                        z11 = false;
                    } else {
                        sb4.append(", ");
                    }
                    sb4.append((Object) c9571tJ.f52582b);
                    z10 |= c9571tJ.f52581a.b(C5313Ib.f41135f);
                }
                this.f50691j.info(new StringDiagnostic(sb4.toString(), origin3));
            }
        }
        if (z10) {
            this.f50691j.info(new StringDiagnostic("Some warnings are typically a sign of using an outdated Java toolchain. To fix, recompile the source with an updated toolchain."));
        }
    }

    public n a0() {
        return this.f50723t1;
    }

    public final void b(final com.android.tools.r8.graph.H2 h22, final C4725u2 c4725u2, com.android.tools.r8.graph.M2 m22) {
        ConcurrentHashMap concurrentHashMap = this.f50623N1;
        if (concurrentHashMap != null) {
            concurrentHashMap.computeIfAbsent(m22, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C8570nJ.a(com.android.tools.r8.graph.H2.this, c4725u2, (com.android.tools.r8.graph.M2) obj);
                }
            });
        }
    }

    public o b0() {
        return this.f50696k1;
    }

    public b c() {
        return this.f50699l1;
    }

    public boolean c0() {
        return this.f50616L0.b() && z().d(C2.K) && z().e(C2.V);
    }

    public void d(C2 c22) {
        if (!f50581h2 && c22 == null) {
            throw new AssertionError();
        }
        this.f50592D0 = c22;
    }

    public final boolean d0() {
        return this.f50616L0.b() && !c(C2.T) && this.f50619M0;
    }

    public final boolean e() {
        return P() && this.f50592D0.d(C2.L);
    }

    public final boolean e0() {
        return W() || R() || B().r();
    }

    public boolean f() {
        return c(C2.N);
    }

    public void f0() {
        ProgramConsumer programConsumer = this.f50697l;
        if (programConsumer != null) {
            programConsumer.finished(this.f50691j);
            DataResourceConsumer dataResourceConsumer = this.f50715r;
            if (dataResourceConsumer != null) {
                dataResourceConsumer.finished(this.f50691j);
            }
        }
        if (I()) {
            ArrayList arrayList = this.f50718s.f43761a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                ProgramConsumer programConsumer2 = ((FeatureSplit) obj).getProgramConsumer();
                if (programConsumer2 != null) {
                    programConsumer2.finished(this.f50691j);
                    DataResourceConsumer dataResourceConsumer2 = programConsumer2.getDataResourceConsumer();
                    if (dataResourceConsumer2 != null) {
                        dataResourceConsumer2.finished(this.f50691j);
                    }
                }
            }
        }
        DesugarGraphConsumer desugarGraphConsumer = this.f50656Y1;
        if (desugarGraphConsumer != null) {
            desugarGraphConsumer.finished();
        }
        if (this.f50682g.getDebugConsumer() != null) {
            this.f50682g.getDebugConsumer().finished(this.f50691j);
        }
    }

    public final boolean g() {
        if (!P()) {
            return false;
        }
        i iVar = this.f50611J1;
        iVar.getClass();
        return iVar == i.f50782c;
    }

    public final boolean h() {
        SourceFileProvider sourceFileProvider;
        if (g()) {
            return z().d(C2.O) && (sourceFileProvider = this.f50667b2) != null && sourceFileProvider.allowDiscardingSourceFile();
        }
        return false;
    }

    public final boolean i() {
        return (c((C2) null) || this.f50716r0) && !this.f50719s0;
    }

    public d j() {
        return this.f50705n1;
    }

    public final int k() {
        if (this.f50616L0.a()) {
            return 1;
        }
        if (c(C2.V) && this.f50713q0) {
            return 2;
        }
        return this.f50710p0 ? 1 : 3;
    }

    public e l() {
        return this.f50735x1;
    }

    public C4724u1 m() {
        return this.f50660a;
    }

    public final void n() {
        this.f50609J = false;
        this.f50600G = false;
        this.f50603H = false;
        this.f50677e0.f50789a = false;
        this.f50669c0 = false;
        this.f50618M = false;
        this.f50636S = false;
        this.f50615L = false;
        this.f50699l1.a();
        this.f50714q1.h();
        this.f50717r1.a();
    }

    public void o() {
        this.f50630Q = false;
    }

    public U1 p() {
        return this.f50693j1;
    }

    public C9362s4 q() {
        return this.f50584A1;
    }

    public c r() {
        return this.f50702m1;
    }

    public final C5821Qv u() {
        return this.f50718s;
    }

    public HE v() {
        return this.f50590C1;
    }

    public final EnumC9738uJ w() {
        if (!f50581h2 && this.f50697l == null) {
            throw new AssertionError();
        }
        ProgramConsumer programConsumer = this.f50697l;
        if (programConsumer instanceof DexIndexedConsumer) {
            return EnumC9738uJ.f52833b;
        }
        if (programConsumer instanceof DexFilePerClassFileConsumer) {
            return EnumC9738uJ.f52834c;
        }
        if (programConsumer instanceof ClassFileConsumer) {
            return EnumC9738uJ.f52835d;
        }
        throw new UnsupportedOperationException("Cannot find internal output mode.");
    }

    public WR x() {
        return this.f50738y1;
    }

    public final com.android.tools.r8.dex.W y() {
        if (this.f50737y0) {
            return this.f50740z0;
        }
        if (!f50581h2 && this.f50734x0 == null) {
            throw new AssertionError();
        }
        W.b bVar = (this.f50596E1 == null || this.f50734x0 != W.b.f35805e) ? this.f50734x0 : W.b.f35806f;
        com.android.tools.r8.dex.W a10 = new com.android.tools.r8.dex.W(bVar).a(Version.LABEL);
        CompilationMode compilationMode = this.f50690i1 ? CompilationMode.DEBUG : CompilationMode.RELEASE;
        boolean z10 = com.android.tools.r8.dex.W.f35796i;
        if (!z10 && a10.f35797a.f48234b.containsKey("compilation-mode")) {
            throw new AssertionError();
        }
        a10.f35797a.a("compilation-mode", C10656zq0.f(compilationMode.toString()));
        W.a aVar = this.f50697l instanceof ClassFileConsumer ? W.a.f35799b : W.a.f35800c;
        if (!z10 && a10.f35797a.f48234b.containsKey("backend")) {
            throw new AssertionError();
        }
        a10.f35797a.a("backend", C10656zq0.f(aVar.name()));
        boolean z11 = this.f50639T;
        if (!z10 && a10.f35797a.f48234b.containsKey("has-checksums")) {
            throw new AssertionError();
        }
        C7407gL c7407gL = a10.f35797a;
        Boolean valueOf = Boolean.valueOf(z11);
        c7407gL.getClass();
        c7407gL.f48234b.put("has-checksums", new C7906jL(valueOf));
        if (P() || this.f50616L0 == f.f50758c) {
            a10.a(z().d());
        }
        if (this.f50738y1.f45396a.f53765b.c() != null) {
            String[] strArr = {this.f50738y1.f45396a.f53765b.c()};
            if (!z10 && a10.f35797a.f48234b.containsKey("desugared-library-identifiers")) {
                throw new AssertionError();
            }
            C6574bL c6574bL = new C6574bL();
            String str = strArr[0];
            c6574bL.f46749b.add(str == null ? C7240fL.f47942b : new C7906jL(str));
            a10.f35797a.f48234b.put("desugared-library-identifiers", c6574bL);
        }
        if (Version.isDevelopmentVersion()) {
            String b10 = C6170Ww0.f45582c.b();
            if (!z10 && a10.f35797a.f48234b.containsKey("sha-1")) {
                throw new AssertionError();
            }
            a10.f35797a.a("sha-1", b10);
        }
        if (bVar == W.b.f35805e) {
            String str2 = this.f50674d1 ? "compatibility" : "full";
            if (!z10 && a10.f35797a.f48234b.containsKey("r8-mode")) {
                throw new AssertionError();
            }
            a10.f35797a.a("r8-mode", str2);
        }
        if (this.f50598F0) {
            if (!z10 && a10.f35797a.f48234b.containsKey("platform")) {
                throw new AssertionError();
            }
            C7407gL c7407gL2 = a10.f35797a;
            Boolean bool = Boolean.TRUE;
            c7407gL2.getClass();
            c7407gL2.f48234b.put("platform", new C7906jL(bool));
        }
        return a10;
    }

    public final C2 z() {
        if (f50581h2 || this.f50616L0.b() || P() || this.f50592D0.equals(C2.B)) {
            return this.f50592D0;
        }
        throw new AssertionError();
    }

    public static List c(Origin origin) {
        return new ArrayList();
    }

    public void a(com.android.tools.r8.dex.W w10) {
        this.f50737y0 = true;
        this.f50740z0 = w10;
    }

    public static boolean b() {
        return !f50581h2;
    }

    public final boolean c(C2 c22) {
        if (this.f50616L0.b() || P()) {
            return c22 != null && z().d(c22);
        }
        if (f50581h2 || this.f50592D0.equals(C2.B)) {
            return true;
        }
        throw new AssertionError();
    }

    public boolean d() {
        return a(C2.J);
    }

    public static String b(C7435gZ c7435gZ) {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        c7435gZ.f48282a.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add((com.android.tools.r8.graph.H2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add((com.android.tools.r8.graph.I0) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add((C4725u2) obj);
            }
        });
        ArrayList arrayList4 = c7435gZ.f48283b;
        int size = arrayList4.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList4.get(i10);
            i10++;
            ((com.android.tools.r8.graph.E0) obj).a(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    List.this.add((com.android.tools.r8.graph.H2) obj2);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    List.this.add((com.android.tools.r8.graph.I0) obj2);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    List.this.add((C4725u2) obj2);
                }
            });
        }
        StringBuilder sb2 = new StringBuilder("Compilation of classes ");
        sb2.append(C10656zq0.a(", ", arrayList, new Function() {
            @Override
            public final Object apply(Object obj2) {
                return ((com.android.tools.r8.graph.H2) obj2).b1();
            }
        }));
        sb2.append(" requires its nest mates ");
        if (!c7435gZ.f48284c.isEmpty()) {
            sb2.append(C10656zq0.a(", ", c7435gZ.f48284c, new C4693s8()));
            sb2.append(" (unavailable) ");
        }
        if (!arrayList3.isEmpty()) {
            sb2.append(C10656zq0.a(", ", arrayList3, new Function() {
                @Override
                public final Object apply(Object obj2) {
                    return ((C4725u2) obj2).b1();
                }
            }));
            sb2.append(" (on library path) ");
        }
        sb2.append("to be on program or class path.");
        if (!arrayList2.isEmpty()) {
            sb2.append("(Classes ");
            sb2.append(C10656zq0.a(", ", arrayList2, new Function() {
                @Override
                public final Object apply(Object obj2) {
                    return ((com.android.tools.r8.graph.I0) obj2).b1();
                }
            }));
            sb2.append(" from the same nest are on class path).");
        }
        return sb2.toString();
    }

    public void a(AbstractC9162qt abstractC9162qt) {
        this.f50728v0 = abstractC9162qt;
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        return this.f50690i1 || h52.getHolder().I1();
    }

    public H2 a() {
        return this.f50732w1;
    }

    public static C8699o50 a(com.android.tools.r8.graph.H2 h22, C4725u2 c4725u2, com.android.tools.r8.graph.M2 m22) {
        return new C8699o50(h22, c4725u2);
    }

    public final void a(C4798y c4798y) {
        if (!f50581h2 && this.f50623N1 == null) {
            throw new AssertionError();
        }
        if (this.f50623N1.isEmpty()) {
            this.f50623N1 = null;
            return;
        }
        ArrayList a10 = AT.a(this.f50623N1.o(), new u.K0());
        int size = a10.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) obj;
            if (!c4798y.f38413f.a(m22) && com.android.tools.r8.graph.H2.a(((C11245i) c4798y.f()).c(m22)) != null) {
                C8699o50 c8699o50 = (C8699o50) this.f50623N1.get(m22);
                C5094Ef0 c5094Ef0 = this.f50691j;
                DuplicateTypeInProgramAndLibraryDiagnostic duplicateTypeInProgramAndLibraryDiagnostic = new DuplicateTypeInProgramAndLibraryDiagnostic(m22.s0(), ((com.android.tools.r8.graph.H2) c8699o50.a()).f36244d, ((C4725u2) c8699o50.b()).f36244d);
                synchronized (c5094Ef0) {
                    c5094Ef0.a(DiagnosticsLevel.INFO, duplicateTypeInProgramAndLibraryDiagnostic);
                }
            }
        }
        this.f50623N1 = null;
        this.f50691j.a();
    }

    public static List b(Origin origin) {
        return new ArrayList();
    }

    public static String a(com.android.tools.r8.graph.E0 e02) {
        String x02 = e02.T0().x0();
        return "Class " + e02.f36245e.x0() + " requires its nest host " + x02 + " to be on program or class path.";
    }

    public final boolean b(C2 c22) {
        if (this.f50616L0.b() || P()) {
            return c22 == null || !z().c(c22);
        }
        if (f50581h2 || this.f50592D0.equals(C2.B)) {
            return true;
        }
        throw new AssertionError();
    }

    public static IncompleteNestNestDesugarDiagnosic a(C7435gZ c7435gZ) {
        return new IncompleteNestNestDesugarDiagnosic(c7435gZ.f48282a.f36244d, Position.UNKNOWN, b(c7435gZ));
    }

    public final void a(Origin origin, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, String str, Set set) {
        if (this.f50675d2.add(m23)) {
            this.f50691j.warning(new InvalidLibrarySuperclassDiagnostic(origin, Reference.classFromDescriptor(m22.V0()), Reference.classFromDescriptor(m23.V0()), str, CT.a(AbstractC9907vK.a(set, new InterfaceC5422Jy() {
                @Override
                public final Object apply(Object obj) {
                    MethodReference v02;
                    v02 = ((com.android.tools.r8.graph.A2) obj).v0();
                    return v02;
                }
            }))));
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, Origin origin, C5313Ib c5313Ib) {
        C9571tJ c9571tJ = new C9571tJ(c5313Ib, m22);
        synchronized (this.f50614K1) {
            ((List) this.f50614K1.computeIfAbsent(origin, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C8570nJ.c((Origin) obj);
                }
            })).add(c9571tJ);
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, Origin origin, int i10, int i11) {
        C8904pJ c8904pJ = new C8904pJ(i10, i11, a22);
        synchronized (this.f50617L1) {
            ((List) this.f50617L1.computeIfAbsent(origin, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C8570nJ.b((Origin) obj);
                }
            })).add(c8904pJ);
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52, IJ ij2) {
        if (!this.f50698l0) {
            synchronized (this.f50620M1) {
                ((List) this.f50620M1.computeIfAbsent(h52.f36317b.f36244d, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C8570nJ.a((Origin) obj);
                    }
                })).add(new C8699o50(h52, ij2.getMessage()));
            }
            return;
        }
        throw new C5325If("Fatal warning: Invalid debug info", ij2);
    }

    public static List a(Origin origin) {
        return new ArrayList();
    }

    public final boolean a(C4516j1 c4516j1) {
        if (this.f50589C0.f45780d.length <= 0) {
            return true;
        }
        return this.f50589C0.contains(c4516j1.t1());
    }

    public final boolean a(C2 c22) {
        if (this.f50616L0.b() || P()) {
            return c22 == null || !z().d(c22);
        }
        if (f50581h2 || this.f50592D0.equals(C2.B)) {
            return true;
        }
        throw new AssertionError();
    }

    public final C5313Ib a(C5313Ib c5313Ib) {
        if (!f50581h2 && !(this.f50697l instanceof ClassFileConsumer)) {
            throw new AssertionError();
        }
        if (this.f50616L0.b()) {
            C5313Ib c5313Ib2 = f() ? C5313Ib.f41138i : C5313Ib.f41137h;
            if (c5313Ib2.b(c5313Ib)) {
                return c5313Ib2;
            }
        }
        return c5313Ib;
    }

    public C8570nJ(C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        List list = Collections.EMPTY_LIST;
        this.f50694k = list;
        this.f50697l = null;
        this.f50700m = null;
        this.f50703n = null;
        this.f50706o = null;
        this.f50709p = null;
        this.f50712q = null;
        this.f50721t = list;
        this.f50724u = null;
        this.f50727v = System.getProperty("com.android.tools.r8.printtimes") != null;
        this.f50730w = System.getProperty("com.android.tools.r8.printmemory") != null;
        this.f50733x = (System.getProperty("com.android.tools.r8.enableJvmCompatibleStepOutBehavior") == null && System.getenv("R8_ENABLE_JVM_COMPATIBLE_STEP_OUT_BEHAVIOR") == null) ? false : true;
        this.f50736y = false;
        this.f50739z = true;
        int i10 = AbstractC7552hC.f48487c;
        this.f50582A = new C9237rJ(new C5920Sm0("j$."), new C5920Sm0("java."));
        this.f50585B = false;
        this.f50588C = System.getProperty("com.android.tools.r8.fieldBitAccessAnalysis") != null;
        this.f50591D = true;
        this.f50594E = true;
        this.f50597F = true;
        this.f50600G = true;
        this.f50603H = true;
        this.f50606I = true;
        this.f50609J = true;
        this.f50612K = true;
        this.f50615L = true;
        this.f50618M = true;
        this.f50621N = true;
        this.f50624O = true;
        this.f50627P = System.getProperty("com.android.tools.r8.allowServiceLoaderRewritingPinnedTypes") != null;
        this.f50630Q = true;
        this.f50633R = true;
        this.f50636S = false;
        this.f50639T = false;
        this.f50642U = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C8570nJ.a((String) obj, (Long) obj2);
            }
        };
        this.f50645V = false;
        this.f50648W = System.getProperty("com.android.tools.r8.disableL8AnnotationRemoval") != null;
        this.f50651X = 50;
        this.f50654Y = Thread.currentThread();
        this.f50657Z = true;
        this.f50661a0 = true;
        this.f50665b0 = 3;
        this.f50669c0 = true;
        this.f50673d0 = true;
        this.f50677e0 = new l();
        this.f50680f0 = true;
        this.f50683g0 = true;
        this.f50686h0 = false;
        this.f50689i0 = true;
        this.f50692j0 = false;
        this.f50695k0 = f50578e2 ? 1 : -1;
        this.f50698l0 = false;
        this.f50701m0 = System.getProperty("com.android.tools.r8.strictdebuginfo") != null;
        this.f50704n0 = false;
        this.f50707o0 = false;
        this.f50710p0 = System.getProperty("com.android.tools.r8.emitRecordAnnotationsInDex") != null;
        this.f50713q0 = System.getProperty("com.android.tools.r8.disableRecordPartialDesugaring") == null;
        this.f50716r0 = System.getProperty("com.android.tools.r8.emitNestAnnotationsInDex") != null;
        this.f50719s0 = System.getProperty("com.android.tools.r8.forceNestDesugaring") != null;
        this.f50722t0 = System.getProperty("com.android.tools.r8.legacyNestDesugaringIAClasses") != null;
        this.f50725u0 = System.getProperty("com.android.tools.r8.emitPermittedSubclassesAnnotationsInDex") != null;
        this.f50728v0 = AbstractC9162qt.a();
        this.f50734x0 = null;
        this.f50737y0 = false;
        this.f50583A0 = t();
        this.f50586B0 = s();
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        this.f50589C0 = c6190Xe0;
        this.f50592D0 = C2.b();
        this.f50595E0 = false;
        this.f50598F0 = false;
        this.f50601G0 = true;
        this.f50604H0 = System.getProperty("com.android.tools.r8.ignoreBootClasspathEnumsForMaindexTracing") != null;
        this.f50607I0 = System.getProperty("com.android.tools.r8.pruneNonVissibleAnnotationClasses") != null;
        this.f50610J0 = System.getProperty("com.android.tools.r8.experimentalTraceAndroidEnumSerialization") != null;
        this.f50613K0 = true;
        this.f50616L0 = f.f50758c;
        this.f50619M0 = false;
        this.f50622N0 = true;
        this.f50625O0 = false;
        this.f50628P0 = true;
        Z30 z30 = Z30.f46154c;
        this.f50631Q0 = z30;
        this.f50634R0 = z30;
        this.f50637S0 = true;
        this.f50640T0 = false;
        this.f50643U0 = true;
        this.f50652X0 = false;
        this.f50655Y0 = false;
        this.f50658Z0 = false;
        this.f50662a1 = false;
        this.f50666b1 = false;
        this.f50670c1 = false;
        this.f50674d1 = false;
        this.f50678e1 = false;
        this.f50681f1 = null;
        this.f50684g1 = false;
        this.f50687h1 = false;
        this.f50690i1 = false;
        this.f50693j1 = new U1(this);
        this.f50696k1 = new o();
        this.f50699l1 = new b();
        this.f50702m1 = new c();
        this.f50705n1 = new d();
        this.f50708o1 = new h(this);
        this.f50711p1 = new C10310xm0(this);
        AbstractC9824ur0.a("com.android.tools.r8.jetpackcompose.enableModelingOfChangedArguments", false);
        this.f50714q1 = new g();
        this.f50717r1 = new C7006dx0(this);
        this.f50720s1 = new k();
        this.f50723t1 = new n();
        this.f50726u1 = new C4911Bc0();
        this.f50729v1 = new C9071qJ();
        this.f50732w1 = new H2(this);
        this.f50735x1 = new e();
        this.f50738y1 = new WR(this);
        this.f50741z1 = new j();
        this.f50584A1 = new C9362s4(this);
        this.f50587B1 = new C8981po0(this);
        this.f50593D1 = C7608hb0.b();
        this.f50596E1 = null;
        this.f50599F1 = new p();
        this.f50602G1 = c6190Xe0;
        this.f50608I1 = true;
        this.f50611J1 = i.f50782c;
        this.f50614K1 = new HashMap();
        this.f50617L1 = new HashMap();
        this.f50620M1 = new HashMap();
        this.f50626O1 = false;
        this.f50629P1 = null;
        this.f50632Q1 = null;
        this.f50635R1 = null;
        this.f50638S1 = null;
        this.f50641T1 = null;
        this.f50644U1 = false;
        this.f50647V1 = null;
        this.f50650W1 = null;
        this.f50653X1 = null;
        this.f50656Y1 = null;
        this.f50659Z1 = null;
        this.f50663a2 = null;
        this.f50667b2 = null;
        this.f50671c2 = C4875Al0.a();
        new AtomicBoolean(false);
        this.f50675d2 = C4875Al0.a();
        boolean z10 = f50581h2;
        if (!z10 && c5094Ef0 == null) {
            throw new AssertionError();
        }
        if (!z10 && c4724u1 == null) {
            throw new AssertionError();
        }
        this.f50691j = c5094Ef0;
        this.f50660a = c4724u1;
        this.f50688i = null;
        this.f50646V0 = false;
        this.f50649W0 = false;
        n();
        this.f50590C1 = new HE(this);
    }

    public C8570nJ(CompilationMode compilationMode, C11350o3 c11350o3, C5094Ef0 c5094Ef0) {
        List list = Collections.EMPTY_LIST;
        this.f50694k = list;
        this.f50697l = null;
        this.f50700m = null;
        this.f50703n = null;
        this.f50706o = null;
        this.f50709p = null;
        this.f50712q = null;
        this.f50721t = list;
        this.f50724u = null;
        this.f50727v = System.getProperty("com.android.tools.r8.printtimes") != null;
        this.f50730w = System.getProperty("com.android.tools.r8.printmemory") != null;
        this.f50733x = (System.getProperty("com.android.tools.r8.enableJvmCompatibleStepOutBehavior") == null && System.getenv("R8_ENABLE_JVM_COMPATIBLE_STEP_OUT_BEHAVIOR") == null) ? false : true;
        this.f50736y = false;
        this.f50739z = true;
        int i10 = AbstractC7552hC.f48487c;
        this.f50582A = new C9237rJ(new C5920Sm0("j$."), new C5920Sm0("java."));
        this.f50585B = false;
        this.f50588C = System.getProperty("com.android.tools.r8.fieldBitAccessAnalysis") != null;
        this.f50591D = true;
        this.f50594E = true;
        this.f50597F = true;
        this.f50600G = true;
        this.f50603H = true;
        this.f50606I = true;
        this.f50609J = true;
        this.f50612K = true;
        this.f50615L = true;
        this.f50618M = true;
        this.f50621N = true;
        this.f50624O = true;
        this.f50627P = System.getProperty("com.android.tools.r8.allowServiceLoaderRewritingPinnedTypes") != null;
        this.f50630Q = true;
        this.f50633R = true;
        this.f50636S = false;
        this.f50639T = false;
        this.f50642U = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C8570nJ.a((String) obj, (Long) obj2);
            }
        };
        this.f50645V = false;
        this.f50648W = System.getProperty("com.android.tools.r8.disableL8AnnotationRemoval") != null;
        this.f50651X = 50;
        this.f50654Y = Thread.currentThread();
        this.f50657Z = true;
        this.f50661a0 = true;
        this.f50665b0 = 3;
        this.f50669c0 = true;
        this.f50673d0 = true;
        this.f50677e0 = new l();
        this.f50680f0 = true;
        this.f50683g0 = true;
        this.f50686h0 = false;
        this.f50689i0 = true;
        this.f50692j0 = false;
        this.f50695k0 = f50578e2 ? 1 : -1;
        this.f50698l0 = false;
        this.f50701m0 = System.getProperty("com.android.tools.r8.strictdebuginfo") != null;
        this.f50704n0 = false;
        this.f50707o0 = false;
        this.f50710p0 = System.getProperty("com.android.tools.r8.emitRecordAnnotationsInDex") != null;
        this.f50713q0 = System.getProperty("com.android.tools.r8.disableRecordPartialDesugaring") == null;
        this.f50716r0 = System.getProperty("com.android.tools.r8.emitNestAnnotationsInDex") != null;
        this.f50719s0 = System.getProperty("com.android.tools.r8.forceNestDesugaring") != null;
        this.f50722t0 = System.getProperty("com.android.tools.r8.legacyNestDesugaringIAClasses") != null;
        this.f50725u0 = System.getProperty("com.android.tools.r8.emitPermittedSubclassesAnnotationsInDex") != null;
        this.f50728v0 = AbstractC9162qt.a();
        this.f50734x0 = null;
        this.f50737y0 = false;
        this.f50583A0 = t();
        this.f50586B0 = s();
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        this.f50589C0 = c6190Xe0;
        this.f50592D0 = C2.b();
        this.f50595E0 = false;
        this.f50598F0 = false;
        this.f50601G0 = true;
        this.f50604H0 = System.getProperty("com.android.tools.r8.ignoreBootClasspathEnumsForMaindexTracing") != null;
        this.f50607I0 = System.getProperty("com.android.tools.r8.pruneNonVissibleAnnotationClasses") != null;
        this.f50610J0 = System.getProperty("com.android.tools.r8.experimentalTraceAndroidEnumSerialization") != null;
        this.f50613K0 = true;
        this.f50616L0 = f.f50758c;
        this.f50619M0 = false;
        this.f50622N0 = true;
        this.f50625O0 = false;
        this.f50628P0 = true;
        Z30 z30 = Z30.f46154c;
        this.f50631Q0 = z30;
        this.f50634R0 = z30;
        this.f50637S0 = true;
        this.f50640T0 = false;
        this.f50643U0 = true;
        this.f50652X0 = false;
        this.f50655Y0 = false;
        this.f50658Z0 = false;
        this.f50662a1 = false;
        this.f50666b1 = false;
        this.f50670c1 = false;
        this.f50674d1 = false;
        this.f50678e1 = false;
        this.f50681f1 = null;
        this.f50684g1 = false;
        this.f50687h1 = false;
        this.f50690i1 = false;
        this.f50693j1 = new U1(this);
        this.f50696k1 = new o();
        this.f50699l1 = new b();
        this.f50702m1 = new c();
        this.f50705n1 = new d();
        this.f50708o1 = new h(this);
        this.f50711p1 = new C10310xm0(this);
        AbstractC9824ur0.a("com.android.tools.r8.jetpackcompose.enableModelingOfChangedArguments", false);
        this.f50714q1 = new g();
        this.f50717r1 = new C7006dx0(this);
        this.f50720s1 = new k();
        n nVar = new n();
        this.f50723t1 = nVar;
        this.f50726u1 = new C4911Bc0();
        this.f50729v1 = new C9071qJ();
        this.f50732w1 = new H2(this);
        this.f50735x1 = new e();
        this.f50738y1 = new WR(this);
        this.f50741z1 = new j();
        this.f50584A1 = new C9362s4(this);
        this.f50587B1 = new C8981po0(this);
        this.f50593D1 = C7608hb0.b();
        this.f50596E1 = null;
        this.f50599F1 = new p();
        this.f50602G1 = c6190Xe0;
        this.f50608I1 = true;
        this.f50611J1 = i.f50782c;
        this.f50614K1 = new HashMap();
        this.f50617L1 = new HashMap();
        this.f50620M1 = new HashMap();
        this.f50626O1 = false;
        this.f50629P1 = null;
        this.f50632Q1 = null;
        this.f50635R1 = null;
        this.f50638S1 = null;
        this.f50641T1 = null;
        this.f50644U1 = false;
        this.f50647V1 = null;
        this.f50650W1 = null;
        this.f50653X1 = null;
        this.f50656Y1 = null;
        this.f50659Z1 = null;
        this.f50663a2 = null;
        this.f50667b2 = null;
        this.f50671c2 = C4875Al0.a();
        new AtomicBoolean(false);
        this.f50675d2 = C4875Al0.a();
        boolean z10 = f50581h2;
        if (!z10 && c5094Ef0 == null) {
            throw new AssertionError();
        }
        if (!z10 && c11350o3 == null) {
            throw new AssertionError();
        }
        this.f50690i1 = compilationMode == CompilationMode.DEBUG;
        this.f50691j = c5094Ef0;
        this.f50688i = c11350o3;
        this.f50660a = c11350o3.f57598b;
        this.f50646V0 = c11350o3.A();
        this.f50649W0 = c11350o3.v();
        this.f50590C1 = new HE(this);
        if (!c11350o3.w()) {
            n();
            this.f50630Q = false;
            this.f50633R = false;
        }
        if (this.f50690i1) {
            if (!z10 && R()) {
                throw new AssertionError();
            }
            if (!z10 && T()) {
                throw new AssertionError();
            }
            if (!z10 && c11350o3.v()) {
                throw new AssertionError();
            }
            B().f().f56569a = true;
            B().f().f56578j = true;
            B().f().f56575g = true;
            B().f().f56576h = true;
        }
        this.f50684g1 = c11350o3.t();
        if (c11350o3.f57595J) {
            this.f50588C = true;
            nVar.f50798b = true;
            nVar.f50799c = true;
            nVar.f50797a = true;
            nVar.f50801e = true;
        }
    }
}
