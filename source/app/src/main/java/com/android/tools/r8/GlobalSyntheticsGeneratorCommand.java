package com.android.tools.r8;

import com.android.tools.r8.GlobalSyntheticsGeneratorCommand;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C7348g;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public final class GlobalSyntheticsGeneratorCommand {

    static final boolean f35325i = true;

    private final GlobalSyntheticsConsumer f35326a;

    private final C5094Ef0 f35327b;

    private final int f35328c;

    private final boolean f35329d;

    private final boolean f35330e;

    private final boolean f35331f;

    private final C11662i f35332g;

    private final C4724u1 f35333h;

    public static class Builder {

        private GlobalSyntheticsConsumer f35334a;

        private final C5094Ef0 f35335b;

        private int f35336c;

        private boolean f35337d;

        private boolean f35338e;

        private boolean f35339f;

        private final C11662i.a f35340g;

        public Builder addLibraryFiles(Path... pathArr) {
            addLibraryFiles(Arrays.asList(pathArr));
            return this;
        }

        public GlobalSyntheticsGeneratorCommand build() {
            if (!this.f35338e && !this.f35339f && this.f35334a == null) {
                this.f35335b.a("GlobalSyntheticsGenerator does not support compiling without output");
            }
            return (this.f35338e || this.f35339f) ? new GlobalSyntheticsGeneratorCommand(this.f35338e, this.f35339f) : new GlobalSyntheticsGeneratorCommand(this.f35340g.a(), this.f35334a, this.f35335b, this.f35336c, this.f35337d);
        }

        public void error(Diagnostic diagnostic) {
            this.f35335b.error(diagnostic);
        }

        public Builder setClassfileDesugaringOnly(boolean z10) {
            this.f35337d = z10;
            return this;
        }

        public Builder setGlobalSyntheticsConsumer(GlobalSyntheticsConsumer globalSyntheticsConsumer) {
            this.f35334a = globalSyntheticsConsumer;
            return this;
        }

        public Builder setGlobalSyntheticsOutput(Path path) {
            return setGlobalSyntheticsConsumer(new K(path));
        }

        public Builder setMinApiLevel(int i10) {
            return setMinApiLevel(i10, 0);
        }

        public Builder setPrintHelp(boolean z10) {
            this.f35338e = z10;
            return this;
        }

        public Builder setPrintVersion(boolean z10) {
            this.f35339f = z10;
            return this;
        }

        private Builder(DiagnosticsHandler diagnosticsHandler) {
            this.f35334a = null;
            this.f35336c = com.android.tools.r8.internal.C2.B.d();
            this.f35337d = false;
            this.f35338e = false;
            this.f35339f = false;
            this.f35340g = C11662i.b();
            this.f35335b = new C5094Ef0(diagnosticsHandler);
        }

        public void a(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Path path = (Path) it.next();
                try {
                    this.f35340g.b(path);
                } catch (C5325If e10) {
                    error(new C4836h(path), e10);
                }
            }
        }

        public Builder addLibraryFiles(final Collection<Path> collection) {
            try {
                new Runnable() {
                    @Override
                    public final void run() {
                        GlobalSyntheticsGeneratorCommand.Builder.this.a(collection);
                    }
                }.run();
                return this;
            } catch (C5325If e10) {
                this.f35335b.error(new StringDiagnostic(e10.getMessage(), e10.f41159b, e10.f41160c));
                return this;
            } catch (C7348g unused) {
                return this;
            }
        }

        public void error(Origin origin, Throwable th2) {
            this.f35335b.error(new ExceptionDiagnostic(th2, origin));
        }

        public Builder setMinApiLevel(int i10, int i11) {
            this.f35336c = i10;
            return this;
        }
    }

    public static Builder builder() {
        return new Builder(new L());
    }

    public static Builder parse(String[] strArr, Origin origin) {
        return O.a(strArr, origin, builder());
    }

    public C8570nJ a() {
        C8570nJ c8570nJ = new C8570nJ(this.f35333h, this.f35327b);
        boolean z10 = f35325i;
        if (!z10 && c8570nJ.f50690i1) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ.f50605H1) {
            throw new AssertionError();
        }
        c8570nJ.d(com.android.tools.r8.internal.C2.a(this.f35328c));
        if (!z10 && !c8570nJ.f50601G0) {
            throw new AssertionError();
        }
        c8570nJ.f50595E0 = true;
        boolean z11 = this.f35329d;
        c8570nJ.f50697l = z11 ? new M() : new N();
        c8570nJ.f50703n = this.f35326a;
        if (z11) {
            c8570nJ.a().a().c().d();
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
        c8570nJ.f50734x0 = W.b.f35803c;
        c8570nJ.f50616L0 = C8570nJ.f.f50758c;
        c8570nJ.f50619M0 = true;
        c8570nJ.q().b(false);
        return c8570nJ;
    }

    public C11662i getInputApp() {
        return this.f35332g;
    }

    public boolean isPrintHelp() {
        return this.f35330e;
    }

    public boolean isPrintVersion() {
        return this.f35331f;
    }

    private GlobalSyntheticsGeneratorCommand(C11662i c11662i, GlobalSyntheticsConsumer globalSyntheticsConsumer, C5094Ef0 c5094Ef0, int i10, boolean z10) {
        this.f35333h = new C4724u1();
        this.f35332g = c11662i;
        this.f35326a = globalSyntheticsConsumer;
        this.f35328c = i10;
        this.f35329d = z10;
        this.f35327b = c5094Ef0;
        this.f35330e = false;
        this.f35331f = false;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    public static Builder parse(String[] strArr, Origin origin, DiagnosticsHandler diagnosticsHandler) {
        return O.a(strArr, origin, builder(diagnosticsHandler));
    }

    private GlobalSyntheticsGeneratorCommand(boolean z10, boolean z11) {
        this.f35333h = new C4724u1();
        this.f35330e = z10;
        this.f35331f = z11;
        this.f35332g = null;
        this.f35326a = null;
        this.f35328c = com.android.tools.r8.internal.C2.B.d();
        this.f35329d = false;
        this.f35327b = new C5094Ef0();
    }
}
