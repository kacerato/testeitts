package com.android.tools.r8;

import com.android.tools.r8.AssertionsConfiguration;
import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.BaseCompilerCommand;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DexIndexedConsumer;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.inspector.Inspector;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC6707c80;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9162qt;
import com.android.tools.r8.internal.C10142wm;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C7119ef0;
import com.android.tools.r8.internal.C8494mt;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8862p4;
import com.android.tools.r8.internal.C9328rt;
import com.android.tools.r8.internal.DA;
import com.android.tools.r8.internal.IA;
import com.android.tools.r8.internal.InterfaceC9975vm;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.SA;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.profile.art.ArtProfileConsumer;
import com.android.tools.r8.profile.art.ArtProfileProvider;
import com.android.tools.r8.startup.StartupProfileProvider;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.C11671s;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class BaseCompilerCommand extends BaseCommand {

    static final boolean f35169y = true;

    private final CompilationMode f35170e;

    private final ProgramConsumer f35171f;

    private final StringConsumer f35172g;

    private final int f35173h;

    private final C5094Ef0 f35174i;

    private final C8570nJ.f f35175j;

    private final boolean f35176k;

    private final boolean f35177l;

    private final BiPredicate f35178m;

    private final List f35179n;

    private final List f35180o;

    private final int f35181p;

    private final AbstractC9162qt f35182q;

    private final MapIdProvider f35183r;

    private final SourceFileProvider f35184s;

    private final boolean f35185t;

    private final List f35186u;

    private final List f35187v;

    private final ClassConflictResolver f35188w;

    private final CancelCompilationChecker f35189x;

    public static abstract class Builder<C extends BaseCompilerCommand, B extends Builder<C, B>> extends BaseCommand.Builder<C, B> {

        static final boolean f35190A = true;
        protected C8570nJ.f desugarState;

        private ProgramConsumer f35191f;

        private StringConsumer f35192g;

        private Path f35193h;

        private OutputMode f35194i;

        private CompilationMode f35195j;

        private int f35196k;

        private int f35197l;

        private final ArrayList f35198m;

        private boolean f35199n;

        private boolean f35200o;

        private BiPredicate f35201p;
        protected PartitionMapConsumer partitionMapConsumer;
        protected StringConsumer proguardMapConsumer;

        private final ArrayList f35202q;

        private final ArrayList f35203r;

        private AbstractC9162qt f35204s;

        private MapIdProvider f35205t;

        private SourceFileProvider f35206u;

        private boolean f35207v;

        private final ArrayList f35208w;

        private final ArrayList f35209x;

        private ClassConflictResolver f35210y;

        private CancelCompilationChecker f35211z;

        public Builder(DiagnosticsHandler diagnosticsHandler) {
            super(diagnosticsHandler);
            this.f35191f = null;
            this.f35192g = null;
            this.f35193h = null;
            this.f35194i = OutputMode.DexIndexed;
            this.f35196k = 0;
            this.f35197l = -1;
            this.desugarState = C8570nJ.f.f50758c;
            this.f35198m = new ArrayList();
            this.f35199n = false;
            this.f35200o = false;
            this.f35201p = new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    boolean a10;
                    a10 = BaseCompilerCommand.Builder.a((String) obj, (Long) obj2);
                    return a10;
                }
            };
            this.f35202q = new ArrayList();
            this.f35203r = new ArrayList();
            this.proguardMapConsumer = null;
            this.partitionMapConsumer = null;
            this.f35204s = AbstractC9162qt.a();
            this.f35205t = null;
            this.f35206u = null;
            this.f35207v = false;
            this.f35208w = new ArrayList();
            this.f35209x = new ArrayList();
            this.f35210y = null;
            this.f35211z = null;
            this.f35195j = e();
        }

        public static boolean a(String str, Long l10) {
            return true;
        }

        public B addArtProfileForRewriting(ArtProfileProvider artProfileProvider, ArtProfileConsumer artProfileConsumer) {
            this.f35208w.add(new C8862p4(artProfileProvider, artProfileConsumer));
            return (B) c();
        }

        public B addAssertionsConfiguration(Function<AssertionsConfiguration.Builder, AssertionsConfiguration> function) {
            this.f35202q.add(function.apply(AssertionsConfiguration.a(b())));
            return (B) c();
        }

        public B addDesugaredLibraryConfiguration(String str) {
            this.f35198m.add(InterfaceC11677v0.a(str, Origin.unknown()));
            return (B) c();
        }

        public B addOutputInspection(Consumer<Inspector> consumer) {
            this.f35203r.add(consumer);
            return (B) c();
        }

        @Deprecated
        public B addSpecialLibraryConfiguration(String str) {
            return addDesugaredLibraryConfiguration(str);
        }

        public Builder addStartupProfileProviders(Collection collection) {
            this.f35209x.addAll(collection);
            return (Builder) c();
        }

        public final void c(Path path) {
            this.f35204s = AbstractC9162qt.a(path);
        }

        public final void d(Path path) {
            this.f35204s = AbstractC9162qt.b(path);
        }

        public abstract CompilationMode e();

        public final List f() {
            return this.f35208w;
        }

        public final List g() {
            return this.f35202q;
        }

        public boolean getAndroidPlatformBuild() {
            return this.f35207v;
        }

        public CancelCompilationChecker getCancelCompilationChecker() {
            return this.f35211z;
        }

        public BiPredicate<String, Long> getDexClassChecksumFilter() {
            return this.f35201p;
        }

        public boolean getDisableDesugaring() {
            return this.desugarState == C8570nJ.f.f50757b;
        }

        public boolean getIncludeClassesChecksum() {
            return this.f35199n;
        }

        public StringConsumer getMainDexListConsumer() {
            return this.f35192g;
        }

        public MapIdProvider getMapIdProvider() {
            return this.f35205t;
        }

        public int getMinApiLevel() {
            return n() ? this.f35196k : com.android.tools.r8.internal.C2.b().d();
        }

        public CompilationMode getMode() {
            return this.f35195j;
        }

        public OutputMode getOutputMode() {
            return this.f35194i;
        }

        public Path getOutputPath() {
            return this.f35193h;
        }

        public ProgramConsumer getProgramConsumer() {
            return this.f35191f;
        }

        public StringConsumer getProguardMapConsumer() {
            return this.proguardMapConsumer;
        }

        public SourceFileProvider getSourceFileProvider() {
            return this.f35206u;
        }

        public final ClassConflictResolver h() {
            return this.f35210y;
        }

        public final AbstractC9162qt i() {
            return this.f35204s;
        }

        public boolean isOptimizeMultidexForLinearAlloc() {
            return this.f35200o;
        }

        public final List j() {
            return this.f35203r;
        }

        public final List k() {
            return this.f35209x;
        }

        public final int l() {
            return this.f35197l;
        }

        public final boolean m() {
            return !this.f35198m.isEmpty();
        }

        public boolean n() {
            return this.f35196k != 0;
        }

        public final void o() {
            this.f35204s = new C8494mt();
        }

        public B setAndroidPlatformBuild(boolean z10) {
            this.f35207v = z10;
            return (B) c();
        }

        public B setCancelCompilationChecker(CancelCompilationChecker cancelCompilationChecker) {
            this.f35211z = cancelCompilationChecker;
            return (B) c();
        }

        public B setClassConflictResolver(ClassConflictResolver classConflictResolver) {
            this.f35210y = classConflictResolver;
            return (B) c();
        }

        public B setDexClassChecksumFilter(BiPredicate<String, Long> biPredicate) {
            if (!f35190A && biPredicate == null) {
                throw new AssertionError();
            }
            this.f35201p = biPredicate;
            return (B) c();
        }

        public B setDisableDesugaring(boolean z10) {
            this.desugarState = z10 ? C8570nJ.f.f50757b : C8570nJ.f.f50758c;
            return (B) c();
        }

        @Deprecated
        public B setEnableDesugaring(boolean z10) {
            this.desugarState = z10 ? C8570nJ.f.f50758c : C8570nJ.f.f50757b;
            return (B) c();
        }

        public B setIncludeClassesChecksum(boolean z10) {
            this.f35199n = z10;
            return (B) c();
        }

        public B setMainDexListConsumer(StringConsumer stringConsumer) {
            this.f35192g = stringConsumer;
            return (B) c();
        }

        public B setMainDexListOutputPath(Path path) {
            this.f35192g = new StringConsumer.FileConsumer(path);
            return (B) c();
        }

        public B setMapIdProvider(MapIdProvider mapIdProvider) {
            this.f35205t = mapIdProvider;
            return (B) c();
        }

        public B setMinApiLevel(int i10) {
            if (i10 <= 0) {
                b().a("Invalid minApiLevel: " + i10);
                return (B) c();
            }
            return setMinApiLevel(i10, 0);
        }

        public B setMode(CompilationMode compilationMode) {
            if (!f35190A && compilationMode == null) {
                throw new AssertionError();
            }
            this.f35195j = compilationMode;
            return (B) c();
        }

        public B setOptimizeMultidexForLinearAlloc(boolean z10) {
            this.f35200o = z10;
            return (B) c();
        }

        public B setOutput(Path path, OutputMode outputMode) {
            return setOutput(path, outputMode, false);
        }

        public B setPartitionMapConsumer(PartitionMapConsumer partitionMapConsumer) {
            this.partitionMapConsumer = partitionMapConsumer;
            return (B) c();
        }

        public B setPartitionMapOutputPath(Path path) {
            if (f35190A || path != null) {
                return setPartitionMapConsumer(new C11671s(path));
            }
            throw new AssertionError();
        }

        public B setProgramConsumer(ProgramConsumer programConsumer) {
            this.f35193h = null;
            this.f35194i = null;
            this.f35191f = programConsumer;
            return (B) c();
        }

        public B setSourceFileProvider(SourceFileProvider sourceFileProvider) {
            this.f35206u = sourceFileProvider;
            return (B) c();
        }

        public static S a(Path path, OutputMode outputMode, boolean z10) {
            if (outputMode == OutputMode.DexIndexed) {
                if (C6169Ww.a(path)) {
                    return new DexIndexedConsumer.ArchiveConsumer(path, z10);
                }
                return new DexIndexedConsumer.DirectoryConsumer(path, z10);
            }
            if (outputMode == OutputMode.DexFilePerClass) {
                if (C6169Ww.a(path)) {
                    return new C10735j(path, z10);
                }
                return new C10740k(path, z10);
            }
            if (outputMode == OutputMode.DexFilePerClassFile) {
                if (C6169Ww.a(path)) {
                    return new DexFilePerClassFileConsumer.ArchiveConsumer(path, z10);
                }
                return new DexFilePerClassFileConsumer.DirectoryConsumer(path, z10);
            }
            if (outputMode == OutputMode.ClassFile) {
                if (C6169Ww.a(path)) {
                    return new ClassFileConsumer.ArchiveConsumer(path, z10);
                }
                return new ClassFileConsumer.DirectoryConsumer(path, z10);
            }
            throw new C5417Jv0("Unexpected output mode: " + ((Object) outputMode));
        }

        public B setOutput(Path path, OutputMode outputMode, boolean z10) {
            boolean z11 = f35190A;
            if (!z11 && path == null) {
                throw new AssertionError();
            }
            if (!z11 && outputMode == null) {
                throw new AssertionError();
            }
            this.f35193h = path;
            this.f35194i = outputMode;
            this.f35191f = a(path, outputMode, z10);
            return (B) c();
        }

        @Override
        public void d() {
            C5094Ef0 b10 = b();
            if (this.f35195j == null) {
                b10.a("Expected valid compilation mode, was null");
            }
            C6169Ww.a(b10, this.f35193h);
            if (getProgramConsumer() == null) {
                b10.a("A ProgramConsumer or Output is required for compilation");
            }
            ArrayList arrayList = new ArrayList(3);
            if (this.f35191f instanceof DexIndexedConsumer) {
                arrayList.add(DexIndexedConsumer.class);
            }
            if (this.f35191f instanceof DexFilePerClassFileConsumer) {
                arrayList.add(DexFilePerClassFileConsumer.class);
            }
            if (this.f35191f instanceof ClassFileConsumer) {
                arrayList.add(ClassFileConsumer.class);
            }
            if (arrayList.size() > 1) {
                StringBuilder sb2 = new StringBuilder("Invalid program consumer. A program consumer can implement at most one consumer type but ");
                sb2.append(this.f35191f.getClass().getName());
                sb2.append(" implements types:");
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    sb2.append(" ");
                    sb2.append(((Class) obj).getName());
                }
                b10.a(sb2.toString());
            }
            int minApiLevel = getMinApiLevel();
            com.android.tools.r8.internal.C2 c22 = com.android.tools.r8.internal.C2.f39077O;
            if (minApiLevel > c22.d() && getMinApiLevel() != 10000) {
                b10.c("An API level of " + getMinApiLevel() + " is not supported by this compiler. Please use an API level of " + c22.d() + " or earlier");
            }
            if (m() && getAndroidPlatformBuild()) {
                b10.a("Android platform builds cannot use desugared library");
            }
        }

        public B setMinApiLevel(int i10, int i11) {
            if (i10 > 0 && i11 >= 0) {
                this.f35196k = i10;
            } else {
                b().a("Invalid minApiLevel: " + i10 + "." + i11);
            }
            return (B) c();
        }

        public B addDesugaredLibraryConfiguration(InterfaceC11677v0 interfaceC11677v0) {
            this.f35198m.add(interfaceC11677v0);
            return (B) c();
        }

        public final InterfaceC9975vm a(C4724u1 c4724u1, boolean z10) {
            if (this.f35198m.isEmpty()) {
                com.android.tools.r8.internal.C2 c22 = com.android.tools.r8.internal.C2.B;
                int i10 = AbstractC7552hC.f48487c;
                SA sa2 = new SA(c22, "unused", null, null, true, C6190Xe0.f45779e);
                C6620bf0 c6620bf0 = C6620bf0.f46817i;
                int i11 = QC.f43505c;
                C7119ef0 c7119ef0 = C7119ef0.f47742j;
                return new DA(sa2, new IA(c6620bf0, c7119ef0, c7119ef0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c7119ef0, c6620bf0, c7119ef0, c6620bf0, c6620bf0), false);
            }
            if (this.f35198m.size() <= 1) {
                return C10142wm.a((InterfaceC11677v0) this.f35198m.get(0), c4724u1, b(), z10, getMinApiLevel());
            }
            throw new C5325If("Only one desugared library configuration is supported.");
        }

        public Builder(C11662i c11662i) {
            super(C11662i.a(c11662i));
            this.f35191f = null;
            this.f35192g = null;
            this.f35193h = null;
            this.f35194i = OutputMode.DexIndexed;
            this.f35196k = 0;
            this.f35197l = -1;
            this.desugarState = C8570nJ.f.f50758c;
            this.f35198m = new ArrayList();
            this.f35199n = false;
            this.f35200o = false;
            this.f35201p = new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    boolean a10;
                    a10 = BaseCompilerCommand.Builder.a((String) obj, (Long) obj2);
                    return a10;
                }
            };
            this.f35202q = new ArrayList();
            this.f35203r = new ArrayList();
            this.proguardMapConsumer = null;
            this.partitionMapConsumer = null;
            this.f35204s = AbstractC9162qt.a();
            this.f35205t = null;
            this.f35206u = null;
            this.f35207v = false;
            this.f35208w = new ArrayList();
            this.f35209x = new ArrayList();
            this.f35210y = null;
            this.f35211z = null;
            this.f35195j = e();
        }

        public final Builder a(int i10) {
            if (i10 <= 0) {
                b().a("Invalid threadCount: " + i10);
            } else {
                this.f35197l = i10;
            }
            return (Builder) c();
        }

        public final void a(C8862p4 c8862p4) {
            this.f35208w.add(c8862p4);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Builder(C11662i c11662i, DiagnosticsHandler diagnosticsHandler) {
            super(r4);
            C5094Ef0 c5094Ef0 = new C5094Ef0(diagnosticsHandler);
            boolean z10 = C11662i.f58586j;
            C11662i.a aVar = new C11662i.a(c5094Ef0);
            aVar.f58597a.addAll(c11662i.f58587a);
            aVar.f58601e.addAll(c11662i.f58589c);
            aVar.f58602f.addAll(c11662i.f58590d);
            aVar.f58603g.addAll(c11662i.f58591e);
            aVar.f58604h = c11662i.f58594h;
            aVar.f58605i = c11662i.f58595i;
            aVar.f58608l = c11662i.f58593g;
            this.f35191f = null;
            this.f35192g = null;
            this.f35193h = null;
            this.f35194i = OutputMode.DexIndexed;
            this.f35196k = 0;
            this.f35197l = -1;
            this.desugarState = C8570nJ.f.f50758c;
            this.f35198m = new ArrayList();
            this.f35199n = false;
            this.f35200o = false;
            this.f35201p = new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    boolean a10;
                    a10 = BaseCompilerCommand.Builder.a((String) obj, (Long) obj2);
                    return a10;
                }
            };
            this.f35202q = new ArrayList();
            this.f35203r = new ArrayList();
            this.proguardMapConsumer = null;
            this.partitionMapConsumer = null;
            this.f35204s = AbstractC9162qt.a();
            this.f35205t = null;
            this.f35206u = null;
            this.f35207v = false;
            this.f35208w = new ArrayList();
            this.f35209x = new ArrayList();
            this.f35210y = null;
            this.f35211z = null;
            this.f35195j = CompilationMode.RELEASE;
        }
    }

    public BaseCompilerCommand(boolean z10, boolean z11) {
        super(z10, z11);
        this.f35171f = null;
        this.f35172g = null;
        this.f35170e = null;
        this.f35173h = 0;
        this.f35174i = new C5094Ef0();
        this.f35175j = C8570nJ.f.f50758c;
        this.f35176k = false;
        this.f35177l = false;
        this.f35178m = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                boolean a10;
                a10 = BaseCompilerCommand.a((String) obj, (Long) obj2);
                return a10;
            }
        };
        this.f35179n = new ArrayList();
        this.f35180o = null;
        this.f35181p = -1;
        this.f35182q = new C8494mt();
        this.f35183r = null;
        this.f35184s = null;
        this.f35185t = false;
        this.f35186u = null;
        this.f35187v = null;
        this.f35188w = null;
        this.f35189x = null;
    }

    public static boolean a(String str, Long l10) {
        return true;
    }

    public final ClassConflictResolver d() {
        return this.f35188w;
    }

    public C8570nJ.f e() {
        return this.f35175j;
    }

    public final AbstractC9162qt f() {
        return this.f35182q;
    }

    public C5094Ef0 g() {
        return this.f35174i;
    }

    public boolean getAndroidPlatformBuild() {
        return this.f35185t;
    }

    public List<AssertionsConfiguration> getAssertionsConfiguration() {
        return Collections.unmodifiableList(this.f35179n);
    }

    public CancelCompilationChecker getCancelCompilationChecker() {
        return this.f35189x;
    }

    public BiPredicate<String, Long> getDexClassChecksumFilter() {
        return this.f35178m;
    }

    public boolean getEnableDesugaring() {
        return this.f35175j == C8570nJ.f.f50758c;
    }

    public boolean getIncludeClassesChecksum() {
        return this.f35176k;
    }

    public StringConsumer getMainDexListConsumer() {
        return this.f35172g;
    }

    public MapIdProvider getMapIdProvider() {
        return this.f35183r;
    }

    public int getMinApiLevel() {
        return this.f35173h;
    }

    public CompilationMode getMode() {
        return this.f35170e;
    }

    public Collection<Consumer<Inspector>> getOutputInspections() {
        return Collections.unmodifiableList(this.f35180o);
    }

    public ProgramConsumer getProgramConsumer() {
        return this.f35171f;
    }

    public SourceFileProvider getSourceFileProvider() {
        return this.f35184s;
    }

    public int getThreadCount() {
        return this.f35181p;
    }

    public List<StartupProfileProvider> h() {
        return this.f35187v;
    }

    public boolean isOptimizeMultidexForLinearAlloc() {
        return this.f35177l;
    }

    public final void a(C9328rt.a aVar) {
        W.a aVar2;
        ProgramConsumer programConsumer = this.f35171f;
        if (programConsumer instanceof ClassFileConsumer) {
            aVar2 = W.a.f35799b;
        } else {
            if (!AbstractC6707c80.f46985a && !(programConsumer instanceof DexIndexedConsumer) && !(programConsumer instanceof DexFilePerClassFileConsumer)) {
                throw new AssertionError();
            }
            aVar2 = W.a.f35800c;
        }
        C9328rt.a a10 = aVar.a(aVar2);
        a10.f52190c = getMode();
        a10.f52191d = getMinApiLevel();
        a10.f52192e = isOptimizeMultidexForLinearAlloc();
        a10.f52193f = getThreadCount();
        a10.f52194g = e();
        a10.f52205r = AT.a((Collection) c(), (Function) new X0());
        a10.f52206s = h();
        if (getAndroidPlatformBuild()) {
            aVar.f52211x = true;
        }
    }

    public List<C8862p4> c() {
        return this.f35186u;
    }

    public BaseCompilerCommand(C11662i c11662i, CompilationMode compilationMode, ProgramConsumer programConsumer, StringConsumer stringConsumer, int i10, C5094Ef0 c5094Ef0, C8570nJ.f fVar, boolean z10, boolean z11, BiPredicate biPredicate, List list, List list2, int i11, AbstractC9162qt abstractC9162qt, MapIdProvider mapIdProvider, SourceFileProvider sourceFileProvider, boolean z12, List list3, List list4, ClassConflictResolver classConflictResolver, CancelCompilationChecker cancelCompilationChecker) {
        super(c11662i);
        boolean z13 = f35169y;
        if (!z13 && i10 <= 0) {
            throw new AssertionError();
        }
        if (!z13 && compilationMode == null) {
            throw new AssertionError();
        }
        this.f35170e = compilationMode;
        this.f35171f = programConsumer;
        this.f35172g = stringConsumer;
        this.f35173h = i10;
        this.f35174i = c5094Ef0;
        this.f35175j = fVar;
        this.f35177l = z10;
        this.f35176k = z11;
        this.f35178m = biPredicate;
        this.f35179n = list;
        this.f35180o = list2;
        this.f35181p = i11;
        this.f35182q = abstractC9162qt;
        this.f35183r = mapIdProvider;
        this.f35184s = sourceFileProvider;
        this.f35185t = z12;
        this.f35186u = list3;
        this.f35187v = list4;
        this.f35188w = classConflictResolver;
        this.f35189x = cancelCompilationChecker;
    }
}
