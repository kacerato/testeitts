package com.android.tools.r8;

import com.android.tools.r8.C11041p;
import com.android.tools.r8.L8Command;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9674tx;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8695o4;
import com.android.tools.r8.internal.C9529t4;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import java.util.function.Consumer;

public final class V extends AbstractC10897m {

    public static final QC f35541b = QC.a("--output", "--lib", "--min-api", "--desugared-lib", "--thread-count", "--pg-conf", "--pg-map-output", "--partition-map-output", "--art-profile");

    public static final C5978Tm0 f35542c = new C5978Tm0("--art-profile");

    public static String a() {
        StringBuilder sb2 = new StringBuilder();
        C10656zq0.a(sb2, "Usage: l8 [options] <input-files>", " where <input-files> are any combination class, zip, or jar files", " where <input-files> are any combination of dex, class, zip, jar, or apk files", " and options are:");
        ParseFlagPrinter parseFlagPrinter = new ParseFlagPrinter();
        int i10 = AbstractC7552hC.f48487c;
        parseFlagPrinter.addFlags(new C7051eC().a(Y.a(true)).a(Y.b(false)).a(Y.a("--output", Collections.singletonList("<file>"), Arrays.asList("Output result in <file>.", "<file> must be an existing directory or a zip file."))).a(Y.a("--lib", Collections.singletonList("<file|jdk-home>"), Arrays.asList("Add <file|jdk-home> as a library resource."))).a(Y.e()).a(Y.a("--pg-conf", Collections.singletonList("<file>"), Arrays.asList("Proguard configuration <file>."))).a(Y.a("--pg-map-output", Collections.singletonList("<file>"), Arrays.asList("Output the resulting name and line mapping to <file>."))).a(Y.a("--partition-map-output", Collections.singletonList("<file>"), Arrays.asList("Output the resulting mapping to <file>."))).a(Y.a("--desugared-lib", Collections.singletonList("<file>"), Arrays.asList("Specify desugared library configuration.", "<file> is a desugared library configuration (json)."))).b((Iterable) Y.a()).a(Y.a("--thread-count", Collections.singletonList("<number>"), Arrays.asList("Use <number> of threads for compilation.", "If not specified the number will be based on", "heuristics taking the number of cores into account."))).a(Y.d()).a(Y.a("--art-profile", AbstractC7552hC.a("<input>", "<output>"), Arrays.asList("Rewrite human readable ART profile read from <input> and write to <output>."))).a(Y.a("l8")).a(Y.c()).a()).appendLinesToBuilder(sb2);
        return sb2.toString();
    }

    public final L8Command.Builder a(String[] strArr, Origin origin, final L8Command.Builder builder) {
        String str;
        String str2;
        OutputMode outputMode = OutputMode.DexIndexed;
        C11041p.a a10 = C11041p.a();
        Objects.requireNonNull(builder);
        String[] a11 = AbstractC9674tx.a(strArr, new Consumer() {
            @Override
            public final void accept(Object obj) {
                L8Command.Builder.this.error((Diagnostic) obj);
            }
        });
        int i10 = 0;
        CompilationMode compilationMode = null;
        Path path = null;
        boolean z10 = false;
        while (true) {
            if (i10 >= a11.length) {
                break;
            }
            String trim = a11[i10].trim();
            if (f35541b.contains(trim)) {
                int i11 = i10 + 1;
                if (i11 < a11.length) {
                    str2 = a11[i11];
                    if (f35542c.f44578d.equals(trim)) {
                        int i12 = i10 + 2;
                        if (i12 < a11.length) {
                            str = a11[i12];
                            i10 = i12;
                        } else {
                            builder.error(new StringDiagnostic("Missing parameter for " + a11[i10] + ".", origin));
                            break;
                        }
                    } else {
                        i10 = i11;
                        str = null;
                    }
                } else {
                    builder.error(new StringDiagnostic("Missing parameter for " + a11[i10] + ".", origin));
                    break;
                }
            } else {
                str = null;
                str2 = null;
            }
            if (trim.length() != 0) {
                if (trim.equals("--help")) {
                    builder.setPrintHelp(true);
                } else if (trim.equals("--version")) {
                    builder.setPrintVersion(true);
                } else if (trim.equals("--debug")) {
                    if (compilationMode == CompilationMode.RELEASE) {
                        builder.error(new StringDiagnostic("Cannot compile in both --debug and --release mode.", origin));
                    } else {
                        compilationMode = CompilationMode.DEBUG;
                    }
                } else if (trim.equals("--release")) {
                    if (compilationMode == CompilationMode.DEBUG) {
                        builder.error(new StringDiagnostic("Cannot compile in both --debug and --release mode.", origin));
                    } else {
                        compilationMode = CompilationMode.RELEASE;
                    }
                } else if (!trim.equals("--output")) {
                    if (trim.equals("--min-api")) {
                        if (z10) {
                            builder.error(new StringDiagnostic("Cannot set multiple --min-api options", origin));
                        } else {
                            AbstractC10897m.a(new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    L8Command.Builder.this.error((Diagnostic) obj);
                                }
                            }, "--min-api", str2, origin, new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    L8Command.Builder.this.setMinApiLevel(((Integer) obj).intValue());
                                }
                            });
                            z10 = true;
                        }
                    } else if (trim.equals("--lib")) {
                        AbstractC10897m.a(builder, origin, str2);
                    } else if (trim.equals("--pg-conf")) {
                        builder.addProguardConfigurationFiles(Paths.get(str2, new String[0]));
                    } else if (trim.equals("--pg-map-output")) {
                        builder.setProguardMapOutputPath(Paths.get(str2, new String[0]));
                    } else if (trim.equals("--partition-map-output")) {
                        builder.setPartitionMapOutputPath(Paths.get(str2, new String[0]));
                    } else if (trim.equals("--desugared-lib")) {
                        builder.addDesugaredLibraryConfiguration(InterfaceC11677v0.a(Paths.get(str2, new String[0])));
                    } else if (trim.equals("--classfile")) {
                        outputMode = OutputMode.ClassFile;
                    } else if (trim.equals("--art-profile")) {
                        builder.addArtProfileForRewriting(new C9529t4(Paths.get(str2, new String[0])), new C8695o4(Paths.get(str, new String[0])));
                    } else if (trim.equals("--thread-count")) {
                        AbstractC10897m.a(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                L8Command.Builder.this.error((Diagnostic) obj);
                            }
                        }, "--thread-count", str2, origin, new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                L8Command.Builder.this.a(((Integer) obj).intValue());
                            }
                        });
                    } else if (trim.startsWith("--")) {
                        if (!b(builder, origin, trim)) {
                            int b10 = AbstractC10897m.b(builder, trim, a11, i10, origin);
                            if (b10 < 0 && (b10 = AbstractC10897m.a(builder, trim, a11, i10, origin)) < 0) {
                                builder.error(new StringDiagnostic("Unknown option: " + trim, origin));
                            } else {
                                i10 += b10;
                            }
                        }
                    } else {
                        builder.addProgramFiles(Paths.get(trim, new String[0]));
                    }
                    i10++;
                } else if (path != null) {
                    builder.error(new StringDiagnostic("Cannot output both to '" + path.toString() + "' and '" + str2 + "'", origin));
                } else {
                    path = Paths.get(str2, new String[0]);
                }
            }
            i10++;
        }
        if (!a10.f56157b) {
            builder.addClasspathResourceProvider(a10.a());
        }
        if (compilationMode != null) {
            builder.setMode(compilationMode);
        }
        if (path == null) {
            path = Paths.get(".", new String[0]);
        }
        return builder.setOutput(path, outputMode);
    }
}
