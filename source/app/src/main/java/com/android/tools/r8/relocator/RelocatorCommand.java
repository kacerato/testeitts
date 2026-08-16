package com.android.tools.r8.relocator;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.CompilationFailedException;
import com.android.tools.r8.CompilationMode;
import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC9674tx;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C7348g;
import com.android.tools.r8.internal.C7620hf0;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.PackageReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.relocator.RelocatorCommand;
import com.android.tools.r8.shaking.C11165d4;
import com.android.tools.r8.shaking.C11182e4;
import com.android.tools.r8.shaking.C11199f4;
import com.android.tools.r8.shaking.C11350o3;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;

public class RelocatorCommand {

    private static final QC f56212i = QC.a(4, 4, "--output", "--input", "--map", "--thread-count");

    static final String f56213j = String.join("\n", AbstractC6114Vx.b((Iterable[]) Arrays.copyOf(new Iterable[]{Arrays.asList("The Relocator CLI is EXPERIMENTAL and is subject to change", "Usage: relocator [options]", " where options are:", "  --input <file>          # Input file to remap, class, zip or jar.", "  --output <file>         # Output result in <outfile>.", "  --map <from->to>        # Registers a mapping.", "  --thread-count <number> # A specified number of threads to run with.", "  --version               # Print the version of d8.", "  --help                  # Print this message.")}, 1)));

    static final boolean f56214k = true;

    private final boolean f56215a;

    private final boolean f56216b;

    private final C5094Ef0 f56217c;

    private final C4724u1 f56218d;

    private final ClassFileConsumer f56219e;

    private final C11662i f56220f;

    private final C7620hf0 f56221g;

    private final int f56222h;

    public static class Builder {

        static final boolean f56223j = true;

        private final C11662i.a f56224a;

        private final C5094Ef0 f56225b;

        private final C8051kC f56226c = new C8051kC(4);

        private final C8051kC f56227d = new C8051kC(4);

        private final C8051kC f56228e = new C8051kC(4);

        private ClassFileConsumer f56229f = null;

        private int f56230g = -1;

        private boolean f56231h;

        private boolean f56232i;

        public Builder(C11662i.a aVar) {
            this.f56224a = aVar;
            this.f56225b = aVar.f58609m;
        }

        public static void addMapping(String str, String str2, Builder builder) {
            if (str.endsWith(".**")) {
                builder.addSubPackageMapping(Reference.packageFromString(str.substring(0, str.length() - 3)), Reference.packageFromString(str2));
            } else if (str.endsWith(".*")) {
                builder.addPackageMapping(Reference.packageFromString(str.substring(0, str.length() - 2)), Reference.packageFromString(str2));
            } else {
                builder.addClassMapping(Reference.classFromTypeName(str), Reference.classFromTypeName(str2));
            }
        }

        public static Builder parse(String[] strArr, Origin origin) {
            return a(strArr, origin, RelocatorCommand.builder());
        }

        public Builder addClassMapping(ClassReference classReference, ClassReference classReference2) {
            this.f56227d.a(classReference, classReference2);
            return this;
        }

        public Builder addPackageMapping(PackageReference packageReference, PackageReference packageReference2) {
            this.f56226c.a(packageReference, packageReference2);
            return this;
        }

        public Builder addProgramFile(final Path path) {
            try {
                new Runnable() {
                    @Override
                    public final void run() {
                        RelocatorCommand.Builder.this.a(path);
                    }
                }.run();
                return this;
            } catch (C5325If e10) {
                this.f56225b.error(new StringDiagnostic(e10.getMessage(), e10.f41159b, e10.f41160c));
                return this;
            } catch (C7348g unused) {
                return this;
            }
        }

        public Builder addProgramFiles(Path... pathArr) {
            return addProgramFiles(Arrays.asList(pathArr));
        }

        public Builder addSubPackageMapping(PackageReference packageReference, PackageReference packageReference2) {
            this.f56228e.a(packageReference, packageReference2);
            return this;
        }

        public RelocatorCommand build() throws CompilationFailedException {
            final C7 c72 = new C7();
            AbstractC8333lv.a(this.f56225b, new AbstractC8333lv.a() {
                @Override
                public final void run() {
                    RelocatorCommand.Builder.this.a(c72);
                }
            });
            return (RelocatorCommand) c72.a();
        }

        public void error(Diagnostic diagnostic) {
            this.f56225b.error(diagnostic);
        }

        public Builder setConsumer(ClassFileConsumer classFileConsumer) {
            this.f56229f = classFileConsumer;
            return this;
        }

        public Builder setOutputPath(Path path) {
            if (path == null) {
                this.f56229f = null;
                return this;
            }
            this.f56229f = new ClassFileConsumer.ArchiveConsumer(path, true);
            return this;
        }

        public Builder setPrintHelp(boolean z10) {
            this.f56232i = z10;
            return this;
        }

        public Builder setPrintVersion(boolean z10) {
            this.f56231h = z10;
            return this;
        }

        public Builder setThreadCount(int i10) {
            if (i10 > 0) {
                this.f56230g = i10;
                return this;
            }
            this.f56225b.a("Invalid threadCount: " + i10);
            return this;
        }

        public void a(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Path path = (Path) it.next();
                try {
                    this.f56224a.c(path);
                } catch (C5325If e10) {
                    this.f56225b.error(new ExceptionDiagnostic(e10, new PathOrigin(path)));
                }
            }
        }

        public static Builder parse(String[] strArr, Origin origin, DiagnosticsHandler diagnosticsHandler) {
            return a(strArr, origin, RelocatorCommand.builder(diagnosticsHandler));
        }

        public Builder addProgramFiles(final Collection<Path> collection) {
            try {
                new Runnable() {
                    @Override
                    public final void run() {
                        RelocatorCommand.Builder.this.a(collection);
                    }
                }.run();
                return this;
            } catch (C5325If e10) {
                this.f56225b.error(new StringDiagnostic(e10.getMessage(), e10.f41159b, e10.f41160c));
                return this;
            } catch (C7348g unused) {
                return this;
            }
        }

        public void a(Path path) {
            try {
                this.f56224a.c(path);
            } catch (C5325If e10) {
                this.f56225b.error(new ExceptionDiagnostic(e10, new PathOrigin(path)));
            }
        }

        public void a(C7 c72) {
            if (!this.f56232i && !this.f56231h) {
                this.f56225b.a();
                if (this.f56229f == null) {
                    this.f56225b.error(new StringDiagnostic("No output path or consumer has been specified"));
                }
                this.f56225b.a();
                c72.a((C7) new RelocatorCommand(new C7620hf0(this.f56226c.b(), this.f56227d.b(), this.f56228e.b()), this.f56224a.a(), this.f56225b, new C4724u1(), this.f56229f, this.f56230g));
                return;
            }
            c72.a((C7) new RelocatorCommand(this.f56232i, this.f56231h));
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00a3, code lost:
        
            switch(r7) {
                case 0: goto L66;
                case 1: goto L56;
                case 2: goto L55;
                case 3: goto L54;
                case 4: goto L45;
                case 5: goto L44;
                default: goto L43;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00a6, code lost:
        
            r13.error(new com.android.tools.r8.utils.StringDiagnostic("Unknown argument: " + r6, r12));
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00c1, code lost:
        
            r13.setPrintVersion(true);
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00c8, code lost:
        
            if (com.android.tools.r8.relocator.RelocatorCommand.Builder.f56223j != false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ca, code lost:
        
            if (r4 == null) goto L81;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00d2, code lost:
        
            throw new java.lang.AssertionError();
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00d3, code lost:
        
            if (r5 == null) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00d5, code lost:
        
            r13.error(new com.android.tools.r8.utils.StringDiagnostic("Cannot output both to '" + r5.toString() + "' and '" + r4 + "'", r12));
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0101, code lost:
        
            r5 = java.nio.file.Paths.get(r4, new java.lang.String[0]);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0108, code lost:
        
            r13.setPrintHelp(true);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x010c, code lost:
        
            com.android.tools.r8.AbstractC10897m.a(new com.android.tools.r8.relocator.f(r13), r6, r4, r12, new com.android.tools.r8.relocator.g(r13));
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x011c, code lost:
        
            if (com.android.tools.r8.relocator.RelocatorCommand.Builder.f56223j != false) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x011e, code lost:
        
            if (r4 == null) goto L79;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0126, code lost:
        
            throw new java.lang.AssertionError();
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0127, code lost:
        
            r6 = r4.indexOf("->");
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x012d, code lost:
        
            if (r6 >= 0) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x012f, code lost:
        
            r13.error(new com.android.tools.r8.utils.StringDiagnostic("--map " + r4 + " is not on the form from->to"));
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x014e, code lost:
        
            addMapping(r4.substring(0, r6), r4.substring(r6 + 2), r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x015d, code lost:
        
            if (com.android.tools.r8.relocator.RelocatorCommand.Builder.f56223j != false) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x015f, code lost:
        
            if (r4 == null) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0167, code lost:
        
            throw new java.lang.AssertionError();
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0168, code lost:
        
            r13.addProgramFile(java.nio.file.Paths.get(r4, new java.lang.String[0]));
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0175, code lost:
        
            if (r5 != null) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0177, code lost:
        
            r5 = java.nio.file.Paths.get(".", new java.lang.String[0]);
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x017d, code lost:
        
            r13.setOutputPath(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0180, code lost:
        
            return r13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static Builder a(String[] strArr, Origin origin, final Builder builder) {
            int i10;
            String str;
            Objects.requireNonNull(builder);
            String[] a10 = AbstractC9674tx.a(strArr, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    RelocatorCommand.Builder.this.error((Diagnostic) obj);
                }
            });
            Path path = null;
            int i11 = 0;
            while (true) {
                if (i11 < a10.length) {
                    String trim = a10[i11].trim();
                    if (RelocatorCommand.f56212i.contains(trim)) {
                        i10 = i11 + 1;
                        if (i10 < a10.length) {
                            str = a10[i10];
                        } else {
                            builder.error(new StringDiagnostic("Missing parameter for " + a10[i11] + ".", origin));
                        }
                    } else {
                        i10 = i11;
                        str = null;
                    }
                    if (trim.length() != 0) {
                        char c10 = '\uffff';
                        switch (trim.hashCode()) {
                            case -1623337430:
                                if (trim.equals("--input")) {
                                    c10 = 0;
                                    break;
                                }
                                break;
                            case 43006908:
                                if (trim.equals("--map")) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case 986896684:
                                if (trim.equals("--thread-count")) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                            case 1333069025:
                                if (trim.equals("--help")) {
                                    c10 = 3;
                                    break;
                                }
                                break;
                            case 1394501281:
                                if (trim.equals("--output")) {
                                    c10 = 4;
                                    break;
                                }
                                break;
                            case 1737589560:
                                if (trim.equals("--version")) {
                                    c10 = 5;
                                    break;
                                }
                                break;
                        }
                    }
                    i11 = i10 + 1;
                }
            }
        }
    }

    public static Builder builder() {
        return new Builder(C11662i.b());
    }

    public static Builder parse(String[] strArr, Origin origin) {
        return Builder.parse(strArr, origin);
    }

    public C11662i getApp() {
        return this.f56220f;
    }

    public ClassFileConsumer getConsumer() {
        return this.f56219e;
    }

    public C4724u1 getFactory() {
        return this.f56218d;
    }

    public C8570nJ getInternalOptions() {
        CompilationMode compilationMode = CompilationMode.DEBUG;
        C11350o3.a d10 = C11350o3.a(this.f56218d, getReporter()).e().c().d();
        int i10 = AbstractC7552hC.f48487c;
        C11350o3.a a10 = d10.a(new C5920Sm0("*"));
        Object[] objArr = new Object[4];
        objArr[0] = new C11182e4("**", false);
        AbstractC7552hC b10 = AbstractC7552hC.b(1, objArr);
        a10.f57632I.f57192b.a(b10.size() > 0 ? new C11199f4(b10) : new C11165d4());
        C8570nJ c8570nJ = new C8570nJ(compilationMode, a10.a(), getReporter());
        c8570nJ.f50644U1 = true;
        c8570nJ.f50695k0 = getThreadCount();
        ClassFileConsumer classFileConsumer = this.f56219e;
        c8570nJ.f50697l = classFileConsumer;
        if (!f56214k && classFileConsumer == null) {
            throw new AssertionError();
        }
        c8570nJ.f50715r = classFileConsumer.getDataResourceConsumer();
        return c8570nJ;
    }

    public C7620hf0 getMapping() {
        return this.f56221g;
    }

    public C5094Ef0 getReporter() {
        return this.f56217c;
    }

    public int getThreadCount() {
        return this.f56222h;
    }

    public boolean isPrintHelp() {
        return this.f56215a;
    }

    public boolean isPrintVersion() {
        return this.f56216b;
    }

    private RelocatorCommand(boolean z10, boolean z11) {
        this.f56215a = z10;
        this.f56216b = z11;
        this.f56217c = null;
        this.f56218d = null;
        this.f56219e = null;
        this.f56220f = null;
        this.f56221g = null;
        this.f56222h = -1;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(C11662i.a(new C5094Ef0(diagnosticsHandler)));
    }

    private RelocatorCommand(C7620hf0 c7620hf0, C11662i c11662i, C5094Ef0 c5094Ef0, C4724u1 c4724u1, ClassFileConsumer classFileConsumer, int i10) {
        this.f56215a = false;
        this.f56216b = false;
        this.f56221g = c7620hf0;
        this.f56220f = c11662i;
        this.f56217c = c5094Ef0;
        this.f56218d = c4724u1;
        this.f56219e = classFileConsumer;
        this.f56222h = i10;
    }
}
