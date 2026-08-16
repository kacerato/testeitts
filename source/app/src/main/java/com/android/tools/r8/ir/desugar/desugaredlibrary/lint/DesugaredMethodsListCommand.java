package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.ParseFlagPrinter;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.Y;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C7051eC;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

public class DesugaredMethodsListCommand {

    private final boolean f54602a;

    private final boolean f54603b;

    private final int f54604c;

    private final C5094Ef0 f54605d;

    private final InterfaceC11677v0 f54606e;

    private final ArrayList f54607f;

    private final StringConsumer f54608g;

    private final ArrayList f54609h;

    private final boolean f54610i;

    public static class Builder {

        private final C5094Ef0 f54612b;

        private StringConsumer f54615e;

        private int f54611a = C2.B.d();

        private InterfaceC11677v0 f54613c = null;

        private final ArrayList f54614d = new ArrayList();

        private final ArrayList f54616f = new ArrayList();

        private boolean f54617g = false;

        private boolean f54618h = false;

        private boolean f54619i = false;

        public Builder(DiagnosticsHandler diagnosticsHandler) {
            this.f54612b = new C5094Ef0(diagnosticsHandler);
        }

        public Builder addDesugarLibraryImplementation(ProgramResourceProvider programResourceProvider) {
            this.f54614d.add(programResourceProvider);
            return this;
        }

        public Builder addLibrary(ClassFileResourceProvider classFileResourceProvider) {
            this.f54616f.add(classFileResourceProvider);
            return this;
        }

        public DesugaredMethodsListCommand build() {
            boolean z10 = this.f54617g;
            if (z10 || this.f54618h) {
                return new DesugaredMethodsListCommand(z10, this.f54618h);
            }
            if (this.f54619i && !this.f54614d.isEmpty()) {
                this.f54612b.a("With platform build desugared library is not allowed.");
            }
            if (this.f54613c != null && this.f54616f.isEmpty()) {
                this.f54612b.a("With desugared library specification a library is required.");
            }
            if (!this.f54614d.isEmpty() && this.f54613c == null) {
                this.f54612b.a("The desugar library specification is required when desugared library implementation is present.");
            }
            if (this.f54615e == null) {
                this.f54615e = new C10687c();
            }
            return new DesugaredMethodsListCommand(this.f54611a, this.f54612b, this.f54613c, this.f54614d, this.f54615e, this.f54616f, this.f54619i);
        }

        public Builder setAndroidPlatformBuild() {
            this.f54619i = true;
            return this;
        }

        public Builder setDesugarLibrarySpecification(InterfaceC11677v0 interfaceC11677v0) {
            this.f54613c = interfaceC11677v0;
            return this;
        }

        public Builder setHelp() {
            this.f54617g = true;
            return this;
        }

        public Builder setMinApi(int i10) {
            this.f54611a = i10;
            return this;
        }

        public Builder setOutputConsumer(StringConsumer stringConsumer) {
            this.f54615e = stringConsumer;
            return this;
        }

        public Builder setOutputPath(Path path) {
            this.f54615e = new C10686b(path);
            return this;
        }

        public Builder setVersion() {
            this.f54618h = true;
            return this;
        }

        public Builder setMinApi(int i10, int i11) {
            this.f54611a = i10;
            return this;
        }
    }

    public DesugaredMethodsListCommand(int i10, C5094Ef0 c5094Ef0, InterfaceC11677v0 interfaceC11677v0, ArrayList arrayList, StringConsumer stringConsumer, ArrayList arrayList2, boolean z10) {
        this.f54602a = false;
        this.f54603b = false;
        this.f54604c = i10;
        this.f54605d = c5094Ef0;
        this.f54606e = interfaceC11677v0;
        this.f54607f = arrayList;
        this.f54608g = stringConsumer;
        this.f54609h = arrayList2;
        this.f54610i = z10;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    public static String getUsageMessage() {
        StringBuilder sb2 = new StringBuilder();
        C10656zq0.a(sb2, "Usage: desugaredmethods [options] where  options are:");
        ParseFlagPrinter parseFlagPrinter = new ParseFlagPrinter();
        int i10 = AbstractC7552hC.f48487c;
        parseFlagPrinter.addFlags(AbstractC7552hC.a(new C7051eC().a(Y.a("--output", Collections.singletonList("<file>"), Arrays.asList("Output result in <file>.", "<file> must be an existing directory or a zip file."))).a(Y.a("--lib", Collections.singletonList("<file|jdk-home>"), Arrays.asList("Add <file|jdk-home> as a library resource."))).a(Y.e()).a(Y.a("DesugaredMethods")).a(Y.c()).a(Y.a("--desugared-lib", Collections.singletonList("<file>"), Arrays.asList("Specify desugared library configuration.", "<file> is a desugared library configuration (json)."))).a(Y.a("--android-platform-build", Collections.EMPTY_LIST, Arrays.asList("Compile as a platform build where the runtime/bootclasspath", "is assumed to be the version specified by --min-api."))).a(Y.a("--desugared-lib-jar", Collections.singletonList("<file>"), Arrays.asList("Specify desugared library jar."))).a())).appendLinesToBuilder(sb2);
        return sb2.toString();
    }

    public static DesugaredMethodsListCommand parse(String[] strArr) throws IOException {
        return parse(strArr, new C5094Ef0());
    }

    public Collection<ProgramResourceProvider> getDesugarLibraryImplementation() {
        return this.f54607f;
    }

    public InterfaceC11677v0 getDesugarLibrarySpecification() {
        return this.f54606e;
    }

    public Collection<ClassFileResourceProvider> getLibrary() {
        return this.f54609h;
    }

    public int getMinApi() {
        return this.f54604c;
    }

    public StringConsumer getOutputConsumer() {
        return this.f54608g;
    }

    public C5094Ef0 getReporter() {
        return this.f54605d;
    }

    public boolean isAndroidPlatformBuild() {
        return this.f54610i;
    }

    public boolean isHelp() {
        return this.f54602a;
    }

    public boolean isVersion() {
        return this.f54603b;
    }

    public static DesugaredMethodsListCommand parse(String[] strArr, C5094Ef0 c5094Ef0) throws IOException {
        return AbstractC10688d.a(strArr, c5094Ef0);
    }

    public DesugaredMethodsListCommand(boolean z10, boolean z11) {
        this.f54602a = z10;
        this.f54603b = z11;
        this.f54604c = -1;
        this.f54605d = null;
        this.f54606e = null;
        this.f54607f = null;
        this.f54608g = null;
        this.f54609h = null;
        this.f54610i = false;
    }
}
