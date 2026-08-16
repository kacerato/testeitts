package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.BaseCompilerCommand;
import com.android.tools.r8.D8Command;
import com.android.tools.r8.R8Command;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.A4;
import com.android.tools.r8.internal.AbstractC9162qt;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6374a80;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.C8862p4;
import com.android.tools.r8.internal.C9328rt;
import com.android.tools.r8.internal.InterfaceC9975vm;
import com.android.tools.r8.internal.WR;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.C11662i;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiPredicate;

public final class L8Command extends BaseCompilerCommand {

    static final boolean f35380D = true;

    private final R8Command f35381A;

    private final InterfaceC9975vm f35382B;

    private final C4724u1 f35383C;

    private final D8Command f35384z;

    public static class Builder extends BaseCompilerCommand.Builder<L8Command, Builder> {

        static final boolean f35385D = true;

        private final ArrayList f35386B;

        private final ArrayList f35387C;

        public Builder addProguardConfiguration(List<String> list, Origin origin) {
            this.f35386B.add(new C8699o50(list, origin));
            return this;
        }

        public Builder addProguardConfigurationFiles(Path... pathArr) {
            Collections.addAll(this.f35387C, pathArr);
            return this;
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
            boolean z10 = getProgramConsumer() instanceof ClassFileConsumer;
            if (!m()) {
                b10.a("L8 requires a desugared library configuration");
            }
            if (getProgramConsumer() instanceof DexFilePerClassFileConsumer) {
                b10.a("L8 does not support compiling to dex per class");
            }
            if (a().c()) {
                b10.a("L8 does not support a main dex list");
            } else if (getMainDexListConsumer() != null) {
                b10.a("L8 does not support generating a main dex list");
            }
            if (!isShrinking()) {
                if (this.proguardMapConsumer != null || this.partitionMapConsumer != null) {
                    b10.a("L8 does not support defining a map consumer when not shrinking");
                }
                if (!((ArrayList) f()).isEmpty()) {
                    if (z10) {
                        b10.a("L8 does not support rewriting of ART profiles when generating class files");
                    } else {
                        b10.a("L8 does not impact ART profiles when generating DEX and not shrinking");
                    }
                }
            } else if (z10) {
                b10.a("L8 does not support shrinking when generating class files");
            }
            super.d();
        }

        @Override
        public final CompilationMode e() {
            return CompilationMode.DEBUG;
        }

        public boolean isShrinking() {
            return (this.f35386B.isEmpty() && this.f35387C.isEmpty()) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final BaseCommand makeCommand() {
            R8Command r8Command;
            D8Command d8Command;
            ProgramConsumer programConsumer;
            if (isPrintHelp() || isPrintVersion()) {
                return new L8Command(isPrintHelp(), isPrintVersion());
            }
            if (getMode() == null) {
                setMode(CompilationMode.DEBUG);
            }
            C4724u1 c4724u1 = new C4724u1();
            InterfaceC9975vm a10 = a(c4724u1, true);
            C11662i a11 = a().a();
            if (isShrinking()) {
                U u10 = new U();
                int i10 = 0;
                R8Command.Builder programConsumer2 = R8Command.builder(b()).addProgramResourceProvider((ProgramResourceProvider) u10).enableLegacyFullModeForKeepRules(false).a(a10.f()).setMinApiLevel(getMinApiLevel()).setMode(getMode()).setIncludeClassesChecksum(getIncludeClassesChecksum()).setDexClassChecksumFilter(getDexClassChecksumFilter()).setProgramConsumer(getProgramConsumer());
                ArrayList arrayList = (ArrayList) f();
                int size = arrayList.size();
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    programConsumer2.a((C8862p4) obj);
                }
                Iterator<ClassFileResourceProvider> it = a11.g().iterator();
                while (it.hasNext()) {
                    programConsumer2.addLibraryResourceProvider(it.next());
                }
                ArrayList arrayList2 = this.f35386B;
                int size2 = arrayList2.size();
                while (i10 < size2) {
                    Object obj2 = arrayList2.get(i10);
                    i10++;
                    C8699o50 c8699o50 = (C8699o50) obj2;
                    programConsumer2.addProguardConfiguration((List) c8699o50.a(), (Origin) c8699o50.b());
                }
                StringConsumer stringConsumer = this.proguardMapConsumer;
                if (stringConsumer != null) {
                    programConsumer2.setProguardMapConsumer(stringConsumer);
                }
                PartitionMapConsumer partitionMapConsumer = this.partitionMapConsumer;
                if (partitionMapConsumer != null) {
                    programConsumer2.setPartitionMapConsumer(partitionMapConsumer);
                }
                programConsumer2.addProguardConfiguration(a10.e(), Origin.unknown());
                programConsumer2.addProguardConfiguration(new C5920Sm0("-dontwarn sun.misc.Unsafe"), Origin.unknown());
                programConsumer2.addProguardConfigurationFiles(this.f35387C);
                programConsumer2.setDisableDesugaring(true);
                programConsumer2.o();
                R8Command makeCommand = programConsumer2.makeCommand();
                d8Command = null;
                programConsumer = u10;
                r8Command = makeCommand;
            } else if (!(getProgramConsumer() instanceof ClassFileConsumer)) {
                U u11 = new U();
                D8Command.Builder q10 = ((D8Command.Builder) D8Command.builder(b()).addProgramResourceProvider(u11)).a(a10.f()).setMinApiLevel(getMinApiLevel()).setMode(getMode()).setIncludeClassesChecksum(getIncludeClassesChecksum()).setDexClassChecksumFilter(getDexClassChecksumFilter()).setProgramConsumer(getProgramConsumer()).q();
                Iterator<ClassFileResourceProvider> it2 = a11.g().iterator();
                while (it2.hasNext()) {
                    q10.addLibraryResourceProvider(it2.next());
                }
                q10.setDisableDesugaring(true);
                q10.o();
                d8Command = q10.makeCommand();
                programConsumer = u11;
                r8Command = null;
            } else {
                if (!f35385D && !(getProgramConsumer() instanceof ClassFileConsumer)) {
                    throw new AssertionError();
                }
                r8Command = null;
                d8Command = null;
                programConsumer = getProgramConsumer();
            }
            return new L8Command(r8Command, d8Command, a11, getMode(), programConsumer, getMainDexListConsumer(), getMinApiLevel(), b(), getIncludeClassesChecksum(), getDexClassChecksumFilter(), a10, g(), j(), l(), i(), getMapIdProvider(), h(), getCancelCompilationChecker(), c4724u1);
        }

        private Builder(DiagnosticsHandler diagnosticsHandler) {
            super(diagnosticsHandler);
            this.f35386B = new ArrayList();
            this.f35387C = new ArrayList();
        }

        public Builder addProguardConfigurationFiles(List<Path> list) {
            this.f35387C.addAll(list);
            return this;
        }

        @Override
        public Builder setAndroidPlatformBuild(boolean z10) {
            throw b().b("L8 does not support configuring Android platform builds.");
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
    }

    public static Builder builder() {
        return new Builder(new T());
    }

    public static Builder parse(String[] strArr, Origin origin) {
        return new V().a(strArr, origin, builder());
    }

    @Override
    public C8570nJ b() {
        C8570nJ c8570nJ = new C8570nJ(this.f35383C, g());
        boolean z10 = f35380D;
        if (!z10 && c8570nJ.f50690i1) {
            throw new AssertionError();
        }
        c8570nJ.f50690i1 = getMode() == CompilationMode.DEBUG;
        if (!z10 && c8570nJ.f50629P1 != null) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.f50605H1) {
            throw new AssertionError();
        }
        c8570nJ.d(com.android.tools.r8.internal.C2.a(getMinApiLevel()));
        if (!z10 && c8570nJ.f50595E0) {
            throw new AssertionError();
        }
        if (!z10 && !c8570nJ.f50601G0) {
            throw new AssertionError();
        }
        ProgramConsumer programConsumer = getProgramConsumer();
        c8570nJ.f50697l = programConsumer;
        if (!z10 && !(programConsumer instanceof ClassFileConsumer)) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.W()) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.R()) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.f50736y) {
            throw new AssertionError();
        }
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
        c8570nJ.K().a();
        if (!z10 && c8570nJ.f50616L0 != C8570nJ.f.f50758c) {
            throw new AssertionError();
        }
        if (!z10 && !c8570nJ.f50608I1) {
            throw new AssertionError();
        }
        c8570nJ.f50608I1 = false;
        WR x10 = c8570nJ.x();
        InterfaceC9975vm interfaceC9975vm = this.f35382B;
        x10.a(interfaceC9975vm, interfaceC9975vm.f());
        if (!z10 && c8570nJ.f50681f1 != null) {
            throw new AssertionError();
        }
        c8570nJ.f50681f1 = new A4(getAssertionsConfiguration(), AssertionsConfiguration.a(g()).setCompileTimeDisable().setScopeAll().build());
        c8570nJ.f50700m = C6374a80.a(d(), c8570nJ.f50691j);
        c8570nJ.f50668c = getCancelCompilationChecker();
        if (!C8570nJ.f50578e2) {
            if (!z10 && c8570nJ.f50695k0 != -1) {
                throw new AssertionError();
            }
            c8570nJ.f50695k0 = getThreadCount();
        }
        c8570nJ.n();
        c8570nJ.a().a().c().d();
        c8570nJ.a(f());
        C9328rt.a c10 = C9328rt.a(W.b.f35804d).c();
        a(c10);
        R8Command r8Command = this.f35381A;
        if (r8Command != null) {
            c10.f52203p = r8Command.b().B();
        }
        c10.f52201n = this.f35382B;
        c8570nJ.f50731w0 = c10.a();
        return c8570nJ;
    }

    @Override
    public final List c() {
        return i() != null ? i().c() : j() != null ? j().c() : Collections.EMPTY_LIST;
    }

    public D8Command i() {
        return this.f35384z;
    }

    public R8Command j() {
        return this.f35381A;
    }

    public boolean k() {
        return this.f35381A != null;
    }

    public static Builder parse(String[] strArr, Origin origin, DiagnosticsHandler diagnosticsHandler) {
        return new V().a(strArr, origin, builder(diagnosticsHandler));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private L8Command(R8Command r8Command, D8Command d8Command, C11662i c11662i, CompilationMode compilationMode, ProgramConsumer programConsumer, StringConsumer stringConsumer, int i10, C5094Ef0 c5094Ef0, boolean z10, BiPredicate biPredicate, InterfaceC9975vm interfaceC9975vm, List list, List list2, int i11, AbstractC9162qt abstractC9162qt, MapIdProvider mapIdProvider, ClassConflictResolver classConflictResolver, CancelCompilationChecker cancelCompilationChecker, C4724u1 c4724u1) {
        super(c11662i, compilationMode, programConsumer, stringConsumer, i10, c5094Ef0, r7, false, z10, biPredicate, list, list2, i11, abstractC9162qt, mapIdProvider, null, false, r18, r18, classConflictResolver, cancelCompilationChecker);
        C8570nJ.f fVar = C8570nJ.f.f50758c;
        List list3 = Collections.EMPTY_LIST;
        this.f35384z = d8Command;
        this.f35381A = r8Command;
        this.f35382B = interfaceC9975vm;
        this.f35383C = c4724u1;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    private L8Command(boolean z10, boolean z11) {
        super(z10, z11);
        this.f35381A = null;
        this.f35384z = null;
        this.f35382B = null;
        this.f35383C = null;
    }
}
