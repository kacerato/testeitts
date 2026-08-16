package com.android.tools.r8;

import com.android.tools.r8.AssertionsConfiguration;
import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.BaseCompilerCommand;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.R8Command;
import com.android.tools.r8.ResourceShrinkerConfiguration;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.A4;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8471ml0;
import com.android.tools.r8.internal.AbstractC9162qt;
import com.android.tools.r8.internal.AbstractC9247rO;
import com.android.tools.r8.internal.BN;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5296Ht;
import com.android.tools.r8.internal.C5705Ov;
import com.android.tools.r8.internal.C5821Qv;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6374a80;
import com.android.tools.r8.internal.C7608hb0;
import com.android.tools.r8.internal.C8304ll0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8981po0;
import com.android.tools.r8.internal.C9083qP;
import com.android.tools.r8.internal.C9328rt;
import com.android.tools.r8.internal.C9905vJ;
import com.android.tools.r8.internal.InterfaceC6044Uq0;
import com.android.tools.r8.internal.InterfaceC9975vm;
import com.android.tools.r8.internal.LU;
import com.android.tools.r8.internal.QD;
import com.android.tools.r8.internal.WR;
import com.android.tools.r8.metadata.R8BuildMetadata;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.shaking.AbstractC11468v3;
import com.android.tools.r8.shaking.C11350o3;
import com.android.tools.r8.shaking.C11384q3;
import com.android.tools.r8.shaking.C11434t3;
import com.android.tools.r8.shaking.C11518y3;
import com.android.tools.r8.shaking.C11534z3;
import com.android.tools.r8.shaking.InterfaceC11485w3;
import com.android.tools.r8.startup.StartupProfileProvider;
import com.android.tools.r8.utils.ArchiveResourceProvider;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public final class R8Command extends BaseCompilerCommand {

    static final boolean f35454b0 = true;

    private final C11350o3 f35455A;

    private final ArrayList f35456B;

    private final boolean f35457C;

    private final boolean f35458D;

    private final boolean f35459E;

    private final boolean f35460F;

    private final Optional f35461G;

    private final StringConsumer f35462H;

    private final PartitionMapConsumer f35463I;

    private final StringConsumer f35464J;

    private final StringConsumer f35465K;

    private final StringConsumer f35466L;

    private final GraphConsumer f35467M;

    private final GraphConsumer f35468N;

    private final Consumer f35469O;

    private final StringConsumer f35470P;

    private final InterfaceC9975vm f35471Q;

    private final C5821Qv f35472R;

    private final String f35473S;

    private final boolean f35474T;

    private final boolean f35475U;

    private final AndroidResourceProvider f35476V;

    private final AndroidResourceConsumer f35477W;

    private final ResourceShrinkerConfiguration f35478X;

    private final Consumer f35479Y;

    private final C7608hb0 f35480Z;

    private final long f35481a0;

    private final AbstractC7552hC f35482z;

    public static class Builder extends BaseCompilerCommand.Builder<R8Command, Builder> {

        static final boolean f35483e0 = true;

        private final ArrayList f35484B;

        private Consumer f35485C;

        private Consumer f35486D;

        private StringConsumer f35487E;

        private final ArrayList f35488F;

        private final ArrayList f35489G;

        private boolean f35490H;

        private boolean f35491I;

        private boolean f35492J;

        private boolean f35493K;

        private Optional f35494L;

        private StringConsumer f35495M;

        private StringConsumer f35496N;

        private StringConsumer f35497O;

        private GraphConsumer f35498P;

        private GraphConsumer f35499Q;

        private InputDependencyGraphConsumer f35500R;

        private Consumer f35501S;

        private final C5705Ov f35502T;

        private String f35503U;

        private boolean f35504V;

        private boolean f35505W;

        private boolean f35506X;

        private C8304ll0 f35507Y;

        private AndroidResourceProvider f35508Z;

        private AndroidResourceConsumer f35509a0;

        private ResourceShrinkerConfiguration f35510b0;

        private C7608hb0 f35511c0;

        private final C11434t3.a f35512d0;
        public boolean enableStartupLayoutOptimization;

        private static void a(C9905vJ c9905vJ) {
            Iterator it = c9905vJ.f53076a.iterator();
            while (it.hasNext()) {
                for (C4516j1 c4516j1 : ((com.android.tools.r8.graph.H2) it.next()).z1()) {
                    if (c4516j1.b1() && !f35483e0 && c4516j1.Q0().v0()) {
                        throw new AssertionError((Object) ("Unexpected method with DEX code: " + c4516j1.j0()));
                    }
                }
            }
        }

        public void b(List list, Origin origin) {
            this.f35489G.add(new C11534z3(list, Paths.get(".", new String[0]), origin));
        }

        public void f(Path path) {
            this.f35484B.add(new C11518y3(path));
        }

        public Builder addFeatureSplit(Function<FeatureSplit.Builder, FeatureSplit> function) {
            FeatureSplit apply = function.apply(FeatureSplit.a(b()));
            this.f35502T.f43077a.add(apply);
            Iterator<ProgramResourceProvider> it = apply.getProgramResourceProviders().iterator();
            while (it.hasNext()) {
                addProgramResourceProvider((ProgramResourceProvider) new C4335f0(it.next()));
            }
            return this;
        }

        public Builder addKeepSpecificationData(byte[] bArr, Origin origin) {
            this.f35488F.add(new com.android.tools.r8.shaking.Y1(origin, bArr));
            return this;
        }

        public Builder addKeepSpecificationFiles(Path... pathArr) {
            return addKeepSpecificationFiles(Arrays.asList(pathArr));
        }

        public Builder addMainDexRules(final List<String> list, final Origin origin) {
            a(new Runnable() {
                @Override
                public final void run() {
                    R8Command.Builder.this.a(list, origin);
                }
            });
            return this;
        }

        public Builder addMainDexRulesFiles(Path... pathArr) {
            return addMainDexRulesFiles(Arrays.asList(pathArr));
        }

        public Builder addProguardConfiguration(final List<String> list, final Origin origin) {
            a(new Runnable() {
                @Override
                public final void run() {
                    R8Command.Builder.this.b(list, origin);
                }
            });
            return this;
        }

        public Builder addProguardConfigurationFiles(final Path... pathArr) {
            a(new Runnable() {
                @Override
                public final void run() {
                    R8Command.Builder.this.c(pathArr);
                }
            });
            return this;
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
            if (getProgramConsumer() instanceof DexFilePerClassFileConsumer) {
                b10.a("R8 does not support compiling to a single DEX file per Java class file");
            }
            if (getMainDexListConsumer() != null && !a().c() && this.f35484B.isEmpty()) {
                b10.a("Option --main-dex-list-output requires --main-dex-rules and/or --main-dex-list");
            }
            if (!(getProgramConsumer() instanceof ClassFileConsumer) && n()) {
                int minApiLevel = getMinApiLevel();
                com.android.tools.r8.internal.C2 c22 = com.android.tools.r8.internal.C2.L;
                if (minApiLevel >= c22.d() && (getMainDexListConsumer() != null || !this.f35484B.isEmpty() || a().c())) {
                    b10.a("R8 does not support main-dex inputs and outputs when compiling to API level " + c22.d() + " and above");
                }
            }
            ArrayList arrayList = this.f35502T.f43077a;
            int size = arrayList.size();
            int i10 = 0;
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                FeatureSplit featureSplit = (FeatureSplit) obj;
                if (!f35483e0 && !(featureSplit.getProgramConsumer() instanceof DexIndexedConsumer) && featureSplit.getAndroidResourceProvider() == null) {
                    throw new AssertionError();
                }
                if (getProgramConsumer() != null && !(getProgramConsumer() instanceof DexIndexedConsumer)) {
                    b10.a("R8 does not support class file output when using feature splits");
                }
            }
            ArrayList arrayList2 = this.f35168e;
            int size2 = arrayList2.size();
            while (i10 < size2) {
                Object obj2 = arrayList2.get(i10);
                i10++;
                Path path = (Path) obj2;
                if (C6169Ww.d(path)) {
                    b10.error(new StringDiagnostic("R8 does not support compiling DEX inputs", new PathOrigin(path)));
                }
            }
            if ((getProgramConsumer() instanceof ClassFileConsumer) && n()) {
                b10.a("R8 does not support --min-api when compiling to class files");
            }
            if (m() && getDisableDesugaring()) {
                b10.a("Using desugared library configuration requires desugaring to be enabled");
            }
            if (this.f35511c0.f48614a) {
                C5094Ef0 b11 = b();
                if (!(getProgramConsumer() instanceof DexIndexedConsumer)) {
                    b11.a("Partial shrinking does not support generating class files");
                }
                if (!n() || getMinApiLevel() < com.android.tools.r8.internal.C2.L.d()) {
                    b11.a("Partial shrinking requires min API level >= 21");
                }
                if (this.f35492J) {
                    b11.a("Partial shrinking does not support Proguard compatibility mode");
                }
            }
            super.d();
        }

        @Override
        public final CompilationMode e() {
            return CompilationMode.RELEASE;
        }

        @Deprecated
        public Builder enableExperimentalPartialShrinking(String str, String str2) {
            if (str == null || str.isEmpty()) {
                str = "androidx.**,kotlin.**,kotlinx.**";
            }
            this.f35511c0 = C7608hb0.a(str, str2);
            return this;
        }

        public Builder enableLegacyFullModeForKeepRules(boolean z10) {
            this.f35512d0.f57852a = z10;
            return this;
        }

        public Builder enableLegacyFullModeForKeepRulesWarnings(boolean z10) {
            this.f35512d0.f57853b = z10;
            return this;
        }

        public boolean getProguardCompatibility() {
            return this.f35492J;
        }

        public StringConsumer getProguardConfigurationConsumer() {
            return this.f35497O;
        }

        @Override
        public final R8Command makeCommand() {
            if (isPrintHelp() || isPrintVersion()) {
                return new R8Command(isPrintHelp(), isPrintVersion());
            }
            C4724u1 c4724u1 = new C4724u1();
            C11434t3 a10 = this.f35512d0.a();
            C11384q3 c11384q3 = new C11384q3(c4724u1, b(), a10, this.f35500R);
            C11350o3.a aVar = c11384q3.f57724a;
            aVar.f57635L = this.f35492J;
            if (!this.f35489G.isEmpty()) {
                c11384q3.a(this.f35489G);
            }
            if (getMode() == CompilationMode.DEBUG) {
                this.f35491I = true;
                aVar.d();
            }
            if (this.f35490H) {
                aVar.e();
            }
            if (this.f35491I) {
                aVar.c();
            }
            Consumer consumer = this.f35485C;
            if (consumer != null) {
                consumer.accept(aVar);
            }
            a(b(), c11384q3);
            a(c11384q3);
            C11350o3 a11 = aVar.a();
            if (a10.f57850f || !(a11.f().f56580l || a11.f().f56582n || a11.f().f56584p)) {
                return a(c4724u1, a11);
            }
            throw fatalError(new StringDiagnostic("Illegal attempt to keep runtime invisible annotations"));
        }

        public void q() {
            this.f35512d0.a(true);
        }

        public Builder setAndroidResourceConsumer(AndroidResourceConsumer androidResourceConsumer) {
            this.f35509a0 = androidResourceConsumer;
            return this;
        }

        public Builder setAndroidResourceProvider(AndroidResourceProvider androidResourceProvider) {
            this.f35508Z = androidResourceProvider;
            return this;
        }

        public Builder setBuildMetadataConsumer(Consumer<? super R8BuildMetadata> consumer) {
            this.f35501S = consumer;
            return this;
        }

        public Builder setDesugaredLibraryKeepRuleConsumer(StringConsumer stringConsumer) {
            this.f35487E = stringConsumer;
            return this;
        }

        public Builder setDisableMinification(boolean z10) {
            this.f35491I = z10;
            return this;
        }

        public Builder setDisableTreeShaking(boolean z10) {
            this.f35490H = z10;
            return this;
        }

        @Deprecated
        public Builder setEnableExperimentalIsolatedSplits(boolean z10) {
            return setEnableIsolatedSplits(z10);
        }

        @Deprecated
        public Builder setEnableExperimentalKeepAnnotations(boolean z10) {
            this.f35505W = z10;
            return this;
        }

        @Deprecated
        public Builder setEnableExperimentalMissingLibraryApiModeling(boolean z10) {
            this.f35504V = z10;
            return this;
        }

        public Builder setEnableIsolatedSplits(boolean z10) {
            this.f35502T.f43078b = z10;
            return this;
        }

        public Builder setEnableStartupLayoutOptimization(boolean z10) {
            this.enableStartupLayoutOptimization = z10;
            return this;
        }

        public Builder setInputDependencyGraphConsumer(InputDependencyGraphConsumer inputDependencyGraphConsumer) {
            this.f35500R = inputDependencyGraphConsumer;
            return this;
        }

        public Builder setKeptGraphConsumer(GraphConsumer graphConsumer) {
            this.f35498P = graphConsumer;
            return this;
        }

        public Builder setMainDexKeptGraphConsumer(GraphConsumer graphConsumer) {
            this.f35499Q = graphConsumer;
            return this;
        }

        public Builder setProguardCompatibility(boolean z10) {
            this.f35492J = z10;
            return this;
        }

        public Builder setProguardConfigurationConsumer(StringConsumer stringConsumer) {
            this.f35497O = stringConsumer;
            return this;
        }

        public Builder setProguardMapInputFile(Path path) {
            C11662i.a a10 = a();
            a10.getClass();
            a10.f58608l = InterfaceC11677v0.a(path);
            return this;
        }

        public Builder setProguardSeedsConsumer(StringConsumer stringConsumer) {
            this.f35496N = stringConsumer;
            return this;
        }

        public Builder setProguardUsageConsumer(StringConsumer stringConsumer) {
            this.f35495M = stringConsumer;
            return this;
        }

        public Builder setProtectApiSurface(boolean z10) {
            this.f35493K = z10;
            return this;
        }

        public Builder setResourceShrinkerConfiguration(Function<ResourceShrinkerConfiguration.Builder, ResourceShrinkerConfiguration> function) {
            this.f35510b0 = function.apply(ResourceShrinkerConfiguration.builder(b()));
            return this;
        }

        public void c(Path[] pathArr) {
            for (Path path : pathArr) {
                this.f35489G.add(new C11518y3(path));
            }
        }

        public void e(Path path) {
            this.f35488F.add(new com.android.tools.r8.shaking.Z1(path));
        }

        public void f(Collection collection) {
            collection.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    R8Command.Builder.this.f((Path) obj);
                }
            });
        }

        public Builder addKeepSpecificationFiles(Collection<Path> collection) {
            collection.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    R8Command.Builder.this.e((Path) obj);
                }
            });
            return this;
        }

        public Builder addMainDexRulesFiles(final Collection<Path> collection) {
            a(new Runnable() {
                @Override
                public final void run() {
                    R8Command.Builder.this.f(collection);
                }
            });
            return this;
        }

        @Override
        public Builder addProgramResourceProvider(ProgramResourceProvider programResourceProvider) {
            if (programResourceProvider instanceof C9905vJ) {
                C9905vJ c9905vJ = (C9905vJ) programResourceProvider;
                boolean z10 = f35483e0;
                if (!z10) {
                    a(c9905vJ);
                }
                if (z10 || c9905vJ.getDataResourceProvider() == null) {
                    return (Builder) super.addProgramResourceProvider((ProgramResourceProvider) c9905vJ);
                }
                throw new AssertionError();
            }
            return (Builder) super.addProgramResourceProvider(new C4837h0(programResourceProvider));
        }

        public Builder addProguardConfigurationFiles(final List<Path> list) {
            a(new Runnable() {
                @Override
                public final void run() {
                    R8Command.Builder.this.a(list);
                }
            });
            return this;
        }

        public void r() {
            this.f35512d0.b(true);
        }

        public void s() {
            this.f35512d0.c(true);
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

        public void t() {
            this.f35512d0.d(true);
        }

        public Builder(DiagnosticsHandler diagnosticsHandler) {
            super(diagnosticsHandler);
            this.f35484B = new ArrayList();
            this.f35485C = null;
            this.f35486D = null;
            this.f35487E = null;
            this.f35488F = new ArrayList();
            this.f35489G = new ArrayList();
            this.f35490H = false;
            this.f35491I = false;
            this.f35492J = false;
            this.f35493K = false;
            this.f35494L = Optional.empty();
            this.f35495M = null;
            this.f35496N = null;
            this.f35497O = null;
            this.f35498P = null;
            this.f35499Q = null;
            this.f35500R = null;
            this.f35501S = null;
            this.f35502T = new C5705Ov();
            this.f35503U = "";
            this.f35504V = false;
            this.f35505W = System.getProperty("com.android.tools.r8.enableKeepAnnotations") != null;
            this.f35506X = System.getProperty("com.android.tools.r8.readEmbeddedRulesFromClasspathAndLibrary") != null;
            this.enableStartupLayoutOptimization = true;
            this.f35507Y = null;
            this.f35508Z = null;
            this.f35509a0 = null;
            this.f35510b0 = ResourceShrinkerConfiguration.DEFAULT_CONFIGURATION;
            this.f35511c0 = C7608hb0.a(System.getProperty("com.android.tools.r8.experimentalPartialShrinkingIncludePatterns"), System.getProperty("com.android.tools.r8.experimentalPartialShrinkingExcludePatterns"));
            this.f35512d0 = C11434t3.a().b();
            b(!(System.getProperty("com.android.tools.r8.allowDexInputToR8") != null));
        }

        @Override
        public Builder addStartupProfileProviders(Collection<StartupProfileProvider> collection) {
            return (Builder) super.addStartupProfileProviders((Collection) collection);
        }

        @Override
        public Builder setOutput(Path path, OutputMode outputMode) {
            setOutput(path, outputMode, true);
            return this;
        }

        public Builder addStartupProfileProviders(StartupProfileProvider... startupProfileProviderArr) {
            return (Builder) addStartupProfileProviders((Collection) Arrays.asList(startupProfileProviderArr));
        }

        public void b(Consumer<List<AbstractC11468v3>> consumer) {
            Consumer consumer2 = this.f35486D;
            if (consumer2 != null) {
                consumer = consumer2.andThen(consumer);
            }
            this.f35486D = consumer;
        }

        @Deprecated
        public void c(boolean z10) {
            this.f35506X = z10;
        }

        @Override
        public Builder setOutput(Path path, OutputMode outputMode, boolean z10) {
            this.f35494L = Optional.of(Boolean.valueOf(z10));
            return (Builder) super.setOutput(path, outputMode, z10);
        }

        public final Builder a(String str) {
            this.f35503U = str;
            return this;
        }

        public Builder a(C8304ll0 c8304ll0) {
            this.f35507Y = c8304ll0;
            return this;
        }

        public void a(List list, Origin origin) {
            this.f35484B.add(new C11534z3(list, Paths.get(".", new String[0]), origin));
        }

        public void a(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f35489G.add(new C11518y3((Path) it.next()));
            }
        }

        public Builder a(C7608hb0 c7608hb0) {
            this.f35511c0 = c7608hb0;
            return this;
        }

        public final R8Command a(C4724u1 c4724u1, C11350o3 c11350o3) {
            AbstractC7552hC a10;
            C8570nJ.f fVar;
            StringConsumer stringConsumer;
            C5821Qv c5821Qv;
            long nanoTime = System.nanoTime();
            C5094Ef0 b10 = b();
            ArrayList arrayList = this.f35484B;
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
            InterfaceC9975vm a11 = a(c4724u1, false);
            a().c(c11350o3.h());
            if (!f35483e0 && getProgramConsumer() == null) {
                throw new AssertionError();
            }
            if (getProgramConsumer() instanceof ClassFileConsumer) {
                fVar = C8570nJ.f.f50757b;
            } else {
                fVar = this.desugarState;
            }
            C8570nJ.f fVar2 = fVar;
            C11662i a12 = a().a();
            ProgramConsumer programConsumer = getProgramConsumer();
            StringConsumer mainDexListConsumer = getMainDexListConsumer();
            CompilationMode mode = getMode();
            int minApiLevel = getMinApiLevel();
            boolean A10 = c11350o3.A();
            boolean v10 = c11350o3.v();
            boolean z10 = this.f35492J;
            boolean z11 = this.f35493K;
            Optional optional = this.f35494L;
            StringConsumer stringConsumer2 = this.proguardMapConsumer;
            PartitionMapConsumer partitionMapConsumer = this.partitionMapConsumer;
            StringConsumer stringConsumer3 = this.f35495M;
            StringConsumer stringConsumer4 = this.f35496N;
            StringConsumer stringConsumer5 = this.f35497O;
            GraphConsumer graphConsumer = this.f35498P;
            GraphConsumer graphConsumer2 = this.f35499Q;
            Consumer consumer = this.f35486D;
            boolean isOptimizeMultidexForLinearAlloc = isOptimizeMultidexForLinearAlloc();
            boolean includeClassesChecksum = getIncludeClassesChecksum();
            BiPredicate<String, Long> dexClassChecksumFilter = getDexClassChecksumFilter();
            StringConsumer stringConsumer6 = this.f35487E;
            C5705Ov c5705Ov = this.f35502T;
            if (c5705Ov.f43077a.isEmpty()) {
                c5821Qv = null;
                stringConsumer = stringConsumer6;
            } else {
                stringConsumer = stringConsumer6;
                c5821Qv = new C5821Qv(c5705Ov.f43077a, c5705Ov.f43078b);
            }
            R8Command r8Command = new R8Command(a12, programConsumer, abstractC7552hC2, mainDexListConsumer, c11350o3, mode, minApiLevel, b10, fVar2, A10, v10, z10, z11, optional, stringConsumer2, partitionMapConsumer, stringConsumer3, stringConsumer4, stringConsumer5, graphConsumer, graphConsumer2, consumer, isOptimizeMultidexForLinearAlloc, includeClassesChecksum, dexClassChecksumFilter, stringConsumer, a11, c5821Qv, g(), j(), this.f35503U, l(), i(), getMapIdProvider(), getSourceFileProvider(), this.f35504V, this.enableStartupLayoutOptimization, getAndroidPlatformBuild(), f(), k(), h(), getCancelCompilationChecker(), this.f35508Z, this.f35509a0, this.f35510b0, this.f35488F, this.f35501S, this.f35511c0, nanoTime);
            InputDependencyGraphConsumer inputDependencyGraphConsumer = this.f35500R;
            if (inputDependencyGraphConsumer != null) {
                inputDependencyGraphConsumer.finished();
            }
            return r8Command;
        }

        private Builder(C11662i c11662i) {
            super(c11662i);
            this.f35484B = new ArrayList();
            this.f35485C = null;
            this.f35486D = null;
            this.f35487E = null;
            this.f35488F = new ArrayList();
            this.f35489G = new ArrayList();
            this.f35490H = false;
            this.f35491I = false;
            this.f35492J = false;
            this.f35493K = false;
            this.f35494L = Optional.empty();
            this.f35495M = null;
            this.f35496N = null;
            this.f35497O = null;
            this.f35498P = null;
            this.f35499Q = null;
            this.f35500R = null;
            this.f35501S = null;
            this.f35502T = new C5705Ov();
            this.f35503U = "";
            this.f35504V = false;
            this.f35505W = System.getProperty("com.android.tools.r8.enableKeepAnnotations") != null;
            this.f35506X = System.getProperty("com.android.tools.r8.readEmbeddedRulesFromClasspathAndLibrary") != null;
            this.enableStartupLayoutOptimization = true;
            this.f35507Y = null;
            this.f35508Z = null;
            this.f35509a0 = null;
            this.f35510b0 = ResourceShrinkerConfiguration.DEFAULT_CONFIGURATION;
            this.f35511c0 = C7608hb0.a(System.getProperty("com.android.tools.r8.experimentalPartialShrinkingIncludePatterns"), System.getProperty("com.android.tools.r8.experimentalPartialShrinkingExcludePatterns"));
            this.f35512d0 = C11434t3.a().b();
            b(!(System.getProperty("com.android.tools.r8.allowDexInputToR8") != null));
        }

        private void a(C5094Ef0 c5094Ef0, C11384q3 c11384q3) {
            ArchiveResourceProvider a10;
            ArchiveResourceProvider a11;
            InterfaceC6044Uq0 a12 = AbstractC8471ml0.a(this.f35507Y, c5094Ef0);
            Set b10 = C4875Al0.b(new com.android.tools.r8.shaking.P0[0]);
            C11662i.a a13 = a();
            a13.b();
            final ArrayList arrayList = new ArrayList((Collection) a13.f58597a.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((ProgramResourceProvider) obj).getDataResourceProvider();
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Objects.nonNull((DataResourceProvider) obj);
                }
            }).collect(Collectors.toList()));
            ArrayList arrayList2 = c11384q3.f57724a.f57641b;
            int size = arrayList2.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList2.get(i10);
                i10++;
                com.android.tools.r8.shaking.P0 p02 = (com.android.tools.r8.shaking.P0) obj;
                if (b10.add(p02) && (a11 = a().a(p02)) != null) {
                    arrayList.add(a11);
                }
            }
            if (this.f35506X) {
                a().f58601e.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        return ((ClassFileResourceProvider) obj2).getDataResourceProvider();
                    }
                }).filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj2) {
                        return Objects.nonNull((DataResourceProvider) obj2);
                    }
                }).forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        List.this.add((DataResourceProvider) obj2);
                    }
                });
                a().f58602f.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        return ((ClassFileResourceProvider) obj2).getDataResourceProvider();
                    }
                }).filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj2) {
                        return Objects.nonNull((DataResourceProvider) obj2);
                    }
                }).forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        List.this.add((DataResourceProvider) obj2);
                    }
                });
                for (com.android.tools.r8.shaking.P0 p03 : c11384q3.f57724a.a().h()) {
                    if (b10.add(p03) && (a10 = a().a(p03)) != null) {
                        arrayList.add(a10);
                    }
                }
            }
            int size2 = arrayList.size();
            int i11 = 0;
            while (i11 < size2) {
                Object obj2 = arrayList.get(i11);
                i11++;
                DataResourceProvider dataResourceProvider = (DataResourceProvider) obj2;
                if (dataResourceProvider != null) {
                    try {
                        C5296Ht c5296Ht = new C5296Ht(c5094Ef0, a12);
                        dataResourceProvider.accept(c5296Ht);
                        ArrayList arrayList3 = !c5296Ht.f40903d.isEmpty() ? c5296Ht.f40903d : c5296Ht.f40902c;
                        int size3 = arrayList3.size();
                        int i12 = 0;
                        while (i12 < size3) {
                            Object obj3 = arrayList3.get(i12);
                            i12++;
                            InterfaceC11485w3 interfaceC11485w3 = (InterfaceC11485w3) obj3;
                            try {
                                c11384q3.a(interfaceC11485w3);
                            } catch (Exception e10) {
                                c5296Ht.f40901b.error(new ExceptionDiagnostic(e10, interfaceC11485w3.getOrigin()));
                            }
                        }
                    } catch (ResourceException e11) {
                        c5094Ef0.error(new ExceptionDiagnostic(e11));
                    }
                }
            }
        }

        private Builder(C11662i c11662i, DiagnosticsHandler diagnosticsHandler) {
            super(c11662i, diagnosticsHandler);
            this.f35484B = new ArrayList();
            this.f35485C = null;
            this.f35486D = null;
            this.f35487E = null;
            this.f35488F = new ArrayList();
            this.f35489G = new ArrayList();
            this.f35490H = false;
            this.f35491I = false;
            this.f35492J = false;
            this.f35493K = false;
            this.f35494L = Optional.empty();
            this.f35495M = null;
            this.f35496N = null;
            this.f35497O = null;
            this.f35498P = null;
            this.f35499Q = null;
            this.f35500R = null;
            this.f35501S = null;
            this.f35502T = new C5705Ov();
            this.f35503U = "";
            this.f35504V = false;
            this.f35505W = System.getProperty("com.android.tools.r8.enableKeepAnnotations") != null;
            this.f35506X = System.getProperty("com.android.tools.r8.readEmbeddedRulesFromClasspathAndLibrary") != null;
            this.enableStartupLayoutOptimization = true;
            this.f35507Y = null;
            this.f35508Z = null;
            this.f35509a0 = null;
            this.f35510b0 = ResourceShrinkerConfiguration.DEFAULT_CONFIGURATION;
            this.f35511c0 = C7608hb0.a(System.getProperty("com.android.tools.r8.experimentalPartialShrinkingIncludePatterns"), System.getProperty("com.android.tools.r8.experimentalPartialShrinkingExcludePatterns"));
            this.f35512d0 = C11434t3.a().b();
            b(!(System.getProperty("com.android.tools.r8.allowDexInputToR8") != null));
        }

        private void a(final C11384q3 c11384q3) {
            if (this.f35505W) {
                try {
                    C11662i.a a10 = a();
                    a10.b();
                    ArrayList arrayList = a10.f58597a;
                    int size = arrayList.size();
                    int i10 = 0;
                    while (i10 < size) {
                        Object obj = arrayList.get(i10);
                        i10++;
                        for (final ProgramResource programResource : ((ProgramResourceProvider) obj).getProgramResources()) {
                            if (programResource.getKind() == ProgramResource.Kind.CF) {
                                ArrayList a11 = AbstractC9247rO.a(programResource.getBytes());
                                if (!a11.isEmpty()) {
                                    final C9083qP c9083qP = new C9083qP(new Consumer() {
                                        @Override
                                        public final void accept(Object obj2) {
                                            R8Command.Builder.a(ProgramResource.this, c11384q3, (String) obj2);
                                        }
                                    });
                                    a11.forEach(new Consumer() {
                                        @Override
                                        public final void accept(Object obj2) {
                                            C9083qP.this.a((BN) obj2);
                                        }
                                    });
                                }
                            }
                        }
                    }
                } catch (ResourceException e10) {
                    C5094Ef0 c5094Ef0 = a().f58609m;
                    c5094Ef0.a(null, new ExceptionDiagnostic(e10));
                    throw c5094Ef0.f39969c;
                }
            }
        }

        public static void a(ProgramResource programResource, C11384q3 c11384q3, String str) {
            c11384q3.a(new C11534z3(Collections.singletonList(str), null, programResource.getOrigin()));
        }

        public void a(final Consumer<C11350o3.a> consumer) {
            final Consumer consumer2 = this.f35485C;
            this.f35485C = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    R8Command.Builder.a(Consumer.this, consumer, (C11350o3.a) obj);
                }
            };
        }

        public static void a(Consumer consumer, Consumer consumer2, C11350o3.a aVar) {
            if (consumer != null) {
                consumer.accept(aVar);
            }
            consumer2.accept(aVar);
        }
    }

    public static Builder a(C11662i c11662i) {
        return new Builder(c11662i);
    }

    public static Builder builder() {
        return new Builder(new C4340g0());
    }

    public void c(C9328rt.a aVar) {
        aVar.e(this.f35478X.isOptimizedShrinking());
    }

    public static List<ParseFlagInfo> getParseFlagsInformation() {
        return AbstractC7552hC.a(C11037o0.a());
    }

    public static Builder parse(String[] strArr, Origin origin) {
        return new C11037o0().a(strArr, origin, builder());
    }

    @Override
    public C8570nJ b() {
        C8570nJ.i iVar;
        AssertionsConfiguration compileTimeDisableAllAssertions;
        com.android.tools.r8.naming.T0 t02;
        String o10;
        StringConsumer c10736j0;
        StringConsumer c10736j02;
        StringConsumer c10736j03;
        final C8570nJ c8570nJ = new C8570nJ(getMode(), this.f35455A, g());
        c8570nJ.f50685h = this.f35481a0;
        boolean z10 = f35454b0;
        if (!z10 && c8570nJ.f50599F1.f50853X0) {
            throw new AssertionError();
        }
        c8570nJ.f50697l = getProgramConsumer();
        c8570nJ.d(com.android.tools.r8.internal.C2.a(getMinApiLevel()));
        c8570nJ.f50616L0 = e();
        if (!z10 && c8570nJ.W() != getEnableTreeShaking()) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.R() != getEnableMinification()) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.f50655Y0) {
            throw new AssertionError();
        }
        c8570nJ.f50655Y0 = this.f35455A.f57603g || !(!this.f35459E || c8570nJ.T() || c8570nJ.W() || c8570nJ.R());
        c8570nJ.f50694k = this.f35456B;
        c8570nJ.f50602G1 = this.f35482z;
        c8570nJ.f50605H1 = c8570nJ.f50690i1;
        c8570nJ.f50629P1 = getMainDexListConsumer();
        if (!c8570nJ.T() && !c8570nJ.R()) {
            iVar = C8570nJ.i.f50781b;
        } else {
            iVar = C8570nJ.i.f50782c;
        }
        c8570nJ.f50611J1 = iVar;
        c8570nJ.X().f50783a = true;
        C8570nJ.g K10 = c8570nJ.K();
        if (!z10 && !c8570nJ.T() && !K10.e()) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.f50636S) {
            throw new AssertionError();
        }
        if (!c8570nJ.W()) {
            c8570nJ.f50603H = false;
        }
        final StringConsumer stringConsumer = this.f35462H;
        C11350o3 c11350o3 = this.f35455A;
        boolean z11 = c11350o3.f57611o;
        Path m10 = c11350o3.m();
        if (z11) {
            if (m10 != null) {
                stringConsumer = new StringConsumer.FileConsumer(m10, stringConsumer);
            } else {
                stringConsumer = new C10736j0(stringConsumer);
            }
        }
        c8570nJ.f50632Q1 = LU.a(LU.a(LU.a(c8570nJ.f50632Q1, this.f35463I, new C11651u1()), stringConsumer, new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.naming.Q a10;
                a10 = R8Command.a(StringConsumer.this, (StringConsumer) obj);
                return a10;
            }
        }), this.f35477W, new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.naming.Q a10;
                a10 = R8Command.a(C8570nJ.this, (AndroidResourceConsumer) obj);
                return a10;
            }
        });
        StringConsumer stringConsumer2 = this.f35464J;
        boolean z12 = this.f35455A.z();
        Path n10 = this.f35455A.n();
        if (z12) {
            if (n10 != null) {
                c10736j03 = new StringConsumer.FileConsumer(n10, stringConsumer2);
            } else {
                c10736j03 = new C10736j0(stringConsumer2);
            }
            stringConsumer2 = c10736j03;
        }
        c8570nJ.f50635R1 = stringConsumer2;
        StringConsumer stringConsumer3 = this.f35465K;
        boolean y10 = this.f35455A.y();
        Path q10 = this.f35455A.q();
        if (y10) {
            if (q10 != null) {
                c10736j02 = new StringConsumer.FileConsumer(q10, stringConsumer3);
            } else {
                c10736j02 = new C10736j0(stringConsumer3);
            }
            stringConsumer3 = c10736j02;
        }
        c8570nJ.f50638S1 = stringConsumer3;
        StringConsumer stringConsumer4 = this.f35466L;
        boolean x10 = this.f35455A.x();
        Path l10 = this.f35455A.l();
        if (x10) {
            if (l10 != null) {
                c10736j0 = new StringConsumer.FileConsumer(l10, stringConsumer4);
            } else {
                c10736j0 = new C10736j0(stringConsumer4);
            }
            stringConsumer4 = c10736j0;
        }
        c8570nJ.f50641T1 = stringConsumer4;
        c8570nJ.f50650W1 = this.f35467M;
        c8570nJ.f50653X1 = this.f35468N;
        c8570nJ.f50712q = this.f35479Y;
        c8570nJ.f50715r = c8570nJ.f50697l.getDataResourceConsumer();
        c8570nJ.f50718s = this.f35472R;
        c8570nJ.f50659Z1 = this.f35469O;
        c8570nJ.f50721t = QD.a(getOutputInspections());
        if (!this.f35474T) {
            c8570nJ.a().a().c().d();
        }
        if (!z10 && c8570nJ.f50681f1 != null) {
            throw new AssertionError();
        }
        AssertionsConfiguration.Builder a10 = AssertionsConfiguration.a(g());
        if (getProgramConsumer() instanceof ClassFileConsumer) {
            compileTimeDisableAllAssertions = AssertionsConfiguration.Builder.passthroughAllAssertions(a10);
        } else {
            compileTimeDisableAllAssertions = AssertionsConfiguration.Builder.compileTimeDisableAllAssertions(a10);
        }
        c8570nJ.f50681f1 = new A4(getAssertionsConfiguration(), compileTimeDisableAllAssertions);
        if (c8570nJ.f50697l instanceof ClassFileConsumer) {
            K10.a();
            c8570nJ.f50616L0 = C8570nJ.f.f50757b;
            c8570nJ.a().c().d();
        }
        if (!z10 && this.f35480Z == null) {
            throw new AssertionError();
        }
        c8570nJ.f50593D1 = this.f35480Z;
        if (!z10 && c8570nJ.f50674d1) {
            throw new AssertionError();
        }
        c8570nJ.f50674d1 = this.f35459E;
        c8570nJ.f50678e1 = this.f35460F;
        c8570nJ.f50608I1 = isOptimizeMultidexForLinearAlloc();
        WR x11 = c8570nJ.x();
        x11.a(this.f35471Q, this.f35473S);
        boolean c10 = x11.c();
        c8570nJ.f50640T0 = c10;
        if (c10) {
            c8570nJ.a().d();
            c8570nJ.f50652X0 = true;
        }
        c8570nJ.f50647V1 = this.f35470P;
        c8570nJ.f50663a2 = getMapIdProvider();
        SourceFileProvider sourceFileProvider = getSourceFileProvider();
        C11350o3 c11350o32 = this.f35455A;
        if (sourceFileProvider == null) {
            if (!c11350o32.f().f56569a) {
                sourceFileProvider = com.android.tools.r8.naming.U0.a(c8570nJ.m());
            } else if (c8570nJ.f50674d1) {
                if (c8570nJ.R() && (o10 = c8570nJ.B().o()) != null) {
                    t02 = new com.android.tools.r8.naming.T0(o10, com.android.tools.r8.naming.U0.a(c8570nJ, o10));
                    sourceFileProvider = t02;
                }
                sourceFileProvider = null;
            } else {
                String o11 = c8570nJ.B().o();
                if (o11 != null) {
                    t02 = new com.android.tools.r8.naming.T0(o11, com.android.tools.r8.naming.U0.a(c8570nJ, o11));
                    sourceFileProvider = t02;
                } else {
                    if (c8570nJ.R() || c8570nJ.T()) {
                        sourceFileProvider = com.android.tools.r8.naming.U0.a(c8570nJ.m());
                    }
                    sourceFileProvider = null;
                }
            }
        }
        c8570nJ.f50667b2 = sourceFileProvider;
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
            C8981po0 E10 = c8570nJ.E();
            E10.f51625h = h();
            E10.f51622e = this.f35475U;
        }
        c8570nJ.f50700m = C6374a80.a(d(), c8570nJ.f50691j);
        c8570nJ.f50668c = getCancelCompilationChecker();
        c8570nJ.f50672d = this.f35476V;
        c8570nJ.f50676e = this.f35477W;
        c8570nJ.f50682g = this.f35478X;
        if (!C8570nJ.f50578e2) {
            if (!z10 && c8570nJ.f50695k0 != -1) {
                throw new AssertionError();
            }
            c8570nJ.f50695k0 = getThreadCount();
        }
        c8570nJ.f50734x0 = W.b.f35805e;
        c8570nJ.a(f());
        c8570nJ.f50731w0 = i();
        return c8570nJ;
    }

    public C4724u1 getDexItemFactory() {
        return this.f35455A.f57598b;
    }

    public boolean getEnableMinification() {
        return this.f35458D;
    }

    public boolean getEnableTreeShaking() {
        return this.f35457C;
    }

    public boolean getProguardCompatibility() {
        return this.f35459E;
    }

    public static Builder a(C11662i c11662i, DiagnosticsHandler diagnosticsHandler) {
        return new Builder(c11662i, diagnosticsHandler);
    }

    private C9328rt i() {
        C9328rt.a c10 = C9328rt.a(W.b.f35805e).c();
        a(c10);
        c10.f52196i = this.f35461G;
        C9328rt.a a10 = c10.f(getEnableTreeShaking()).d(getEnableMinification()).a(this.f35459E);
        C5821Qv c5821Qv = this.f35472R;
        a10.f52202o = c5821Qv;
        a10.f52207t = this.f35476V;
        a10.f52208u = this.f35480Z;
        a10.f52203p = this.f35455A;
        a10.f52204q = this.f35482z;
        a10.f52201n = this.f35471Q;
        a10.f52210w = this.f35474T;
        return a10.a(c5821Qv != null, new Consumer() {
            @Override
            public final void accept(Object obj) {
                R8Command.this.b((C9328rt.a) obj);
            }
        }).a(this.f35478X != null, new Consumer() {
            @Override
            public final void accept(Object obj) {
                R8Command.this.c((C9328rt.a) obj);
            }
        }).a();
    }

    public static Builder parse(String[] strArr, Origin origin, DiagnosticsHandler diagnosticsHandler) {
        return C11037o0.a(strArr, origin, diagnosticsHandler);
    }

    private R8Command(C11662i c11662i, ProgramConsumer programConsumer, AbstractC7552hC abstractC7552hC, StringConsumer stringConsumer, C11350o3 c11350o3, CompilationMode compilationMode, int i10, C5094Ef0 c5094Ef0, C8570nJ.f fVar, boolean z10, boolean z11, boolean z12, boolean z13, Optional optional, StringConsumer stringConsumer2, PartitionMapConsumer partitionMapConsumer, StringConsumer stringConsumer3, StringConsumer stringConsumer4, StringConsumer stringConsumer5, GraphConsumer graphConsumer, GraphConsumer graphConsumer2, Consumer consumer, boolean z14, boolean z15, BiPredicate biPredicate, StringConsumer stringConsumer6, InterfaceC9975vm interfaceC9975vm, C5821Qv c5821Qv, List list, List list2, String str, int i11, AbstractC9162qt abstractC9162qt, MapIdProvider mapIdProvider, SourceFileProvider sourceFileProvider, boolean z16, boolean z17, boolean z18, List list3, List list4, ClassConflictResolver classConflictResolver, CancelCompilationChecker cancelCompilationChecker, AndroidResourceProvider androidResourceProvider, AndroidResourceConsumer androidResourceConsumer, ResourceShrinkerConfiguration resourceShrinkerConfiguration, ArrayList arrayList, Consumer consumer2, C7608hb0 c7608hb0, long j10) {
        super(c11662i, compilationMode, programConsumer, stringConsumer, i10, c5094Ef0, fVar, z14, z15, biPredicate, list, list2, i11, abstractC9162qt, mapIdProvider, sourceFileProvider, z18, list3, list4, classConflictResolver, cancelCompilationChecker);
        AbstractC7552hC abstractC7552hC2;
        boolean z19 = f35454b0;
        if (!z19 && c11350o3 == null) {
            throw new AssertionError();
        }
        if (z19) {
            abstractC7552hC2 = abstractC7552hC;
        } else {
            abstractC7552hC2 = abstractC7552hC;
            if (abstractC7552hC2 == null) {
                throw new AssertionError();
            }
        }
        this.f35482z = abstractC7552hC2;
        this.f35455A = c11350o3;
        this.f35456B = arrayList;
        this.f35457C = z10;
        this.f35458D = z11;
        this.f35459E = z12;
        this.f35460F = z13;
        this.f35461G = optional;
        this.f35462H = stringConsumer2;
        this.f35463I = partitionMapConsumer;
        this.f35464J = stringConsumer3;
        this.f35465K = stringConsumer4;
        this.f35466L = stringConsumer5;
        this.f35467M = graphConsumer;
        this.f35468N = graphConsumer2;
        this.f35469O = consumer;
        this.f35470P = stringConsumer6;
        this.f35471Q = interfaceC9975vm;
        this.f35472R = c5821Qv;
        this.f35473S = str;
        this.f35474T = z16;
        this.f35475U = z17;
        this.f35476V = androidResourceProvider;
        this.f35477W = androidResourceConsumer;
        this.f35478X = resourceShrinkerConfiguration;
        this.f35479Y = consumer2;
        this.f35480Z = c7608hb0;
        this.f35481a0 = j10;
    }

    public static com.android.tools.r8.naming.Q a(StringConsumer stringConsumer, StringConsumer stringConsumer2) {
        boolean z10 = com.android.tools.r8.naming.H0.f55638c;
        return new com.android.tools.r8.naming.H0(stringConsumer);
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    public static com.android.tools.r8.naming.Q a(C8570nJ c8570nJ, AndroidResourceConsumer androidResourceConsumer) {
        boolean z10 = com.android.tools.r8.naming.H0.f55638c;
        return new com.android.tools.r8.naming.H0(new C4842i0(c8570nJ));
    }

    private R8Command(boolean z10, boolean z11) {
        super(z10, z11);
        int i10 = AbstractC7552hC.f48487c;
        this.f35482z = C6190Xe0.f45779e;
        this.f35455A = null;
        this.f35456B = null;
        this.f35457C = false;
        this.f35458D = false;
        this.f35459E = false;
        this.f35460F = false;
        this.f35461G = null;
        this.f35462H = null;
        this.f35463I = null;
        this.f35464J = null;
        this.f35465K = null;
        this.f35466L = null;
        this.f35467M = null;
        this.f35468N = null;
        this.f35469O = null;
        this.f35470P = null;
        this.f35471Q = null;
        this.f35472R = null;
        this.f35473S = null;
        this.f35474T = false;
        this.f35475U = true;
        this.f35476V = null;
        this.f35477W = null;
        this.f35478X = null;
        this.f35479Y = null;
        this.f35480Z = null;
        this.f35481a0 = -1L;
    }

    public void b(C9328rt.a aVar) {
        aVar.c(this.f35472R.f43762b);
    }
}
