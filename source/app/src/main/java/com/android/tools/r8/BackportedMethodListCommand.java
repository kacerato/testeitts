package com.android.tools.r8;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10142wm;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C7119ef0;
import com.android.tools.r8.internal.DA;
import com.android.tools.r8.internal.IA;
import com.android.tools.r8.internal.InterfaceC9975vm;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.SA;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public class BackportedMethodListCommand {

    private final boolean f35144a;

    private final boolean f35145b;

    private final C5094Ef0 f35146c;

    private final int f35147d;

    private final boolean f35148e;

    private final InterfaceC9975vm f35149f;

    private final C11662i f35150g;

    private final StringConsumer f35151h;

    public static class Builder {

        private final C5094Ef0 f35152a;

        private int f35153b;

        private final ArrayList f35154c;

        private final C11662i.a f35155d;

        private StringConsumer f35156e;

        private boolean f35157f;

        private boolean f35158g;

        private boolean f35159h;

        public Builder addDesugaredLibraryConfiguration(InterfaceC11677v0 interfaceC11677v0) {
            this.f35154c.add(interfaceC11677v0);
            return this;
        }

        public Builder addLibraryFiles(Path... pathArr) {
            addLibraryFiles(Arrays.asList(pathArr));
            return this;
        }

        public Builder addLibraryResourceProvider(ClassFileResourceProvider classFileResourceProvider) {
            this.f35155d.b(classFileResourceProvider);
            return this;
        }

        public BackportedMethodListCommand build() {
            InterfaceC9975vm a10;
            C11662i a11 = this.f35155d.a();
            if (!this.f35154c.isEmpty() && a11.g().isEmpty()) {
                this.f35152a.error(new StringDiagnostic("With desugared library configuration a library is required"));
            }
            if (isPrintHelp() || isPrintVersion()) {
                return new BackportedMethodListCommand(isPrintHelp(), isPrintVersion());
            }
            if (this.f35156e == null) {
                this.f35156e = new C4334f();
            }
            C4724u1 c4724u1 = new C4724u1();
            C5094Ef0 c5094Ef0 = this.f35152a;
            int i10 = this.f35153b;
            boolean z10 = this.f35159h;
            if (this.f35154c.isEmpty()) {
                com.android.tools.r8.internal.C2 c22 = com.android.tools.r8.internal.C2.B;
                int i11 = AbstractC7552hC.f48487c;
                SA sa2 = new SA(c22, "unused", null, null, true, C6190Xe0.f45779e);
                C6620bf0 c6620bf0 = C6620bf0.f46817i;
                int i12 = QC.f43505c;
                C7119ef0 c7119ef0 = C7119ef0.f47742j;
                a10 = new DA(sa2, new IA(c6620bf0, c7119ef0, c7119ef0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c6620bf0, c7119ef0, c6620bf0, c7119ef0, c6620bf0, c6620bf0), false);
            } else {
                if (this.f35154c.size() > 1) {
                    this.f35152a.b("Only one desugared library configuration is supported.");
                }
                a10 = C10142wm.a((InterfaceC11677v0) this.f35154c.get(0), c4724u1, this.f35152a, false, getMinApiLevel());
            }
            return new BackportedMethodListCommand(c5094Ef0, i10, z10, a10, a11, this.f35156e);
        }

        public int getMinApiLevel() {
            return this.f35153b;
        }

        public boolean isPrintHelp() {
            return this.f35157f;
        }

        public boolean isPrintVersion() {
            return this.f35158g;
        }

        public Builder setAndroidPlatformBuild(boolean z10) {
            this.f35159h = z10;
            return this;
        }

        public Builder setConsumer(StringConsumer stringConsumer) {
            this.f35156e = stringConsumer;
            return this;
        }

        public Builder setMinApiLevel(int i10) {
            if (i10 > 0) {
                this.f35153b = i10;
                return this;
            }
            this.f35152a.error(new StringDiagnostic("Invalid minApiLevel: " + i10));
            return this;
        }

        public Builder setOutputPath(Path path) {
            this.f35156e = new C4329e(path);
            return this;
        }

        public Builder setPrintHelp(boolean z10) {
            this.f35157f = z10;
            return this;
        }

        public Builder setPrintVersion(boolean z10) {
            this.f35158g = z10;
            return this;
        }

        private Builder(DiagnosticsHandler diagnosticsHandler) {
            this.f35153b = com.android.tools.r8.internal.C2.B.d();
            this.f35154c = new ArrayList();
            this.f35157f = false;
            this.f35158g = false;
            this.f35159h = false;
            this.f35155d = C11662i.b();
            this.f35152a = new C5094Ef0(diagnosticsHandler);
        }

        public Builder addDesugaredLibraryConfiguration(String str) {
            return addDesugaredLibraryConfiguration(InterfaceC11677v0.a(str, Origin.unknown()));
        }

        public Builder addLibraryFiles(Collection<Path> collection) {
            Iterator<Path> it = collection.iterator();
            while (it.hasNext()) {
                this.f35155d.b(it.next());
            }
            return this;
        }
    }

    public static Builder builder() {
        return new Builder(new C4296d());
    }

    public static Builder parse(String[] strArr) {
        int i10;
        String str;
        QC a10 = QC.a(4, 4, "--output", "--min-api", "--desugared-lib", "--lib");
        Builder builder = builder();
        boolean z10 = false;
        for (int i11 = 0; i11 < strArr.length; i11 = i10 + 1) {
            String trim = strArr[i11].trim();
            if (a10.contains(trim)) {
                i10 = i11 + 1;
                if (i10 >= strArr.length) {
                    builder.f35152a.error(new StringDiagnostic("Missing parameter for " + strArr[i11] + "."));
                    return builder;
                }
                str = strArr[i10];
            } else {
                i10 = i11;
                str = null;
            }
            if (trim.equals("--help")) {
                builder.setPrintHelp(true);
            } else if (trim.equals("--version")) {
                builder.setPrintVersion(true);
            } else if (trim.equals("--android-platform-build")) {
                builder.setAndroidPlatformBuild(true);
            } else if (trim.equals("--min-api")) {
                if (z10) {
                    builder.f35152a.error(new StringDiagnostic("Cannot set multiple --min-api options"));
                } else {
                    a(builder, str);
                    z10 = true;
                }
            } else if (trim.equals("--desugared-lib")) {
                builder.addDesugaredLibraryConfiguration(InterfaceC11677v0.a(Paths.get(str, new String[0])));
            } else if (trim.equals("--lib")) {
                builder.addLibraryFiles(Paths.get(str, new String[0]));
            } else if (trim.equals("--output")) {
                builder.setOutputPath(Paths.get(str, new String[0]));
            } else {
                builder.f35152a.error(new StringDiagnostic("Unknown option: " + trim));
            }
        }
        return builder;
    }

    public final C11662i a() {
        return this.f35150g;
    }

    public final C5094Ef0 b() {
        return this.f35146c;
    }

    public StringConsumer getBackportedMethodListConsumer() {
        return this.f35151h;
    }

    public InterfaceC9975vm getDesugaredLibraryConfiguration() {
        return this.f35149f;
    }

    public int getMinApiLevel() {
        return this.f35147d;
    }

    public boolean isAndroidPlatformBuild() {
        return this.f35148e;
    }

    public boolean isPrintHelp() {
        return this.f35144a;
    }

    public boolean isPrintVersion() {
        return this.f35145b;
    }

    private static void a(Builder builder, String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt < 1) {
                builder.f35152a.error(new StringDiagnostic("Invalid argument to --min-api: " + str));
                return;
            }
            builder.setMinApiLevel(parseInt);
        } catch (NumberFormatException unused) {
            builder.f35152a.error(new StringDiagnostic("Invalid argument to --min-api: " + str));
        }
    }

    private BackportedMethodListCommand(boolean z10, boolean z11) {
        this.f35144a = z10;
        this.f35145b = z11;
        this.f35146c = new C5094Ef0();
        this.f35147d = -1;
        this.f35148e = false;
        this.f35149f = null;
        this.f35150g = null;
        this.f35151h = null;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    private BackportedMethodListCommand(C5094Ef0 c5094Ef0, int i10, boolean z10, InterfaceC9975vm interfaceC9975vm, C11662i c11662i, StringConsumer stringConsumer) {
        this.f35144a = false;
        this.f35145b = false;
        this.f35146c = c5094Ef0;
        this.f35147d = i10;
        this.f35148e = z10;
        this.f35149f = interfaceC9975vm;
        this.f35150g = c11662i;
        this.f35151h = stringConsumer;
    }
}
