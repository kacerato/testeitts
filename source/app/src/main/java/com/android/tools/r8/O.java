package com.android.tools.r8;

import com.android.tools.r8.GlobalSyntheticsGeneratorCommand;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9674tx;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import java.util.function.Consumer;

public final class O {

    public static final String f35398a = C10656zq0.b("Usage: globalsyntheticsgenerator [options] where options are:");

    public static final QC f35399b = QC.a(3, 3, "--output", "--lib", "--min-api");

    public static String a() {
        StringBuilder sb2 = new StringBuilder();
        C10656zq0.a(sb2, f35398a);
        ParseFlagPrinter parseFlagPrinter = new ParseFlagPrinter();
        int i10 = AbstractC7552hC.f48487c;
        parseFlagPrinter.addFlags(new C7051eC().a(Y.e()).a(Y.a("--lib", Collections.singletonList("<file|jdk-home>"), Arrays.asList("Add <file|jdk-home> as a library resource."))).a(Y.a("--output", Collections.singletonList("<globals-file>"), Arrays.asList("Output result in <globals-file>."))).a(Y.a("--classfile", Collections.EMPTY_LIST, Arrays.asList("Generate globals for only classfile to classfile desugaring.", "(By default globals for both classfile and dex desugaring are generated)."))).a(Y.a("globalsyntheticsgenerator")).a(Y.c()).a()).appendLinesToBuilder(sb2);
        return sb2.toString();
    }

    public static GlobalSyntheticsGeneratorCommand.Builder a(String[] strArr, Origin origin, final GlobalSyntheticsGeneratorCommand.Builder builder) {
        int i10;
        String str;
        Objects.requireNonNull(builder);
        String[] a10 = AbstractC9674tx.a(strArr, new Consumer() {
            @Override
            public final void accept(Object obj) {
                GlobalSyntheticsGeneratorCommand.Builder.this.error((Diagnostic) obj);
            }
        });
        Path path = null;
        int i11 = 0;
        boolean z10 = false;
        while (true) {
            if (i11 >= a10.length) {
                break;
            }
            String trim = a10[i11].trim();
            if (f35399b.contains(trim)) {
                i10 = i11 + 1;
                if (i10 < a10.length) {
                    str = a10[i10];
                } else {
                    builder.error(new StringDiagnostic("Missing parameter for " + a10[i11] + ".", origin));
                    break;
                }
            } else {
                i10 = i11;
                str = null;
            }
            if (trim.length() != 0) {
                if (trim.equals("--help")) {
                    builder.setPrintHelp(true);
                } else if (trim.equals("--version")) {
                    builder.setPrintVersion(true);
                } else if (trim.equals("--output")) {
                    if (path != null) {
                        builder.error(new StringDiagnostic("Cannot output both to '" + ((Object) path) + "' and '" + str + "'", origin));
                    } else {
                        path = Paths.get(str, new String[0]);
                    }
                } else if (trim.equals("--min-api")) {
                    if (z10) {
                        builder.error(new StringDiagnostic("Cannot set multiple --min-api options", origin));
                    } else {
                        AbstractC10897m.a(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                GlobalSyntheticsGeneratorCommand.Builder.this.error((Diagnostic) obj);
                            }
                        }, "--min-api", str, origin, new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                GlobalSyntheticsGeneratorCommand.Builder.this.setMinApiLevel(((Integer) obj).intValue());
                            }
                        });
                        z10 = true;
                    }
                } else if (trim.equals("--lib")) {
                    builder.addLibraryFiles(Paths.get(str, new String[0]));
                } else if (trim.equals("--classfile")) {
                    builder.setClassfileDesugaringOnly(true);
                } else if (trim.startsWith("--")) {
                    builder.error(new StringDiagnostic("Unknown option: " + trim, origin));
                }
            }
            i11 = i10 + 1;
        }
        if (path == null) {
            path = Paths.get(".", new String[0]);
        }
        return builder.setGlobalSyntheticsOutput(path);
    }
}
