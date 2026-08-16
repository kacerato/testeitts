package com.android.tools.r8.tracereferences;

import com.android.tools.r8.AbstractC10897m;
import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.JdkClassFileProvider;
import com.android.tools.r8.ParseFlagPrinter;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9674tx;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.tracereferences.TraceReferencesCommand;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;

public final class C11631h {

    public static final QC f58473a = QC.a(4, 4, "--lib", "--target", "--source", "--output");

    public static String a() {
        StringBuilder sb2 = new StringBuilder();
        C10656zq0.a(sb2, "Usage: tracereferences <command> [<options>] [@<argfile>]", " Where <command> is one of:");
        ParseFlagPrinter parseFlagPrinter = new ParseFlagPrinter();
        List list = Collections.EMPTY_LIST;
        parseFlagPrinter.addFlags(AbstractC7552hC.a(com.android.tools.r8.Y.a("--check", list, Arrays.asList("Run emitting only diagnostics messages.")), com.android.tools.r8.Y.a("--keep-rules", Collections.singletonList("[<keep-rules-options>]"), Arrays.asList("Traced references will be output in the keep-rules", "format.")))).appendLinesToBuilder(sb2);
        C10656zq0.a(sb2, " and each <argfile> is a file containing additional options (one per line)", " and options are:");
        new ParseFlagPrinter().addFlags(new C7051eC().a(com.android.tools.r8.Y.a("--lib", Collections.singletonList("<file|jdk-home>"), Arrays.asList("Add <file|jdk-home> runtime library."))).a(com.android.tools.r8.Y.a("--source", Collections.singletonList("<file>"), Arrays.asList("Add <file> as a source for tracing references."))).a(com.android.tools.r8.Y.a("--target", Collections.singletonList("<file>"), Arrays.asList("Add <file> as a target for tracing references. When", "target is not specified all references from source", "outside of library are treated as a missing", "references."))).a(com.android.tools.r8.Y.a("--output", Collections.singletonList("<file>"), Arrays.asList("Output result in <outfile>. If not passed the", "result will go to standard out."))).a(com.android.tools.r8.Y.d()).a(com.android.tools.r8.Y.a("tracereferences")).a(com.android.tools.r8.Y.c()).a()).appendLinesToBuilder(sb2);
        C10656zq0.a(sb2, " and <keep-rule-options> are:");
        new ParseFlagPrinter().addFlags(new C5920Sm0(com.android.tools.r8.Y.a("--allowobfuscation", list, Arrays.asList("Output keep rules with the allowobfuscation", "modifier (defaults to rules without the modifier)")))).appendLinesToBuilder(sb2);
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ee, code lost:
    
        if (r0 == 0) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01f0, code lost:
    
        if (r0 != 1) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f2, code lost:
    
        r1 = com.android.tools.r8.tracereferences.TraceReferencesKeepRules.builder().setAllowObfuscation(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01fc, code lost:
    
        if (r14 == null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01fe, code lost:
    
        r2 = new com.android.tools.r8.StringConsumer.FileConsumer(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0210, code lost:
    
        r19.setConsumer(new com.android.tools.r8.tracereferences.TraceReferencesCheckConsumer(r1.setOutputConsumer(r2).build()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0231, code lost:
    
        return r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0204, code lost:
    
        r2 = new com.android.tools.r8.C11650u0(null, new java.io.PrintWriter(java.lang.System.out));
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0224, code lost:
    
        throw new com.android.tools.r8.internal.C5417Jv0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0225, code lost:
    
        r19.setConsumer(new com.android.tools.r8.tracereferences.TraceReferencesCheckConsumer(com.android.tools.r8.tracereferences.TraceReferencesConsumer.emptyConsumer()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01bf, code lost:
    
        if (r13 != 0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c1, code lost:
    
        r19.a(new com.android.tools.r8.utils.StringDiagnostic("Missing command, specify one of 'check' or '--keep-rules'", r18));
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01cb, code lost:
    
        return r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01cc, code lost:
    
        if (r13 != 1) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01ce, code lost:
    
        if (r14 == null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01d0, code lost:
    
        r19.a(new com.android.tools.r8.utils.StringDiagnostic("Using '--output' requires command '--keep-rules'", r18));
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01da, code lost:
    
        return r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01db, code lost:
    
        if (r13 == 2) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01dd, code lost:
    
        if (r15 == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01df, code lost:
    
        r19.a(new com.android.tools.r8.utils.StringDiagnostic("Using '--allowobfuscation' requires command '--keep-rules'", r18));
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e9, code lost:
    
        return r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ea, code lost:
    
        r0 = com.android.tools.r8.AbstractC4291c.b(r13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TraceReferencesCommand.Builder a(String[] strArr, Origin origin, final TraceReferencesCommand.Builder builder) {
        int i10;
        String str;
        Objects.requireNonNull(builder);
        String[] a10 = AbstractC9674tx.a(strArr, new Consumer() {
            @Override
            public final void accept(Object obj) {
                TraceReferencesCommand.Builder.this.a((Diagnostic) obj);
            }
        });
        if (a10.length != 0) {
            int i11 = 0;
            int i12 = 0;
            boolean z10 = false;
            Path path = null;
            while (true) {
                if (i11 >= a10.length) {
                    break;
                }
                String trim = a10[i11].trim();
                if (f58473a.contains(trim)) {
                    int i13 = i11 + 1;
                    if (i13 < a10.length) {
                        str = a10[i13];
                        i10 = i13;
                    } else {
                        builder.a(new StringDiagnostic("Missing parameter for " + a10[i11] + ".", origin));
                        break;
                    }
                } else {
                    i10 = i11;
                    str = null;
                }
                if (trim.length() != 0) {
                    if (trim.equals("--help")) {
                        builder.setPrintHelp(true);
                        return builder;
                    }
                    if (trim.equals("--version")) {
                        builder.setPrintVersion(true);
                        return builder;
                    }
                    if (trim.equals("--check")) {
                        if (i12 != 0) {
                            builder.a(new StringDiagnostic("Multiple commands specified", origin));
                        }
                        i12 = 1;
                    } else if (trim.equals("--keep-rules")) {
                        if (i12 != 0) {
                            builder.a(new StringDiagnostic("Multiple commands specified", origin));
                        }
                        i12 = 2;
                    } else if (trim.equals("--allowobfuscation")) {
                        z10 = true;
                    } else if (trim.equals("--lib")) {
                        Path path2 = Paths.get(str, new String[0]);
                        if (Files.exists(path2.resolve("lib").resolve(JRTUtil.JRT_FS_JAR), new LinkOption[0]) || Files.exists(path2.resolve("jre").resolve("lib").resolve("rt.jar"), new LinkOption[0]) || Files.exists(path2.resolve("lib").resolve("rt.jar"), new LinkOption[0])) {
                            try {
                                builder.addLibraryResourceProvider(JdkClassFileProvider.fromJdkHome(path2));
                            } catch (IOException e10) {
                                builder.a(new ExceptionDiagnostic(e10, origin));
                            }
                        } else {
                            builder.addLibraryFiles(path2);
                        }
                    } else if (trim.equals("--target")) {
                        builder.addTargetFiles(Paths.get(str, new String[0]));
                    } else if (trim.equals("--source")) {
                        builder.addSourceFiles(Paths.get(str, new String[0]));
                    } else if (trim.equals("--output")) {
                        if (path != null) {
                            builder.a(new StringDiagnostic("Option '--output' passed multiple times.", origin));
                        } else {
                            path = Paths.get(str, new String[0]);
                        }
                    } else if (trim.startsWith("@")) {
                        builder.a(new StringDiagnostic("Recursive @argfiles are not supported: ", origin));
                    } else {
                        int a11 = AbstractC10897m.a(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                TraceReferencesCommand.Builder.this.a((Diagnostic) obj);
                            }
                        }, builder.a(), trim, a10, i10, origin);
                        if (a11 >= 0) {
                            i10 += a11;
                        } else {
                            builder.a(new StringDiagnostic("Unsupported option '" + trim + "'", origin));
                        }
                    }
                }
                i11 = i10 + 1;
            }
        } else {
            builder.a(new StringDiagnostic("Missing command"));
            return builder;
        }
    }
}
