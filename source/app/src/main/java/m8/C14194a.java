package m8;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.PrintStream;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C14194a {

    public static final AtomicBoolean f96742a = new AtomicBoolean();

    public static String f96743b = null;

    public static int f96744c = 21;

    public static void a(String[] args) {
        AtomicBoolean atomicBoolean;
        while (true) {
            atomicBoolean = f96742a;
            if (!atomicBoolean.get()) {
                break;
            }
            try {
                Thread.sleep(10L);
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new RuntimeException("Interrupted while waiting D8", e10);
            }
        }
        if (!atomicBoolean.compareAndSet(false, true)) {
            a(args);
            return;
        }
        for (int i10 = 0; i10 < args.length; i10++) {
            try {
                try {
                    String str = args[i10];
                    if ("--dex".equals(str)) {
                        b(g(args, i10));
                    } else if ("--version".equals(str)) {
                        f();
                    } else if ("--help".equals(str)) {
                        e();
                    }
                    return;
                } finally {
                    f96742a.set(false);
                }
            } catch (RuntimeException e11) {
                System.err.println("\nUNEXPECTED TOP-LEVEL EXCEPTION:");
                e11.printStackTrace();
                throw e11;
            } catch (Throwable th2) {
                PrintStream printStream = System.err;
                printStream.println("\nUNEXPECTED TOP-LEVEL ERROR:");
                th2.printStackTrace();
                if (!(th2 instanceof NoClassDefFoundError)) {
                    if (th2 instanceof NoSuchMethodError) {
                    }
                    throw new RuntimeException("D8 compilation failed", th2);
                }
                printStream.println("Note: D8/R8 may be incompatible with this Android runtime or missing classes.");
                throw new RuntimeException("D8 compilation failed", th2);
            }
        }
        e();
        throw new IllegalArgumentException("Missing --dex command");
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x01b5, code lost:
    
        if (r6 != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01b7, code lost:
    
        r0.add(0, "--debug");
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01ba, code lost:
    
        if (r4 != false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01bc, code lost:
    
        r0.add("--min-api");
        r0.add(java.lang.String.valueOf(m8.C14194a.f96744c));
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01c8, code lost:
    
        if (r5 != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x01ca, code lost:
    
        r15 = m8.C14194a.f96743b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01cc, code lost:
    
        if (r15 == null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01d2, code lost:
    
        if (r15.isEmpty() != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x01d4, code lost:
    
        r0.add("--lib");
        r0.add(m8.C14194a.f96743b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x01dc, code lost:
    
        if (r7 == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01e2, code lost:
    
        if (r1.isEmpty() != false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01e4, code lost:
    
        r0.addAll(r1);
        com.android.tools.r8.D8.main((java.lang.String[]) r0.toArray(new java.lang.String[0]));
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01f2, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01fa, code lost:
    
        throw new java.lang.IllegalArgumentException("Missing input .class/.jar/.zip/directory");
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0202, code lost:
    
        throw new java.lang.IllegalArgumentException("Missing --output=<file>");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(String[] dxArgs) throws Exception {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        while (true) {
            if (i10 >= dxArgs.length) {
                break;
            }
            String str = dxArgs[i10];
            if ("--".equals(str)) {
                for (int i11 = i10 + 1; i11 < dxArgs.length; i11++) {
                    steppedArrayList2.add(dxArgs[i11]);
                }
            } else {
                if (str.startsWith("--")) {
                    if ("--debug".equals(str)) {
                        steppedArrayList.add("--debug");
                    } else if ("--release".equals(str)) {
                        steppedArrayList.add("--release");
                    } else {
                        if (str.startsWith("--output=")) {
                            steppedArrayList.add("--output");
                            steppedArrayList.add(str.substring(9));
                        } else if ("--output".equals(str)) {
                            i10++;
                            if (i10 >= dxArgs.length) {
                                throw new IllegalArgumentException("Missing value after --output");
                            }
                            steppedArrayList.add("--output");
                            steppedArrayList.add(dxArgs[i10]);
                        } else {
                            if (str.startsWith("--min-api=")) {
                                steppedArrayList.add("--min-api");
                                steppedArrayList.add(str.substring(10));
                            } else if ("--min-api".equals(str)) {
                                i10++;
                                if (i10 >= dxArgs.length) {
                                    throw new IllegalArgumentException("Missing value after --min-api");
                                }
                                steppedArrayList.add("--min-api");
                                steppedArrayList.add(dxArgs[i10]);
                            } else {
                                if (str.startsWith("--lib=")) {
                                    steppedArrayList.add("--lib");
                                    steppedArrayList.add(str.substring(6));
                                } else if ("--lib".equals(str)) {
                                    i10++;
                                    if (i10 >= dxArgs.length) {
                                        throw new IllegalArgumentException("Missing value after --lib");
                                    }
                                    steppedArrayList.add("--lib");
                                    steppedArrayList.add(dxArgs[i10]);
                                } else if (str.startsWith("--classpath=")) {
                                    steppedArrayList.add("--classpath");
                                    steppedArrayList.add(str.substring(12));
                                } else if ("--classpath".equals(str)) {
                                    i10++;
                                    if (i10 >= dxArgs.length) {
                                        throw new IllegalArgumentException("Missing value after --classpath");
                                    }
                                    steppedArrayList.add("--classpath");
                                    steppedArrayList.add(dxArgs[i10]);
                                } else if (!"--no-strict".equals(str) && !"--core-library".equals(str) && !"--verbose".equals(str) && !"--no-locals".equals(str) && !"--no-optimize".equals(str) && !"--statistics".equals(str) && !"--keep-classes".equals(str) && !"--force-jumbo".equals(str) && !"--no-warning".equals(str) && !"--multi-dex".equals(str) && !"--minimal-main-dex".equals(str) && !str.startsWith("--positions=") && !str.startsWith("--num-threads=") && !str.startsWith("--main-dex-list=") && !str.startsWith("--input-list=")) {
                                    throw new IllegalArgumentException("Unsupported dx argument for D8Runner: " + str);
                                }
                                z11 = true;
                            }
                            z10 = true;
                        }
                        z13 = true;
                    }
                    z12 = true;
                } else {
                    steppedArrayList2.add(str);
                }
                i10++;
            }
        }
    }

    public static void c(String androidJarPath) {
        f96743b = androidJarPath;
    }

    public static void d(int minApi) {
        f96744c = minApi;
    }

    public static void e() {
        System.err.println("usage:\n  D8Runner.compile(new String[]{\"--dex\", \"--output=/path/out.zip\", \"/path/Class.class\"});\n");
    }

    public static void f() {
        System.err.println("D8Runner using com.android.tools.r8.D8");
    }

    public static String[] g(String[] orig, int n10) {
        int length = orig.length - 1;
        String[] strArr = new String[length];
        System.arraycopy(orig, 0, strArr, 0, n10);
        System.arraycopy(orig, n10 + 1, strArr, n10, length - n10);
        return strArr;
    }
}
