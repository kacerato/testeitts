package android.icu.text;

import android.icu.text.Normalizer;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/Normalizer2.class
 */
public abstract class Normalizer2 {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/Normalizer2$Mode.class
 */
    public enum Mode {
        COMPOSE,
        COMPOSE_CONTIGUOUS,
        DECOMPOSE,
        FCD
    }

    public abstract StringBuilder normalize(CharSequence charSequence, StringBuilder sb2);

    public abstract Appendable normalize(CharSequence charSequence, Appendable appendable);

    public abstract StringBuilder normalizeSecondAndAppend(StringBuilder sb2, CharSequence charSequence);

    public abstract StringBuilder append(StringBuilder sb2, CharSequence charSequence);

    public abstract String getDecomposition(int i10);

    public abstract boolean isNormalized(CharSequence charSequence);

    public abstract Normalizer.QuickCheckResult quickCheck(CharSequence charSequence);

    public abstract int spanQuickCheckYes(CharSequence charSequence);

    public abstract boolean hasBoundaryBefore(int i10);

    public abstract boolean hasBoundaryAfter(int i10);

    public abstract boolean isInert(int i10);

    Normalizer2() {
        throw new RuntimeException("Stub!");
    }

    public static Normalizer2 getNFCInstance() {
        throw new RuntimeException("Stub!");
    }

    public static Normalizer2 getNFDInstance() {
        throw new RuntimeException("Stub!");
    }

    public static Normalizer2 getNFKCInstance() {
        throw new RuntimeException("Stub!");
    }

    public static Normalizer2 getNFKDInstance() {
        throw new RuntimeException("Stub!");
    }

    public static Normalizer2 getNFKCCasefoldInstance() {
        throw new RuntimeException("Stub!");
    }

    public static Normalizer2 getInstance(InputStream data, String name, Mode mode) {
        throw new RuntimeException("Stub!");
    }

    public String normalize(CharSequence src) {
        throw new RuntimeException("Stub!");
    }

    public String getRawDecomposition(int c10) {
        throw new RuntimeException("Stub!");
    }

    public int composePair(int a10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public int getCombiningClass(int c10) {
        throw new RuntimeException("Stub!");
    }
}
