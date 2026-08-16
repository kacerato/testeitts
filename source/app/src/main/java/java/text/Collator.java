package java.text;

import java.util.Comparator;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/Collator.class
 */
public abstract class Collator implements Comparator<Object>, Cloneable {
    public static final int CANONICAL_DECOMPOSITION = 1;
    public static final int FULL_DECOMPOSITION = 2;
    public static final int IDENTICAL = 3;
    public static final int NO_DECOMPOSITION = 0;
    public static final int PRIMARY = 0;
    public static final int SECONDARY = 1;
    public static final int TERTIARY = 2;

    public abstract int compare(String str, String str2);

    public abstract CollationKey getCollationKey(String str);

    public abstract int hashCode();

    public Collator() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized Collator getInstance() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized Collator getInstance(Locale desiredLocale) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compare(Object o12, Object o22) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(String source, String target) {
        throw new RuntimeException("Stub!");
    }

    public synchronized int getStrength() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setStrength(int newStrength) {
        throw new RuntimeException("Stub!");
    }

    public synchronized int getDecomposition() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setDecomposition(int decompositionMode) {
        throw new RuntimeException("Stub!");
    }

    public static synchronized Locale[] getAvailableLocales() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object that) {
        throw new RuntimeException("Stub!");
    }
}
