package com.android.tools.r8;

import com.android.tools.r8.BaseCompilerCommand;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.R8Command;
import com.android.tools.r8.ResourceShrinkerConfiguration;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9674tx;
import com.android.tools.r8.internal.C10316xo0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8695o4;
import com.android.tools.r8.internal.C8978pn0;
import com.android.tools.r8.internal.C9529t4;
import com.android.tools.r8.internal.PU;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.ArchiveResourceProvider;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public class C11037o0 extends AbstractC10897m {

    public static final QC f56135b = QC.a("--output", "--lib", "--classpath", "--min-api", "--main-dex-rules", "--main-dex-list", "--feature", "--android-resources", "--main-dex-list-output", "--pg-conf", "--pg-conf-output", "--pg-map", "--pg-map-output", "--partition-map-output", "--desugared-lib", "--desugared-lib-pg-conf-output", "--map-id-template", "--source-file-template", "--art-profile", "--startup-profile", "--thread-count");

    public static final QC f56136c = QC.a(3, 3, "--art-profile", "--feature", "--android-resources");

    public static AbstractC7552hC a() {
        int i10 = AbstractC7552hC.f48487c;
        C7051eC a10 = new C7051eC().a(Y.b(true)).a(Y.a(false)).a(Y.b());
        List list = Collections.EMPTY_LIST;
        return a10.a(Y.a("--classfile", list, Arrays.asList("Compile program to Java classfile format."))).a(Y.a("--output", Collections.singletonList("<file>"), Arrays.asList("Output result in <file>.", "<file> must be an existing directory or a zip file."))).a(Y.a("--lib", Collections.singletonList("<file|jdk-home>"), Arrays.asList("Add <file|jdk-home> as a library resource."))).a(Y.a("--classpath", Collections.singletonList("<file>"), Arrays.asList("Add <file> as a classpath resource."))).a(Y.e()).a(Y.a("--pg-compat", list, Arrays.asList("Compile with R8 in Proguard compatibility mode."))).a(Y.a("--pg-conf", Collections.singletonList("<file>"), Arrays.asList("Proguard configuration <file>."))).a(Y.a("--pg-conf-output", Collections.singletonList("<file>"), Arrays.asList("Output the collective configuration to <file>."))).a(Y.a("--pg-map", Collections.singletonList("<file>"), Arrays.asList("Use <file> as a mapping file for distribution and composition with output mapping file."))).a(Y.a("--pg-map-output", Collections.singletonList("<file>"), Arrays.asList("Output the resulting name and line mapping to <file>."))).a(Y.a("--partition-map-output", Collections.singletonList("<file>"), Arrays.asList("Output the resulting mapping to <file>."))).a(Y.a("--desugared-lib", Collections.singletonList("<file>"), Arrays.asList("Specify desugared library configuration.", "<file> is a desugared library configuration (json)."))).a(Y.a("--desugared-lib-pg-conf-output", Collections.singletonList("<file>"), Arrays.asList("Output the Proguard configuration for L8 to <file>."))).a(Y.a("--no-tree-shaking", list, Arrays.asList("Force disable tree shaking of unreachable classes."))).a(Y.a("--no-minification", list, Arrays.asList("Force disable minification of names."))).a(Y.a("--no-data-resources", list, Arrays.asList("Ignore all data resources."))).a(Y.a("--no-desugaring", list, Arrays.asList("Force disable desugaring."))).a(Y.a("--main-dex-rules", Collections.singletonList("<file>"), Arrays.asList("Proguard keep rules for classes to place in the", "primary dex file."))).a(Y.a("--main-dex-list", Collections.singletonList("<file>"), Arrays.asList("List of classes to place in the primary dex file."))).a(Y.a("--android-resources", AbstractC7552hC.a("<input>", "<output>"), Arrays.asList("Add android resource input and output to be used in resource shrinking. Both ", "input and output must be specified."))).a(Y.a("--feature", AbstractC7552hC.a("<input>[:|;<res-input>]", "<output>[:|;<res-output>]"), Arrays.asList("Add feature <input> file to <output> file. Several ", "occurrences can map to the same output. If <res-input> and <res-output> are ", "specified use these as resource shrinker input and output. Separator is : on ", "linux/mac, ; on windows. It is possible to supply resource only features by ", " using an empty string for <input> and <output>, e.g. --feature :in.ap_ :out.ap_"))).a(Y.a("--isolated-splits", list, Arrays.asList("Specifies that the application is using isolated splits, i.e., if split APKs installed for this application are loaded into their own Context objects."))).a(Y.a("--main-dex-list-output", Collections.singletonList("<file>"), Arrays.asList("Output the full main-dex list in <file>."))).b((Iterable) Y.a()).a(Y.a("--thread-count", Collections.singletonList("<number>"), Arrays.asList("Use <number> of threads for compilation.", "If not specified the number will be based on", "heuristics taking the number of cores into account."))).a(Y.d()).a(Y.a("--map-id-template", Collections.singletonList("<template>"), Arrays.asList("Set the map-id to <template>.", "The <template> can reference the variables:", "  %MAP_HASH: compiler generated mapping hash."))).a(Y.a("--source-file-template", Collections.singletonList("<template>"), Arrays.asList("Set all source-file attributes to <template>", "The <template> can reference the variables:", "  %MAP_ID: map id (e.g., value of --map-id-template).", "  %MAP_HASH: compiler generated mapping hash."))).a(Y.a("--android-platform-build", list, Arrays.asList("Compile as a platform build where the runtime/bootclasspath", "is assumed to be the version specified by --min-api."))).a(Y.a("--art-profile", AbstractC7552hC.a("<input>", "<output>"), Arrays.asList("Rewrite human readable ART profile read from <input> and write to <output>."))).a(Y.a("--startup-profile", Collections.singletonList("<file>"), Arrays.asList("Startup profile <file> to use for dex layout."))).a(Y.a("r8")).a(Y.c()).a();
    }

    public static R8Command.Builder a(String[] strArr, Origin origin, DiagnosticsHandler diagnosticsHandler) {
        return new C11037o0().a(strArr, origin, R8Command.builder(diagnosticsHandler));
    }

    public final R8Command.Builder a(String[] strArr, Origin origin, R8Command.Builder builder) {
        C10898m0 c10898m0 = new C10898m0();
        a(strArr, origin, builder, c10898m0);
        CompilationMode compilationMode = c10898m0.f55539a;
        if (compilationMode != null) {
            builder.setMode(compilationMode);
        }
        Path path = c10898m0.f55541c;
        if (path == null) {
            path = Paths.get(".", new String[0]);
        }
        OutputMode outputMode = c10898m0.f55540b;
        if (outputMode == null) {
            outputMode = OutputMode.DexIndexed;
        }
        builder.setOutput(path, outputMode, c10898m0.f55543e);
        builder.setEnableExperimentalMissingLibraryApiModeling(true);
        return builder;
    }

    public final void a(String[] strArr, Origin origin, final R8Command.Builder builder, C10898m0 c10898m0) {
        String str;
        Objects.requireNonNull(builder);
        String[] a10 = AbstractC9674tx.a(strArr, new Consumer() {
            @Override
            public final void accept(Object obj) {
                R8Command.Builder.this.error((Diagnostic) obj);
            }
        });
        C10893l0 c10893l0 = new C10893l0();
        int i10 = 0;
        while (true) {
            if (i10 >= a10.length) {
                break;
            }
            String trim = a10[i10].trim();
            String str2 = null;
            if (f56135b.contains(trim)) {
                int i11 = i10 + 1;
                if (i11 < a10.length) {
                    String str3 = a10[i11];
                    if (f56136c.contains(trim)) {
                        i11 = i10 + 2;
                        if (i11 < a10.length) {
                            str2 = a10[i11];
                        } else {
                            builder.error(new StringDiagnostic("Missing parameter for " + a10[i10] + ".", origin));
                            break;
                        }
                    }
                    i10 = i11;
                    str = str2;
                    str2 = str3;
                } else {
                    builder.error(new StringDiagnostic("Missing parameter for " + a10[i10] + ".", origin));
                    break;
                }
            } else {
                str = null;
            }
            if (trim.length() != 0) {
                if (trim.equals("--help")) {
                    builder.setPrintHelp(true);
                } else if (trim.equals("--version")) {
                    builder.setPrintVersion(true);
                } else if (trim.equals("--debug")) {
                    if (c10898m0.f55539a == CompilationMode.RELEASE) {
                        builder.error(new StringDiagnostic("Cannot compile in both --debug and --release mode.", origin));
                    }
                    c10898m0.f55539a = CompilationMode.DEBUG;
                } else if (trim.equals("--release")) {
                    if (c10898m0.f55539a == CompilationMode.DEBUG) {
                        builder.error(new StringDiagnostic("Cannot compile in both --debug and --release mode.", origin));
                    }
                    c10898m0.f55539a = CompilationMode.RELEASE;
                } else if (trim.equals("--pg-compat")) {
                    builder.setProguardCompatibility(true);
                } else if (trim.equals("--dex")) {
                    if (c10898m0.f55540b == OutputMode.ClassFile) {
                        builder.error(new StringDiagnostic("Cannot compile in both --dex and --classfile output mode.", origin));
                    }
                    c10898m0.f55540b = OutputMode.DexIndexed;
                } else if (trim.equals("--classfile")) {
                    if (c10898m0.f55540b == OutputMode.DexIndexed) {
                        builder.error(new StringDiagnostic("Cannot compile in both --dex and --classfile output mode.", origin));
                    }
                    c10898m0.f55540b = OutputMode.ClassFile;
                } else if (trim.equals("--output")) {
                    if (c10898m0.f55541c != null) {
                        builder.error(new StringDiagnostic("Cannot output both to '" + c10898m0.f55541c.toString() + "' and '" + str2 + "'", origin));
                    }
                    c10898m0.f55541c = Paths.get(str2, new String[0]);
                } else if (trim.equals("--lib")) {
                    AbstractC10897m.a(builder, origin, str2);
                } else if (trim.equals("--classpath")) {
                    builder.addClasspathFiles(Paths.get(str2, new String[0]));
                } else if (trim.equals("--min-api")) {
                    if (c10898m0.f55542d) {
                        builder.error(new StringDiagnostic("Cannot set multiple --min-api options", origin));
                    } else {
                        AbstractC10897m.a(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                R8Command.Builder.this.error((Diagnostic) obj);
                            }
                        }, "--min-api", str2, origin, new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                R8Command.Builder.this.setMinApiLevel(((Integer) obj).intValue());
                            }
                        });
                        c10898m0.f55542d = true;
                    }
                } else if (trim.equals("--thread-count")) {
                    AbstractC10897m.a(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            R8Command.Builder.this.error((Diagnostic) obj);
                        }
                    }, "--thread-count", str2, origin, new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            R8Command.Builder.this.a(((Integer) obj).intValue());
                        }
                    });
                } else if (trim.equals("--no-tree-shaking")) {
                    builder.setDisableTreeShaking(true);
                } else if (trim.equals("--no-minification")) {
                    builder.setDisableMinification(true);
                } else if (trim.equals("--no-desugaring")) {
                    builder.setDisableDesugaring(true);
                } else if (trim.equals("--main-dex-rules")) {
                    builder.addMainDexRulesFiles(Paths.get(str2, new String[0]));
                } else if (trim.equals("--android-resources")) {
                    Path path = Paths.get(str2, new String[0]);
                    Path path2 = Paths.get(str, new String[0]);
                    builder.setAndroidResourceProvider(new ArchiveProtoAndroidResourceProvider(path));
                    builder.setAndroidResourceConsumer(new ArchiveProtoAndroidResourceConsumer(path2, path));
                    builder.setResourceShrinkerConfiguration(new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            ResourceShrinkerConfiguration build;
                            build = ((ResourceShrinkerConfiguration.Builder) obj).enableOptimizedShrinkingWithR8().build();
                            return build;
                        }
                    });
                } else if (trim.equals("--feature")) {
                    c10893l0.a(str2, str);
                } else if (trim.equals("--isolated-splits")) {
                    builder.setEnableIsolatedSplits(true);
                } else if (trim.equals("--main-dex-list")) {
                    builder.addMainDexListFiles(Paths.get(str2, new String[0]));
                } else if (trim.equals("--main-dex-list-output")) {
                    builder.setMainDexListOutputPath(Paths.get(str2, new String[0]));
                } else if (trim.equals("--optimize-multidex-for-linearalloc")) {
                    builder.setOptimizeMultidexForLinearAlloc(true);
                } else if (trim.equals("--pg-conf")) {
                    builder.addProguardConfigurationFiles(Paths.get(str2, new String[0]));
                } else if (trim.equals("--pg-conf-output")) {
                    builder.setProguardConfigurationConsumer(new StringConsumer.FileConsumer(Paths.get(str2, new String[0])));
                } else if (trim.equals("--pg-map")) {
                    builder.setProguardMapInputFile(Paths.get(str2, new String[0]));
                } else if (trim.equals("--pg-map-output")) {
                    builder.setProguardMapOutputPath(Paths.get(str2, new String[0]));
                } else if (trim.equals("--partition-map-output")) {
                    builder.setPartitionMapOutputPath(Paths.get(str2, new String[0]));
                } else if (trim.equals("--desugared-lib")) {
                    builder.addDesugaredLibraryConfiguration(InterfaceC11677v0.a(Paths.get(str2, new String[0])));
                } else if (trim.equals("--desugared-lib-pg-conf-output")) {
                    builder.setDesugaredLibraryKeepRuleConsumer(new StringConsumer.FileConsumer(Paths.get(str2, new String[0])));
                } else if (trim.equals("--no-data-resources")) {
                    c10898m0.f55543e = false;
                } else if (trim.equals("--map-id-template")) {
                    builder.setMapIdProvider(PU.a(str2, builder.b()));
                } else if (trim.equals("--source-file-template")) {
                    builder.setSourceFileProvider(C8978pn0.a(str2, builder.b()));
                } else if (trim.equals("--android-platform-build")) {
                    builder.setAndroidPlatformBuild(true);
                } else if (trim.equals("--art-profile")) {
                    builder.addArtProfileForRewriting(new C9529t4(Paths.get(str2, new String[0])), new C8695o4(Paths.get(str, new String[0])));
                } else if (trim.equals("--startup-profile")) {
                    builder.addStartupProfileProviders(C10316xo0.a(Paths.get(str2, new String[0])));
                } else if (trim.startsWith("--")) {
                    if (!b(builder, origin, trim)) {
                        int b10 = AbstractC10897m.b(builder, trim, a10, i10, origin);
                        if (b10 < 0 && (b10 = AbstractC10897m.a(builder, trim, a10, i10, origin)) < 0) {
                            builder.error(new StringDiagnostic("Unknown option: " + trim, origin));
                        } else {
                            i10 += b10;
                        }
                    }
                } else if (trim.startsWith("@")) {
                    builder.error(new StringDiagnostic("Recursive @argfiles are not supported: ", origin));
                } else {
                    builder.addProgramFiles(Paths.get(trim, new String[0]));
                }
            }
            i10++;
        }
        ArrayList arrayList = new ArrayList(c10893l0.f55533a);
        arrayList.addAll(c10893l0.f55534b.values());
        a(builder, arrayList, c10898m0.f55543e);
    }

    public static void a(final R8Command.Builder builder, ArrayList arrayList, final boolean z10) {
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            final C10741k0 c10741k0 = (C10741k0) obj;
            builder.addFeatureSplit(new Function() {
                @Override
                public final Object apply(Object obj2) {
                    return C11037o0.a(C10741k0.this, builder, z10, (FeatureSplit.Builder) obj2);
                }
            });
        }
    }

    public static FeatureSplit a(C10741k0 c10741k0, R8Command.Builder builder, boolean z10, FeatureSplit.Builder builder2) {
        Path path = c10741k0.f54990d;
        if (path != null) {
            OutputMode outputMode = OutputMode.DexIndexed;
            builder.getClass();
            builder2.setProgramConsumer(BaseCompilerCommand.Builder.a(path, outputMode, z10));
        }
        ArrayList arrayList = c10741k0.f54987a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            builder2.addProgramResourceProvider(ArchiveResourceProvider.fromArchive((Path) obj, false));
        }
        Path path2 = c10741k0.f54988b;
        if (path2 != null) {
            builder2.setAndroidResourceProvider(new ArchiveProtoAndroidResourceProvider(path2, new PathOrigin(c10741k0.f54988b)));
        }
        Path path3 = c10741k0.f54989c;
        if (path3 != null) {
            builder2.setAndroidResourceConsumer(new ArchiveProtoAndroidResourceConsumer(path3, c10741k0.f54988b));
        }
        return builder2.build();
    }
}
