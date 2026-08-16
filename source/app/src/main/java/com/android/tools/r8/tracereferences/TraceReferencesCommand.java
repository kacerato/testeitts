package com.android.tools.r8.tracereferences;

import com.android.tools.r8.ArchiveClassFileProvider;
import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.CompilationFailedException;
import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6072Vd;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9328rt;
import com.android.tools.r8.internal.K4;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.tracereferences.TraceReferencesCommand;
import com.android.tools.r8.utils.ArchiveResourceProvider;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public class TraceReferencesCommand {

    private final boolean f58408a;

    private final boolean f58409b;

    private final C5094Ef0 f58410c;

    private final AbstractC7552hC f58411d;

    private final AbstractC7552hC f58412e;

    private final AbstractC7552hC f58413f;

    private final TraceReferencesConsumer f58414g;

    public static class Builder {

        private boolean f58415a;

        private boolean f58416b;

        private final C5094Ef0 f58417c;

        private final C7051eC f58418d;

        private final C7051eC f58419e;

        private final C7051eC f58420f;

        private TraceReferencesConsumer f58421g;

        public Builder addLibraryFiles(Path... pathArr) {
            addLibraryFiles(Arrays.asList(pathArr));
            return this;
        }

        public Builder addLibraryResourceProvider(ClassFileResourceProvider classFileResourceProvider) {
            this.f58418d.a(classFileResourceProvider);
            return this;
        }

        public Builder addSourceFiles(Path... pathArr) {
            addSourceFiles(Arrays.asList(pathArr));
            return this;
        }

        public Builder addTargetFiles(Path... pathArr) {
            addTargetFiles(Arrays.asList(pathArr));
            return this;
        }

        public final TraceReferencesCommand build() throws CompilationFailedException {
            final C7 c72 = new C7(null);
            AbstractC8333lv.a(this.f58417c, new AbstractC8333lv.a() {
                @Override
                public final void run() {
                    TraceReferencesCommand.Builder.this.a(c72);
                }
            });
            return (TraceReferencesCommand) c72.a();
        }

        public boolean isPrintHelp() {
            return this.f58415a;
        }

        public boolean isPrintVersion() {
            return this.f58416b;
        }

        public Builder setConsumer(TraceReferencesConsumer traceReferencesConsumer) {
            this.f58421g = traceReferencesConsumer;
            return this;
        }

        public Builder setPrintHelp(boolean z10) {
            this.f58415a = z10;
            return this;
        }

        public Builder setPrintVersion(boolean z10) {
            this.f58416b = z10;
            return this;
        }

        private Builder(DiagnosticsHandler diagnosticsHandler) {
            this.f58415a = false;
            this.f58416b = false;
            int i10 = AbstractC7552hC.f48487c;
            this.f58418d = new C7051eC();
            this.f58419e = new C7051eC();
            this.f58420f = new C7051eC();
            this.f58417c = new C5094Ef0(diagnosticsHandler);
        }

        public final C5094Ef0 a() {
            return this.f58417c;
        }

        public Builder addLibraryFiles(Collection<Path> collection) {
            Iterator<Path> it = collection.iterator();
            while (it.hasNext()) {
                a(it.next(), this.f58418d);
            }
            return this;
        }

        public Builder addSourceFiles(Collection<Path> collection) {
            for (Path path : collection) {
                if (!Files.exists(path, new LinkOption[0])) {
                    this.f58417c.error(new ExceptionDiagnostic(new NoSuchFileException(path.toString()), new PathOrigin(path)));
                }
                if (C6169Ww.a(path)) {
                    this.f58420f.a(ArchiveResourceProvider.fromArchive(path, false));
                } else if (C6169Ww.b(path)) {
                    try {
                        C7051eC c7051eC = this.f58420f;
                        byte[] readAllBytes = Files.readAllBytes(path);
                        c7051eC.a(new C11628e(path, readAllBytes, a(readAllBytes)));
                    } catch (IOException e10) {
                        this.f58417c.error(new ExceptionDiagnostic(e10));
                    }
                } else if (C6169Ww.d(path)) {
                    this.f58420f.a(new C11629f(path));
                } else {
                    this.f58417c.error(new StringDiagnostic("Unsupported source file type", new PathOrigin(path)));
                }
            }
            return this;
        }

        public Builder addTargetFiles(Collection<Path> collection) {
            Iterator<Path> it = collection.iterator();
            while (it.hasNext()) {
                a(it.next(), this.f58419e);
            }
            return this;
        }

        public static String a(byte[] bArr) {
            int length = bArr.length;
            C6072Vd c6072Vd = new C6072Vd(bArr, true);
            C11627d c11627d = new C11627d();
            c6072Vd.a(c11627d, new K4[0], 7);
            return "L" + c11627d.f58456c + ";";
        }

        private void a(Path path, C7051eC c7051eC) {
            if (!Files.exists(path, new LinkOption[0])) {
                this.f58417c.error(new ExceptionDiagnostic(new NoSuchFileException(path.toString()), new PathOrigin(path)));
            }
            if (C6169Ww.a(path)) {
                try {
                    c7051eC.a(new ArchiveClassFileProvider(path));
                    return;
                } catch (IOException e10) {
                    this.f58417c.error(new ExceptionDiagnostic(e10, new PathOrigin(path)));
                    return;
                }
            }
            if (C6169Ww.b(path)) {
                try {
                    c7051eC.a(new C11630g(new PathOrigin(path), Files.readAllBytes(path)));
                    return;
                } catch (IOException e11) {
                    this.f58417c.error(new ExceptionDiagnostic(e11));
                    return;
                }
            }
            this.f58417c.error(new StringDiagnostic("Unsupported source file type", new PathOrigin(path)));
        }

        public void a(C7 c72) {
            TraceReferencesCommand traceReferencesCommand;
            if (!isPrintHelp() && !isPrintVersion()) {
                AbstractC7552hC a10 = this.f58418d.a();
                AbstractC7552hC a11 = this.f58419e.a();
                AbstractC7552hC a12 = this.f58420f.a();
                if (a10.isEmpty()) {
                    this.f58417c.error(new StringDiagnostic("No library specified"));
                }
                a11.isEmpty();
                if (a12.isEmpty()) {
                    this.f58417c.error(new StringDiagnostic("No source specified"));
                }
                if (this.f58421g == null) {
                    this.f58417c.error(new StringDiagnostic("No consumer specified"));
                }
                traceReferencesCommand = new TraceReferencesCommand(this.f58415a, this.f58416b, this.f58417c, a10, a11, a12, this.f58421g);
            } else {
                traceReferencesCommand = new TraceReferencesCommand(isPrintHelp(), isPrintVersion());
            }
            c72.a((C7) traceReferencesCommand);
            this.f58417c.a();
        }

        public final void a(Diagnostic diagnostic) {
            this.f58417c.error(diagnostic);
        }
    }

    public TraceReferencesCommand(boolean z10, boolean z11, C5094Ef0 c5094Ef0, AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2, AbstractC7552hC abstractC7552hC3, TraceReferencesConsumer traceReferencesConsumer) {
        this.f58408a = z10;
        this.f58409b = z11;
        this.f58410c = c5094Ef0;
        this.f58411d = abstractC7552hC;
        this.f58412e = abstractC7552hC2;
        this.f58413f = abstractC7552hC3;
        this.f58414g = traceReferencesConsumer;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    public static Builder parse(Collection<String> collection, Origin origin) {
        return C11631h.a((String[]) collection.toArray(new String[collection.size()]), origin, builder());
    }

    public final TraceReferencesConsumer a() {
        return this.f58414g;
    }

    public C8570nJ b() {
        C8570nJ c8570nJ = new C8570nJ();
        c8570nJ.f50640T0 = true;
        TraceReferencesConsumer traceReferencesConsumer = this.f58414g;
        C9328rt.a c10 = C9328rt.a(W.b.f35808h).c();
        c10.f52212y = traceReferencesConsumer.getClass().getName();
        if (traceReferencesConsumer instanceof TraceReferencesKeepRules) {
            c10.d(((TraceReferencesKeepRules) traceReferencesConsumer).allowObfuscation());
        }
        c8570nJ.f50731w0 = c10.a();
        return c8570nJ;
    }

    public final AbstractC7552hC c() {
        return this.f58411d;
    }

    public final C5094Ef0 d() {
        return this.f58410c;
    }

    public final AbstractC7552hC e() {
        return this.f58413f;
    }

    public final AbstractC7552hC f() {
        return this.f58412e;
    }

    public boolean isPrintHelp() {
        return this.f58408a;
    }

    public boolean isPrintVersion() {
        return this.f58409b;
    }

    public static Builder builder() {
        return new Builder(new C11626c());
    }

    public static Builder parse(String[] strArr, Origin origin) {
        return C11631h.a(strArr, origin, builder());
    }

    public static Builder parse(String[] strArr, Origin origin, DiagnosticsHandler diagnosticsHandler) {
        return C11631h.a(strArr, origin, builder(diagnosticsHandler));
    }

    public TraceReferencesCommand(boolean z10, boolean z11) {
        this.f58408a = z10;
        this.f58409b = z11;
        this.f58410c = null;
        this.f58411d = null;
        this.f58412e = null;
        this.f58413f = null;
        this.f58414g = null;
    }
}
