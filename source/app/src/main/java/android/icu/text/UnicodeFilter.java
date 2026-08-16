package android.icu.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/UnicodeFilter.class
 */
public abstract class UnicodeFilter implements UnicodeMatcher {
    public abstract boolean contains(int i10);

    public UnicodeFilter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int matches(Replaceable text, int[] offset, int limit, boolean incremental) {
        throw new RuntimeException("Stub!");
    }
}
