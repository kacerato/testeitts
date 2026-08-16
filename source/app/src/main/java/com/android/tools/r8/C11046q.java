package com.android.tools.r8;

import com.android.tools.r8.C11041p;
import com.android.tools.r8.D8Command;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9674tx;
import com.android.tools.r8.internal.C10316xo0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8695o4;
import com.android.tools.r8.internal.C9529t4;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public final class C11046q extends AbstractC10897m {

    public static final QC f56172b = QC.a("--output", "--globals", "--globals-output", "--lib", "--classpath", "--pg-map", "--pg-map-output", "--partition-map-output", "--min-api", "--main-dex-rules", "--main-dex-list", "--main-dex-list-output", "--desugared-lib", "--desugared-lib-pg-conf-output", "--thread-count", "--art-profile", "--startup-profile");

    public static final C5978Tm0 f56173c = new C5978Tm0("--art-profile");

    public static AbstractC7552hC a() {
        int i10 = AbstractC7552hC.f48487c;
        C7051eC a10 = new C7051eC().a(Y.a(true)).a(Y.b(false)).a(Y.a("--output", Collections.singletonList("<file>"), Arrays.asList("Output result in <file>.", "<file> must be an existing directory or a zip file."))).a(Y.a("--globals", Collections.singletonList("<file>"), Arrays.asList("Global synthetics <file> from a previous intermediate compilation.", "The <file> may be either a zip-archive of global synthetics or the", "global-synthetic files directly."))).a(Y.a("--globals-output", Collections.singletonList("<file>"), Arrays.asList("Output global synthetics in <file>.", "<file> must be an existing directory or a non-existent zip archive."))).a(Y.a("--lib", Collections.singletonList("<file|jdk-home>"), Arrays.asList("Add <file|jdk-home> as a library resource."))).a(Y.a("--classpath", Collections.singletonList("<file>"), Arrays.asList("Add <file> as a classpath resource."))).a(Y.e()).a(Y.a("--pg-map", Collections.singletonList("<file>"), Arrays.asList("Use <file> as a mapping file for distribution.")));
        List list = Collections.EMPTY_LIST;
        return a10.a(Y.a("--intermediate", list, Arrays.asList("Compile an intermediate result intended for later", "merging."))).a(Y.a("--file-per-class", list, Arrays.asList("Produce a separate dex file per class.", "Synthetic classes are in their own file."))).a(Y.a("--file-per-class-file", list, Arrays.asList("Produce a separate dex file per input .class file.", "Synthetic classes are with their originating class."))).a(Y.a("--no-desugaring", list, Arrays.asList("Force disable desugaring."))).a(Y.a("--desugared-lib", Collections.singletonList("<file>"), Arrays.asList("Specify desugared library configuration.", "<file> is a desugared library configuration (json)."))).a(Y.a("--desugared-lib-pg-conf-output", Collections.singletonList("<file>"), Arrays.asList("Output the Proguard configuration for L8 to <file>."))).a(Y.a("--main-dex-rules", Collections.singletonList("<file>"), Arrays.asList("Proguard keep rules for classes to place in the", "primary dex file."))).a(Y.a("--main-dex-list", Collections.singletonList("<file>"), Arrays.asList("List of classes to place in the primary dex file."))).a(Y.a("--main-dex-list-output", Collections.singletonList("<file>"), Arrays.asList("Output resulting main dex list in <file>."))).b((Iterable) Y.a()).a(Y.a("--thread-count", Collections.singletonList("<number>"), Arrays.asList("Use <number> of threads for compilation.", "If not specified the number will be based on", "heuristics taking the number of cores into account."))).a(Y.d()).a(Y.a("--android-platform-build", list, Arrays.asList("Compile as a platform build where the runtime/bootclasspath", "is assumed to be the version specified by --min-api."))).a(Y.a("--art-profile", AbstractC7552hC.a("<input>", "<output>"), Arrays.asList("Rewrite human readable ART profile read from <input> and write to <output>."))).a(Y.a("--startup-profile", Collections.singletonList("<file>"), Arrays.asList("Startup profile <file> to use for dex layout."))).a(Y.a("d8")).a(Y.c()).a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:164:0x0068, code lost:
    
        r16 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0415, code lost:
    
        if (r4.f56157b != false) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0417, code lost:
    
        r20.addClasspathResourceProvider((com.android.tools.r8.ClassFileResourceProvider) r4.a());
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x041e, code lost:
    
        if (r8 == null) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0420, code lost:
    
        r20.setMode(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0423, code lost:
    
        if (r11 != null) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0425, code lost:
    
        r11 = com.android.tools.r8.OutputMode.DexIndexed;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0427, code lost:
    
        if (r16 != null) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0429, code lost:
    
        r9 = java.nio.file.Paths.get(".", new java.lang.String[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0433, code lost:
    
        if (r10 == null) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0435, code lost:
    
        r20.setGlobalSyntheticsOutput(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x043e, code lost:
    
        return r20.setOutput(r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0431, code lost:
    
        r9 = r16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final D8Command.Builder a(String[] strArr, Origin origin, final D8Command.Builder builder) {
        int i10;
        String str;
        String str2;
        boolean z10;
        Path path;
        boolean z11;
        boolean z12;
        C11041p.a a10 = C11041p.a();
        Objects.requireNonNull(builder);
        String[] a11 = AbstractC9674tx.a(strArr, new Consumer() {
            @Override
            public final void accept(Object obj) {
                D8Command.Builder.this.error((Diagnostic) obj);
            }
        });
        int i11 = 0;
        CompilationMode compilationMode = null;
        Path path2 = null;
        Path path3 = null;
        OutputMode outputMode = null;
        boolean z13 = false;
        while (true) {
            if (i11 >= a11.length) {
                break;
            }
            String trim = a11[i11].trim();
            if (f56172b.contains(trim)) {
                i10 = i11 + 1;
                if (i10 < a11.length) {
                    str2 = a11[i10];
                    if (f56173c.f44578d.equals(trim)) {
                        int i12 = i11 + 2;
                        if (i12 < a11.length) {
                            str = a11[i12];
                            i10 = i12;
                        } else {
                            builder.error(new StringDiagnostic("Missing parameter for " + a11[i11] + ".", origin));
                            break;
                        }
                    } else {
                        str = null;
                    }
                } else {
                    builder.error(new StringDiagnostic("Missing parameter for " + a11[i11] + ".", origin));
                    break;
                }
            } else {
                i10 = i11;
                str = null;
                str2 = null;
            }
            if (trim.length() != 0) {
                if (trim.equals("--help")) {
                    z10 = true;
                    builder.setPrintHelp(true);
                } else {
                    z10 = true;
                    if (trim.equals("--version")) {
                        builder.setPrintVersion(true);
                    } else if (trim.equals("--debug")) {
                        if (compilationMode == CompilationMode.RELEASE) {
                            builder.error(new StringDiagnostic("Cannot compile in both --debug and --release mode.", origin));
                        } else {
                            compilationMode = CompilationMode.DEBUG;
                            z12 = true;
                            i11 = i10 + 1;
                        }
                    } else if (trim.equals("--release")) {
                        if (compilationMode == CompilationMode.DEBUG) {
                            builder.error(new StringDiagnostic("Cannot compile in both --debug and --release mode.", origin));
                        } else {
                            compilationMode = CompilationMode.RELEASE;
                            z12 = true;
                            i11 = i10 + 1;
                        }
                    } else {
                        if (trim.equals("--file-per-class")) {
                            outputMode = OutputMode.DexFilePerClass;
                        } else if (trim.equals("--file-per-class-file")) {
                            outputMode = OutputMode.DexFilePerClassFile;
                        } else if (trim.equals("--classfile")) {
                            outputMode = OutputMode.ClassFile;
                        } else if (trim.equals("--pg-map")) {
                            builder.setProguardMapInputFile(Paths.get(str2, new String[0]));
                        } else if (trim.equals("--pg-map-output")) {
                            builder.setProguardMapOutputPath(Paths.get(str2, new String[0]));
                        } else if (trim.equals("--partition-map-output")) {
                            builder.setPartitionMapOutputPath(Paths.get(str2, new String[0]));
                        } else {
                            if (!trim.equals("--output")) {
                                path = path2;
                                if (trim.equals("--globals")) {
                                    builder.addGlobalSyntheticsFiles(Paths.get(str2, new String[0]));
                                } else {
                                    if (trim.equals("--globals-output")) {
                                        if (path3 != null) {
                                            builder.error(new StringDiagnostic("Cannot output globals both to '" + path3.toString() + "' and '" + str2 + "'", origin));
                                        } else {
                                            path3 = Paths.get(str2, new String[0]);
                                        }
                                    } else if (trim.equals("--lib")) {
                                        AbstractC10897m.a(builder, origin, str2);
                                    } else if (trim.equals("--classpath")) {
                                        Path path4 = Paths.get(str2, new String[0]);
                                        try {
                                            if (Files.exists(path4, new LinkOption[0])) {
                                                String f10 = C10656zq0.f(path4.getFileName().toString());
                                                if (!f10.endsWith(".apk") && !f10.endsWith(".jar") && !f10.endsWith(".zip")) {
                                                    if (Files.isDirectory(path4, new LinkOption[0])) {
                                                        a10.a(DirectoryClassFileProvider.fromDirectory(path4));
                                                    } else {
                                                        builder.error(new StringDiagnostic("Unsupported classpath file type", new PathOrigin(path4)));
                                                    }
                                                }
                                                a10.a(new ArchiveClassFileProvider(path4));
                                            } else {
                                                throw new NoSuchFileException(path4.toString());
                                                break;
                                            }
                                        } catch (IOException e10) {
                                            builder.error(new ExceptionDiagnostic(e10, new PathOrigin(path4)));
                                        }
                                    } else {
                                        if (trim.equals("--main-dex-rules")) {
                                            z12 = true;
                                            builder.addMainDexRulesFiles(Paths.get(str2, new String[0]));
                                        } else if (trim.equals("--main-dex-list")) {
                                            builder.addMainDexListFiles(Paths.get(str2, new String[0]));
                                        } else if (trim.equals("--main-dex-list-output")) {
                                            builder.setMainDexListOutputPath(Paths.get(str2, new String[0]));
                                        } else {
                                            if (trim.equals("--optimize-multidex-for-linearalloc")) {
                                                z11 = true;
                                                builder.setOptimizeMultidexForLinearAlloc(true);
                                            } else if (trim.equals("--min-api")) {
                                                if (z13) {
                                                    builder.error(new StringDiagnostic("Cannot set multiple --min-api options", origin));
                                                } else {
                                                    AbstractC10897m.a(new Consumer() {
                                                        @Override
                                                        public final void accept(Object obj) {
                                                            D8Command.Builder.this.error((Diagnostic) obj);
                                                        }
                                                    }, "--min-api", str2, origin, new Consumer() {
                                                        @Override
                                                        public final void accept(Object obj) {
                                                            D8Command.Builder.this.setMinApiLevel(((Integer) obj).intValue());
                                                        }
                                                    });
                                                    path2 = path;
                                                    z12 = true;
                                                    z13 = true;
                                                    i11 = i10 + 1;
                                                }
                                            } else if (trim.equals("--thread-count")) {
                                                AbstractC10897m.a(new Consumer() {
                                                    @Override
                                                    public final void accept(Object obj) {
                                                        D8Command.Builder.this.error((Diagnostic) obj);
                                                    }
                                                }, "--thread-count", str2, origin, new Consumer() {
                                                    @Override
                                                    public final void accept(Object obj) {
                                                        D8Command.Builder.this.a(((Integer) obj).intValue());
                                                    }
                                                });
                                            } else if (trim.equals("--intermediate")) {
                                                z11 = true;
                                                builder.setIntermediate(true);
                                            } else {
                                                z11 = true;
                                                if (trim.equals("--no-desugaring")) {
                                                    builder.setDisableDesugaring(true);
                                                } else if (trim.equals("--desugared-lib")) {
                                                    builder.addDesugaredLibraryConfiguration(InterfaceC11677v0.a(Paths.get(str2, new String[0])));
                                                } else if (trim.equals("--desugared-lib-pg-conf-output")) {
                                                    builder.setDesugaredLibraryKeepRuleConsumer(new StringConsumer.FileConsumer(Paths.get(str2, new String[0])));
                                                } else if (trim.equals("--android-platform-build")) {
                                                    z11 = true;
                                                    builder.setAndroidPlatformBuild(true);
                                                } else if (trim.equals("--art-profile")) {
                                                    builder.addArtProfileForRewriting(new C9529t4(Paths.get(str2, new String[0])), new C8695o4(Paths.get(str, new String[0])));
                                                } else if (trim.equals("--startup-profile")) {
                                                    builder.addStartupProfileProviders(C10316xo0.a(Paths.get(str2, new String[0])));
                                                } else {
                                                    if (trim.startsWith("--")) {
                                                        if (!b(builder, origin, trim)) {
                                                            int b10 = AbstractC10897m.b(builder, trim, a11, i10, origin);
                                                            if (b10 < 0 && (b10 = AbstractC10897m.a(builder, trim, a11, i10, origin)) < 0) {
                                                                builder.error(new StringDiagnostic("Unknown option: " + trim, origin));
                                                            } else {
                                                                i10 += b10;
                                                            }
                                                        }
                                                    } else if (trim.startsWith("@")) {
                                                        builder.error(new StringDiagnostic("Recursive @argfiles are not supported: ", origin));
                                                    } else {
                                                        z12 = true;
                                                        builder.addProgramFiles(Paths.get(trim, new String[0]));
                                                        path2 = path;
                                                        i11 = i10 + 1;
                                                    }
                                                    z12 = true;
                                                    path2 = path;
                                                    i11 = i10 + 1;
                                                }
                                            }
                                            z12 = z11;
                                        }
                                        path2 = path;
                                        i11 = i10 + 1;
                                    }
                                    path2 = path;
                                    z12 = true;
                                    i11 = i10 + 1;
                                }
                            } else if (path2 != null) {
                                String path5 = path2.toString();
                                StringBuilder sb2 = new StringBuilder();
                                path = path2;
                                sb2.append("Cannot output both to '");
                                sb2.append(path5);
                                sb2.append("' and '");
                                sb2.append(str2);
                                sb2.append("'");
                                builder.error(new StringDiagnostic(sb2.toString(), origin));
                            } else {
                                path2 = Paths.get(str2, new String[0]);
                            }
                            z12 = true;
                            path2 = path;
                            i11 = i10 + 1;
                        }
                        z12 = true;
                        i11 = i10 + 1;
                    }
                }
                z12 = z10;
                path = path2;
                path2 = path;
                i11 = i10 + 1;
            }
            path = path2;
            z12 = true;
            path2 = path;
            i11 = i10 + 1;
        }
    }
}
