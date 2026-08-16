package android.icu.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/Normalizer.class
 */
public final class Normalizer implements Cloneable {
    public static final int COMPARE_CODE_POINT_ORDER = 32768;
    public static final int COMPARE_IGNORE_CASE = 65536;
    public static final int FOLD_CASE_DEFAULT = 0;
    public static final int FOLD_CASE_EXCLUDE_SPECIAL_I = 1;
    public static final int INPUT_IS_FCD = 131072;
    public static final QuickCheckResult MAYBE = null;
    public static final QuickCheckResult NO = null;
    public static final QuickCheckResult YES = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/Normalizer$QuickCheckResult.class
 */
    public static final class QuickCheckResult {
        QuickCheckResult() {
            throw new RuntimeException("Stub!");
        }
    }

    Normalizer() {
        throw new RuntimeException("Stub!");
    }

    public static int compare(char[] s12, int s1Start, int s1Limit, char[] s22, int s2Start, int s2Limit, int options) {
        throw new RuntimeException("Stub!");
    }

    public static int compare(String s12, String s22, int options) {
        throw new RuntimeException("Stub!");
    }

    public static int compare(char[] s12, char[] s22, int options) {
        throw new RuntimeException("Stub!");
    }

    public static int compare(int char32a, int char32b, int options) {
        throw new RuntimeException("Stub!");
    }

    public static int compare(int char32a, String str2, int options) {
        throw new RuntimeException("Stub!");
    }
}
