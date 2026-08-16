package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:System.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:System.class
  classes.dex
 */
public final class System {
    private System() {
    }

    public static void gc() {
    }

    public static void exit() {
    }

    public static void exit(int i10) {
    }

    public static void load(String str) {
        throw new RuntimeException("Unsupported");
    }

    public static void loadLibrary(String str) {
        throw new RuntimeException("Unsupported");
    }

    public static String mapLibraryName(String str) {
        throw new RuntimeException("Unsupported");
    }

    public static String lineSeparator() {
        return null;
    }

    public static void arraycopy(Object obj, int i10, Object obj2, int i11, int i12) {
    }

    public static long currentTimeMillis() {
        return java.lang.System.currentTimeMillis();
    }

    public static long nanoTime() {
        return java.lang.System.nanoTime();
    }
}
