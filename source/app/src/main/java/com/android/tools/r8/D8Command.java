package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.BaseCompilerCommand;
import com.android.tools.r8.D8Command;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.A4;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9162qt;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6374a80;
import com.android.tools.r8.internal.C8069kJ;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9328rt;
import com.android.tools.r8.internal.InterfaceC9975vm;
import com.android.tools.r8.internal.LU;
import com.android.tools.r8.internal.QD;
import com.android.tools.r8.metadata.D8BuildMetadata;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.shaking.C11384q3;
import com.android.tools.r8.shaking.C11518y3;
import com.android.tools.r8.shaking.C11534z3;
import com.android.tools.r8.startup.StartupProfileProvider;
import com.android.tools.r8.synthesis.AbstractC11573j;
import com.android.tools.r8.synthesis.C11558e;
import com.android.tools.r8.synthesis.C11561f;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.C11673u;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.zip.ZipEntry;

public final class D8Command extends BaseCompilerCommand {

    static final boolean f35225O = true;

    private final GlobalSyntheticsConsumer f35226A;

    private final SyntheticInfoConsumer f35227B;

    private final DesugarGraphConsumer f35228C;

    private final StringConsumer f35229D;

    private final InterfaceC9975vm f35230E;

    private final String f35231F;

    private final boolean f35232G;

    private final AbstractC7552hC f35233H;

    private final StringConsumer f35234I;

    private final PartitionMapConsumer f35235J;

    private final boolean f35236K;

    private final boolean f35237L;

    private final C4724u1 f35238M;

    private final Consumer f35239N;

    private final boolean f35240z;

    public static class Builder extends BaseCompilerCommand.Builder<D8Command, Builder> {

        static final boolean f35241O = true;

        private boolean f35242B;

        private Path f35243C;

        private GlobalSyntheticsConsumer f35244D;

        private final ArrayList f35245E;

        private DesugarGraphConsumer f35246F;

        private SyntheticInfoConsumer f35247G;

        private StringConsumer f35248H;

        private String f35249I;

        private final boolean f35250J;

        private final ArrayList f35251K;

        private boolean f35252L;

        private boolean f35253M;

        private Consumer f35254N;

        public void a(PathOrigin pathOrigin, ZipEntry zipEntry, InputStream inputStream) {
            addGlobalSyntheticsResourceProviders(new C11558e(new ArchiveEntryOrigin(zipEntry.getName(), pathOrigin), AbstractC6706c8.a(inputStream)));
        }

        private void e(Path path) {
            if (!C6169Ww.g(path)) {
                addGlobalSyntheticsResourceProviders(new C11561f(path));
                return;
            }
            final PathOrigin pathOrigin = new PathOrigin(path);
            try {
                C11673u.a(path, new C11673u.a() {
                    @Override
                    public final void a(ZipEntry zipEntry, InputStream inputStream) {
                        D8Command.Builder.this.a(pathOrigin, zipEntry, inputStream);
                    }
                });
            } catch (IOException e10) {
                a(pathOrigin, e10);
            }
        }

        public void f(Path path) {
            this.f35251K.add(new C11518y3(path));
        }

        @Override
        public BaseCommand.Builder addClasspathFiles(Collection collection) {
            return addClasspathFiles((Collection<Path>) collection);
        }

        public Builder addGlobalSyntheticsFiles(Path... pathArr) {
            return addGlobalSyntheticsFiles(Arrays.asList(pathArr));
        }

        public Builder addGlobalSyntheticsResourceProviders(GlobalSyntheticsResourceProvider... globalSyntheticsResourceProviderArr) {
            return addGlobalSyntheticsResourceProviders(Arrays.asList(globalSyntheticsResourceProviderArr));
        }

        public Builder addMainDexRules(final List<String> list, final Origin origin) {
            a(new Runnable() {
                @Override
                public final void run() {
                    D8Command.Builder.this.a(list, origin);
                }
            });
            return this;
        }

        public Builder addMainDexRulesFiles(Path... pathArr) {
            return addMainDexRulesFiles(Arrays.asList(pathArr));
        }

        @Override
        public BaseCompilerCommand.Builder addStartupProfileProviders(Collection collection) {
            return addStartupProfileProviders((Collection<StartupProfileProvider>) collection);
        }

        @Override
        public final BaseCommand.Builder c() {
            return this;
        }

        @Override
        public final void d() {
            if (isPrintHelp()) {
                return;
            }
            C5094Ef0 b10 = b();
            if (a().c()) {
                if (this.f35242B) {
                    b10.a("Option --main-dex-list cannot be used with --intermediate");
                }
                if (getProgramConsumer() instanceof DexFilePerClassFileConsumer) {
                    b10.a("Option --main-dex-list cannot be used with --file-per-class");
                }
            }
            if (!this.f35251K.isEmpty()) {
                if (this.f35242B) {
                    b10.a("Option --main-dex-rules cannot be used with --intermediate");
                }
                if (getProgramConsumer() instanceof DexFilePerClassFileConsumer) {
                    b10.a("Option --main-dex-rules cannot be used with --file-per-class");
                }
            }
            if (getMainDexListConsumer() != null && this.f35251K.isEmpty() && !a().c()) {
                b10.a("Option --main-dex-list-output requires --main-dex-rules and/or --main-dex-list");
            }
            int minApiLevel = getMinApiLevel();
            com.android.tools.r8.internal.C2 c22 = com.android.tools.r8.internal.C2.L_MR1;
            if (minApiLevel >= c22.d() && (getMainDexListConsumer() != null || a().c())) {
                b10.a("D8 does not support main-dex inputs and outputs when compiling to API level " + c22.d() + " and above (min API level " + getMinApiLevel() + " was provided)");
            }
            if (m() && getDisableDesugaring()) {
                b10.a("Using desugared library configuration requires desugaring to be enabled");
            }
            if ((getProgramConsumer() instanceof ClassFileConsumer) && getDisableDesugaring() && n()) {
                b10.a("Compiling to CF with --min-api and --no-desugaring is not supported");
            }
            if (!((ArrayList) k()).isEmpty()) {
                if (this.f35242B) {
                    b10.a("D8 startup layout is not supported in intermediate mode");
                }
                int minApiLevel2 = getMinApiLevel();
                com.android.tools.r8.internal.C2 c23 = com.android.tools.r8.internal.C2.L;
                if (minApiLevel2 < c23.d()) {
                    b10.a("D8 startup layout requires native multi dex support (API level " + c23.d() + " and above, min API level " + getMinApiLevel() + " was provided)");
                }
            }
            super.d();
        }

        public DesugarGraphConsumer getDesugarGraphConsumer() {
            return this.f35246F;
        }

        public SyntheticInfoConsumer getSyntheticInfoConsumer() {
            return this.f35247G;
        }

        @Override
        public final D8Command makeCommand() {
            return (isPrintHelp() || isPrintVersion()) ? new D8Command(isPrintHelp(), isPrintVersion()) : a(new C4724u1());
        }

        public final Builder q() {
            this.f35253M = true;
            return this;
        }

        public Builder setBuildMetadataConsumer(Consumer<? super D8BuildMetadata> consumer) {
            this.f35254N = consumer;
            return this;
        }

        public Builder setDesugarGraphConsumer(DesugarGraphConsumer desugarGraphConsumer) {
            this.f35246F = desugarGraphConsumer;
            return this;
        }

        public Builder setDesugaredLibraryKeepRuleConsumer(StringConsumer stringConsumer) {
            this.f35248H = stringConsumer;
            return this;
        }

        @Deprecated
        public Builder setEnableExperimentalMissingLibraryApiModeling(boolean z10) {
            this.f35252L = z10;
            return this;
        }

        public Builder setGlobalSyntheticsConsumer(GlobalSyntheticsConsumer globalSyntheticsConsumer) {
            this.f35243C = null;
            this.f35244D = globalSyntheticsConsumer;
            return this;
        }

        public Builder setGlobalSyntheticsOutput(Path path) {
            this.f35244D = null;
            this.f35243C = path;
            return this;
        }

        public Builder setIntermediate(boolean z10) {
            this.f35242B = z10;
            return this;
        }

        @Deprecated
        public Builder setProguardInputMapFile(Path path) {
            C11662i.a a10 = a();
            a10.getClass();
            a10.f58608l = InterfaceC11677v0.a(path);
            return this;
        }

        public Builder setProguardMapInputFile(Path path) {
            C11662i.a a10 = a();
            a10.getClass();
            a10.f58608l = InterfaceC11677v0.a(path);
            return this;
        }

        public Builder setSyntheticInfoConsumer(SyntheticInfoConsumer syntheticInfoConsumer) {
            this.f35247G = syntheticInfoConsumer;
            return this;
        }

        public void c(byte[] bArr, Origin origin) {
            a().b(bArr, origin);
        }

        public void f(Collection collection) {
            collection.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    D8Command.Builder.this.f((Path) obj);
                }
            });
        }

        @Override
        public Builder addClasspathResourceProvider(ClassFileResourceProvider classFileResourceProvider) {
            return (Builder) super.addClasspathResourceProvider(classFileResourceProvider);
        }

        @Override
        public Builder addDexProgramData(final byte[] bArr, final Origin origin) {
            a(new Runnable() {
                @Override
                public final void run() {
                    D8Command.Builder.this.c(bArr, origin);
                }
            });
            return this;
        }

        public Builder addGlobalSyntheticsFiles(Collection<Path> collection) {
            Iterator<Path> it = collection.iterator();
            while (it.hasNext()) {
                e(it.next());
            }
            return this;
        }

        public Builder addGlobalSyntheticsResourceProviders(Collection<GlobalSyntheticsResourceProvider> collection) {
            final ArrayList arrayList = this.f35245E;
            Objects.requireNonNull(arrayList);
            collection.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    List.this.add((GlobalSyntheticsResourceProvider) obj);
                }
            });
            return this;
        }

        public Builder addMainDexRulesFiles(final Collection<Path> collection) {
            a(new Runnable() {
                @Override
                public final void run() {
                    D8Command.Builder.this.f(collection);
                }
            });
            return this;
        }

        @Override
        public Builder setPartitionMapConsumer(PartitionMapConsumer partitionMapConsumer) {
            if (f35241O || partitionMapConsumer != null) {
                return (Builder) super.setPartitionMapConsumer(partitionMapConsumer);
            }
            throw new AssertionError();
        }

        @Override
        public Builder setPartitionMapOutputPath(Path path) {
            if (f35241O || path != null) {
                return (Builder) super.setPartitionMapOutputPath(path);
            }
            throw new AssertionError();
        }

        public Builder setProguardMapConsumer(StringConsumer stringConsumer) {
            this.proguardMapConsumer = stringConsumer;
            return (Builder) ((BaseCompilerCommand.Builder) c());
        }

        public Builder setProguardMapOutputPath(Path path) {
            if (BaseCompilerCommand.Builder.f35190A || path != null) {
                return (Builder) setProguardMapConsumer((StringConsumer) new StringConsumer.FileConsumer(path));
            }
            throw new AssertionError();
        }

        private Builder(DiagnosticsHandler diagnosticsHandler) {
            super(diagnosticsHandler);
            this.f35242B = false;
            this.f35243C = null;
            this.f35244D = null;
            this.f35245E = new ArrayList();
            this.f35246F = null;
            this.f35247G = null;
            this.f35248H = null;
            this.f35249I = "";
            this.f35250J = true;
            this.f35251K = new ArrayList();
            this.f35252L = false;
            this.f35253M = false;
            this.f35254N = null;
        }

        @Override
        public Builder addClasspathFiles(Path... pathArr) {
            return (Builder) super.addClasspathFiles(pathArr);
        }

        @Override
        public Builder addStartupProfileProviders(Collection<StartupProfileProvider> collection) {
            return (Builder) super.addStartupProfileProviders((Collection) collection);
        }

        @Override
        public Builder addClasspathFiles(Collection<Path> collection) {
            return (Builder) super.addClasspathFiles(collection);
        }

        public Builder addStartupProfileProviders(StartupProfileProvider... startupProfileProviderArr) {
            return (Builder) addStartupProfileProviders((Collection) Arrays.asList(startupProfileProviderArr));
        }

        public final Builder a(String str) {
            this.f35249I = str;
            return this;
        }

        public void a(List list, Origin origin) {
            this.f35251K.add(new C11534z3(list, Paths.get(".", new String[0]), origin));
        }

        @Override
        public final CompilationMode e() {
            return CompilationMode.DEBUG;
        }

        public final D8Command a(C4724u1 c4724u1) {
            AbstractC7552hC a10;
            int minApiLevel;
            ProgramConsumer programConsumer = getProgramConsumer();
            this.f35242B |= programConsumer instanceof DexFilePerClassFileConsumer;
            InterfaceC9975vm a11 = a(c4724u1, false);
            ArrayList arrayList = this.f35251K;
            C5094Ef0 b10 = b();
            AbstractC7552hC abstractC7552hC = C11384q3.f57715f;
            if (arrayList.isEmpty()) {
                int i10 = AbstractC7552hC.f48487c;
                a10 = C6190Xe0.f45779e;
            } else {
                C11384q3 c11384q3 = new C11384q3(c4724u1, b10);
                c11384q3.a(arrayList);
                a10 = AbstractC7552hC.a(c11384q3.a().p());
            }
            AbstractC7552hC abstractC7552hC2 = a10;
            if (!this.f35245E.isEmpty()) {
                addProgramResourceProvider(new C8069kJ(this.f35245E));
            }
            if ((programConsumer instanceof ClassFileConsumer) && getDisableDesugaring()) {
                minApiLevel = com.android.tools.r8.internal.C2.B.d();
            } else {
                minApiLevel = getMinApiLevel();
            }
            return new D8Command(a().a(), getMode(), programConsumer, getMainDexListConsumer(), minApiLevel, b(), this.desugarState, this.f35242B, AbstractC11573j.a(this.f35242B, this.f35243C, this.f35244D, programConsumer), isOptimizeMultidexForLinearAlloc(), getIncludeClassesChecksum(), getDexClassChecksumFilter(), getDesugarGraphConsumer(), getSyntheticInfoConsumer(), this.f35248H, a11, g(), j(), this.f35249I, this.f35250J, abstractC7552hC2, l(), i(), getMapIdProvider(), this.proguardMapConsumer, this.partitionMapConsumer, this.f35252L, this.f35253M, this.f35254N, getAndroidPlatformBuild(), f(), k(), h(), getCancelCompilationChecker(), c4724u1);
        }

        private Builder(C11662i c11662i) {
            super(c11662i);
            this.f35242B = false;
            this.f35243C = null;
            this.f35244D = null;
            this.f35245E = new ArrayList();
            this.f35246F = null;
            this.f35247G = null;
            this.f35248H = null;
            this.f35249I = "";
            this.f35250J = true;
            this.f35251K = new ArrayList();
            this.f35252L = false;
            this.f35253M = false;
            this.f35254N = null;
        }
    }

    public static Builder a(C11662i c11662i) {
        return new Builder(c11662i);
    }

    public static Builder builder() {
        return new Builder(new C11036o());
    }

    public static List<ParseFlagInfo> getParseFlagsInformation() {
        return C11046q.a();
    }

    public static Builder parse(String[] strArr, Origin origin) {
        return new C11046q().a(strArr, origin, builder());
    }

    @Override
    public C8570nJ b() {
        C8570nJ c8570nJ = new C8570nJ(this.f35238M, g());
        boolean z10 = f35225O;
        if (!z10 && c8570nJ.f50690i1) {
            throw new AssertionError();
        }
        c8570nJ.f50709p = this.f35239N;
        c8570nJ.f50690i1 = getMode() == CompilationMode.DEBUG;
        ProgramConsumer programConsumer = getProgramConsumer();
        c8570nJ.f50697l = programConsumer;
        if (programConsumer instanceof ClassFileConsumer) {
            if (!z10 && !c8570nJ.f50657Z) {
                throw new AssertionError();
            }
            c8570nJ.f50657Z = false;
            if (!z10 && !c8570nJ.f50661a0) {
                throw new AssertionError();
            }
            c8570nJ.f50661a0 = false;
        } else if (!z10 && c8570nJ.l().f50754b && e() != C8570nJ.f.f50757b) {
            throw new AssertionError();
        }
        c8570nJ.f50629P1 = getMainDexListConsumer();
        c8570nJ.f50605H1 = c8570nJ.f50690i1;
        c8570nJ.f50643U0 = this.f35232G;
        c8570nJ.d(com.android.tools.r8.internal.C2.a(getMinApiLevel()));
        boolean z11 = this.f35240z;
        c8570nJ.f50595E0 = z11;
        c8570nJ.f50601G0 = z11;
        c8570nJ.f50703n = this.f35226A;
        c8570nJ.f50706o = this.f35227B;
        c8570nJ.f50656Y1 = this.f35228C;
        c8570nJ.f50602G1 = this.f35233H;
        c8570nJ.f50632Q1 = LU.a(LU.a(c8570nJ.f50632Q1, this.f35235J, new C11651u1()), this.f35234I, new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.naming.Q a10;
                a10 = D8Command.this.a((StringConsumer) obj);
                return a10;
            }
        });
        c8570nJ.f50611J1 = (c8570nJ.f50690i1 || this.f35234I == null) ? C8570nJ.i.f50781b : C8570nJ.i.f50782c;
        c8570nJ.X().f50783a = true;
        if (!z10 && c8570nJ.W()) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.R()) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.f50736y) {
            throw new AssertionError();
        }
        c8570nJ.f50736y = true;
        if (!z10 && c8570nJ.f50609J) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.f50669c0) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.f50677e0.f50789a) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.f50636S) {
            throw new AssertionError();
        }
        c8570nJ.f50616L0 = e();
        c8570nJ.f50639T = getIncludeClassesChecksum();
        c8570nJ.f50642U = getDexClassChecksumFilter();
        c8570nJ.f50608I1 = isOptimizeMultidexForLinearAlloc();
        c8570nJ.x().a(this.f35230E, this.f35231F);
        c8570nJ.f50647V1 = this.f35229D;
        if ((c8570nJ.f50697l instanceof ClassFileConsumer) || (System.getProperty("com.android.tools.r8.enableApiOutliningAndStubbing") == null && !this.f35236K)) {
            c8570nJ.a().a().c().d();
        }
        if (this.f35237L) {
            c8570nJ.q().f52268c = true;
        }
        if (!z10 && c8570nJ.f50681f1 != null) {
            throw new AssertionError();
        }
        c8570nJ.f50681f1 = new A4(getAssertionsConfiguration(), AssertionsConfiguration.a(g()).setCompileTimeDisable().setScopeAll().build());
        c8570nJ.f50721t = QD.a(getOutputInspections());
        if (!C8570nJ.f50578e2) {
            if (!z10 && c8570nJ.f50695k0 != -1) {
                throw new AssertionError();
            }
            c8570nJ.f50695k0 = getThreadCount();
        }
        c8570nJ.n();
        C8570nJ.g K10 = c8570nJ.K();
        if (c8570nJ.P()) {
            K10.h();
        } else {
            if (!z10 && !(c8570nJ.f50697l instanceof ClassFileConsumer)) {
                throw new AssertionError();
            }
            K10.a();
        }
        boolean androidPlatformBuild = getAndroidPlatformBuild();
        if (!C8570nJ.f50581h2 && c8570nJ.f50598F0) {
            throw new AssertionError();
        }
        if (androidPlatformBuild) {
            c8570nJ.a().b();
            c8570nJ.f50625O0 = true;
            c8570nJ.f50598F0 = true;
            c8570nJ.f50637S0 = true;
        }
        c8570nJ.q().f52266a = c();
        if (!h().isEmpty()) {
            c8570nJ.E().f51625h = h();
        }
        c8570nJ.f50700m = C6374a80.a(d(), c8570nJ.f50691j);
        c8570nJ.f50668c = getCancelCompilationChecker();
        W.b bVar = W.b.f35802b;
        c8570nJ.f50734x0 = bVar;
        c8570nJ.a(f());
        C9328rt.a c10 = C9328rt.a(bVar).c();
        a(c10);
        C9328rt.a b10 = c10.b(this.f35240z);
        b10.f52201n = this.f35230E;
        b10.f52204q = this.f35233H;
        b10.f52210w = this.f35236K;
        c8570nJ.f50731w0 = b10.a();
        return c8570nJ;
    }

    public com.android.tools.r8.naming.Q a(StringConsumer stringConsumer) {
        boolean z10 = com.android.tools.r8.naming.H0.f55638c;
        return new com.android.tools.r8.naming.H0(this.f35234I);
    }

    public static Builder parse(String[] strArr, Origin origin, DiagnosticsHandler diagnosticsHandler) {
        return new C11046q().a(strArr, origin, builder(diagnosticsHandler));
    }

    private D8Command(C11662i c11662i, CompilationMode compilationMode, ProgramConsumer programConsumer, StringConsumer stringConsumer, int i10, C5094Ef0 c5094Ef0, C8570nJ.f fVar, boolean z10, GlobalSyntheticsConsumer globalSyntheticsConsumer, boolean z11, boolean z12, BiPredicate biPredicate, DesugarGraphConsumer desugarGraphConsumer, SyntheticInfoConsumer syntheticInfoConsumer, StringConsumer stringConsumer2, InterfaceC9975vm interfaceC9975vm, List list, List list2, String str, boolean z13, AbstractC7552hC abstractC7552hC, int i11, AbstractC9162qt abstractC9162qt, MapIdProvider mapIdProvider, StringConsumer stringConsumer3, PartitionMapConsumer partitionMapConsumer, boolean z14, boolean z15, Consumer consumer, boolean z16, List list3, List list4, ClassConflictResolver classConflictResolver, CancelCompilationChecker cancelCompilationChecker, C4724u1 c4724u1) {
        super(c11662i, compilationMode, programConsumer, stringConsumer, i10, c5094Ef0, fVar, z11, z12, biPredicate, list, list2, i11, abstractC9162qt, mapIdProvider, null, z16, list3, list4, classConflictResolver, cancelCompilationChecker);
        this.f35240z = z10;
        this.f35226A = globalSyntheticsConsumer;
        this.f35227B = syntheticInfoConsumer;
        this.f35228C = desugarGraphConsumer;
        this.f35229D = stringConsumer2;
        this.f35230E = interfaceC9975vm;
        this.f35231F = str;
        this.f35232G = z13;
        this.f35233H = abstractC7552hC;
        this.f35234I = stringConsumer3;
        this.f35235J = partitionMapConsumer;
        this.f35236K = z14;
        this.f35237L = z15;
        this.f35238M = c4724u1;
        this.f35239N = consumer;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    private D8Command(boolean z10, boolean z11) {
        super(z10, z11);
        this.f35240z = false;
        this.f35226A = null;
        this.f35227B = null;
        this.f35228C = null;
        this.f35229D = null;
        this.f35230E = null;
        this.f35231F = null;
        this.f35232G = true;
        this.f35233H = null;
        this.f35234I = null;
        this.f35235J = null;
        this.f35236K = false;
        this.f35237L = false;
        this.f35238M = null;
        this.f35239N = null;
    }
}
