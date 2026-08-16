package android.icu.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/UnicodeMatcher.class
 */
public interface UnicodeMatcher {
    public static final char ETHER = '\uffff';
    public static final int U_MATCH = 2;
    public static final int U_MISMATCH = 0;
    public static final int U_PARTIAL_MATCH = 1;

    int matches(Replaceable replaceable, int[] iArr, int i10, boolean z10);

    String toPattern(boolean z10);

    boolean matchesIndexValue(int i10);

    void addMatchSetTo(UnicodeSet unicodeSet);
}
