package com.android.tools.r8.compatproguard;

import com.android.dex.DexFormat;
import com.android.tools.r8.CompatProguardCommandBuilder;
import com.android.tools.r8.CompilationMode;
import com.android.tools.r8.MapIdProvider;
import com.android.tools.r8.OutputMode;
import com.android.tools.r8.R8;
import com.android.tools.r8.R8Command;
import com.android.tools.r8.SourceFileProvider;
import com.android.tools.r8.Version;
import com.android.tools.r8.compatproguard.CompatProguard;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5681Oj;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8978pn0;
import com.android.tools.r8.internal.InterfaceC8500mv;
import com.android.tools.r8.internal.PU;
import java.io.PrintStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import w2.C15883c;

public class CompatProguard {

    public static class a {

        public final String f35634a;

        public final CompilationMode f35635b;

        public final int f35636c;

        public final boolean f35637d;

        public final boolean f35638e;

        public final boolean f35639f;

        public final String f35640g;

        public final MapIdProvider f35641h;

        public final SourceFileProvider f35642i;

        public final String f35643j;

        public final List<String> f35644k;

        public final boolean f35645l;

        public a(AbstractC7552hC abstractC7552hC, String str, CompilationMode compilationMode, int i10, boolean z10, boolean z11, boolean z12, String str2, MapIdProvider mapIdProvider, SourceFileProvider sourceFileProvider, String str3, boolean z13) {
            this.f35634a = str;
            this.f35635b = compilationMode;
            this.f35636c = i10;
            this.f35637d = z11;
            this.f35638e = z12;
            this.f35639f = z10;
            this.f35640g = str2;
            this.f35644k = abstractC7552hC;
            this.f35641h = mapIdProvider;
            this.f35642i = sourceFileProvider;
            this.f35643j = str3;
            this.f35645l = z13;
        }

        public static a a(String[] strArr) {
            String str;
            CompilationMode compilationMode;
            String str2;
            MapIdProvider mapIdProvider;
            SourceFileProvider sourceFileProvider;
            String str3;
            int i10;
            boolean z10;
            boolean z11;
            boolean z12;
            boolean z13;
            int i11;
            String substring;
            CompilationMode compilationMode2;
            com.android.tools.r8.compatproguard.a aVar = new com.android.tools.r8.compatproguard.a();
            int i12 = AbstractC7552hC.f48487c;
            C7051eC c7051eC = new C7051eC();
            String str4 = null;
            int i13 = 0;
            if (strArr.length > 0) {
                StringBuilder sb2 = new StringBuilder();
                CompilationMode compilationMode3 = null;
                String str5 = null;
                MapIdProvider mapIdProvider2 = null;
                SourceFileProvider sourceFileProvider2 = null;
                String str6 = null;
                int i14 = 0;
                boolean z14 = false;
                boolean z15 = false;
                boolean z16 = false;
                int i15 = 1;
                boolean z17 = true;
                while (i14 < strArr.length) {
                    String str7 = strArr[i14];
                    String str8 = str4;
                    if (str7.charAt(i13) == '-') {
                        if (str7.equals("-h") || str7.equals("--help")) {
                            str4 = str8;
                            i11 = 1;
                            z16 = true;
                        } else {
                            if (str7.equals("--debug")) {
                                if (compilationMode3 == CompilationMode.RELEASE) {
                                    throw new C5325If("Cannot compile in both --debug and --release mode.");
                                }
                                compilationMode2 = CompilationMode.DEBUG;
                            } else if (str7.equals("--release")) {
                                if (compilationMode3 == CompilationMode.DEBUG) {
                                    throw new C5325If("Cannot compile in both --debug and --release mode.");
                                }
                                compilationMode2 = CompilationMode.RELEASE;
                            } else if (str7.equals("--min-api")) {
                                i14++;
                                i15 = Integer.valueOf(strArr[i14]).intValue();
                            } else if (str7.equals("--force-proguard-compatibility")) {
                                str4 = str8;
                                i11 = 1;
                                z14 = true;
                            } else if (str7.equals("--no-data-resources")) {
                                str4 = str8;
                                i11 = 1;
                                z17 = false;
                            } else if (str7.equals("--output")) {
                                i14++;
                                str4 = strArr[i14];
                                i11 = 1;
                            } else if (str7.equals("--multi-dex")) {
                                str4 = str8;
                                i11 = 1;
                                z15 = true;
                            } else {
                                if (str7.equals("--main-dex-list")) {
                                    i14++;
                                    substring = strArr[i14];
                                } else if (str7.startsWith("--main-dex-list=")) {
                                    substring = str7.substring(16);
                                } else if (str7.equals("--map-id-template")) {
                                    i14++;
                                    mapIdProvider2 = PU.a(strArr[i14], aVar);
                                } else if (str7.equals("--source-file-template")) {
                                    i14++;
                                    sourceFileProvider2 = C8978pn0.a(strArr[i14], aVar);
                                } else if (str7.equals("--deps-file")) {
                                    i14++;
                                    str6 = strArr[i14];
                                } else if (!str7.equals("--core-library") && !str7.equals("--minimal-main-dex") && !str7.equals("--no-locals")) {
                                    if (str7.equals("-outjars")) {
                                        throw new C5325If("Proguard argument -outjar is not supported. Use R8 compatible --output flag");
                                    }
                                    if (sb2.length() > 0) {
                                        c7051eC.a(sb2.toString());
                                    }
                                    sb2 = new StringBuilder(str7);
                                }
                                str5 = substring;
                            }
                            compilationMode3 = compilationMode2;
                        }
                        i14 += i11;
                        i13 = 0;
                    } else {
                        if (sb2.length() > 0) {
                            sb2.append(C15883c.f126249O);
                        }
                        sb2.append(str7);
                    }
                    str4 = str8;
                    i11 = 1;
                    i14 += i11;
                    i13 = 0;
                }
                String str9 = str4;
                if (sb2.length() > 0) {
                    c7051eC.a(sb2.toString());
                }
                compilationMode = compilationMode3;
                str2 = str5;
                mapIdProvider = mapIdProvider2;
                sourceFileProvider = sourceFileProvider2;
                str3 = str6;
                i10 = i15;
                z12 = z14;
                z10 = z17;
                z11 = z15;
                z13 = z16;
                str = str9;
            } else {
                str = null;
                compilationMode = null;
                str2 = null;
                mapIdProvider = null;
                sourceFileProvider = null;
                str3 = null;
                i10 = 1;
                z10 = true;
                z11 = false;
                z12 = false;
                z13 = false;
            }
            return new a(c7051eC.a(), str, compilationMode, i10, z11, z12, z10, str2, mapIdProvider, sourceFileProvider, str3, z13);
        }
    }

    private static void a() {
        System.out.println("CompatProguard " + Version.getVersionString());
    }

    public static void main(final String[] strArr) {
        AbstractC8333lv.a(new InterfaceC8500mv() {
            @Override
            public final void run() {
                CompatProguard.a(strArr);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(String[] strArr) {
        a a10 = a.a(strArr);
        if (!a10.f35645l && a10.f35634a != null) {
            CompatProguardCommandBuilder compatProguardCommandBuilder = new CompatProguardCommandBuilder(a10.f35637d);
            compatProguardCommandBuilder.setOutput(Paths.get(a10.f35634a, new String[0]), OutputMode.DexIndexed, a10.f35638e).addProguardConfiguration(a10.f35644k, com.android.tools.r8.origin.a.f56150f).setMinApiLevel(a10.f35636c).setMapIdProvider(a10.f35641h).setSourceFileProvider(a10.f35642i);
            CompilationMode compilationMode = a10.f35635b;
            if (compilationMode != null) {
                compatProguardCommandBuilder.setMode(compilationMode);
            }
            String str = a10.f35640g;
            if (str != null) {
                compatProguardCommandBuilder.addMainDexListFiles(Paths.get(str, new String[0]));
            }
            if (a10.f35643j != null) {
                Path path = Paths.get(a10.f35634a, new String[0]);
                if (!C6169Ww.a(path)) {
                    path = path.resolve(DexFormat.DEX_IN_JAR_NAME);
                }
                compatProguardCommandBuilder.setInputDependencyGraphConsumer(new C5681Oj(a10.f35643j, path));
            }
            R8.run((R8Command) compatProguardCommandBuilder.build());
            return;
        }
        PrintStream printStream = System.out;
        printStream.println();
        a();
        printStream.println();
        printStream.println("compatproguard [options] --output <dir> <proguard-config>*");
        printStream.println();
        printStream.println("Where options are:");
        printStream.println("-h/--help            : print this help message");
        printStream.println("--release            : compile without debugging information (default).");
        printStream.println("--debug              : compile with debugging information.");
        printStream.println("--min-api n          : specify the targeted min android api level");
        printStream.println("--main-dex-list list : specify main dex list for multi-dexing");
        printStream.println("--minimal-main-dex   : ignored (provided for compatibility)");
        printStream.println("--multi-dex          : ignored (provided for compatibility)");
        printStream.println("--no-locals          : ignored (provided for compatibility)");
        printStream.println("--core-library       : ignored (provided for compatibility)");
        printStream.println("--force-proguard-compatibility : Proguard compatibility mode");
        printStream.println("--no-data-resources  : ignore all data resources");
    }
}
