package android.icu.text;

import android.icu.util.Freezable;
import android.icu.util.ULocale;
import android.icu.util.VersionInfo;
import java.util.Comparator;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/Collator.class
 */
public abstract class Collator implements Comparator<Object>, Freezable<Collator>, Cloneable {
    public static final int CANONICAL_DECOMPOSITION = 17;
    public static final int FULL_DECOMPOSITION = 15;
    public static final int IDENTICAL = 15;
    public static final int NO_DECOMPOSITION = 16;
    public static final int PRIMARY = 0;
    public static final int QUATERNARY = 3;
    public static final int SECONDARY = 1;
    public static final int TERTIARY = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/Collator$ReorderCodes.class
 */
    public interface ReorderCodes {
        public static final int CURRENCY = 4099;
        public static final int DEFAULT = -1;
        public static final int DIGIT = 4100;
        public static final int FIRST = 4096;
        public static final int NONE = 103;
        public static final int OTHERS = 103;
        public static final int PUNCTUATION = 4097;
        public static final int SPACE = 4096;
        public static final int SYMBOL = 4098;
    }

    public abstract int compare(String str, String str2);

    public abstract CollationKey getCollationKey(String str);

    public abstract int getVariableTop();

    public abstract VersionInfo getVersion();

    public abstract VersionInfo getUCAVersion();

    public Collator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public void setStrength(int newStrength) {
        throw new RuntimeException("Stub!");
    }

    public void setDecomposition(int decomposition) {
        throw new RuntimeException("Stub!");
    }

    public void setReorderCodes(int... order) {
        throw new RuntimeException("Stub!");
    }

    public static final Collator getInstance() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    public static final Collator getInstance(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final Collator getInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static Locale[] getAvailableLocales() {
        throw new RuntimeException("Stub!");
    }

    public static final ULocale[] getAvailableULocales() {
        throw new RuntimeException("Stub!");
    }

    public static final String[] getKeywords() {
        throw new RuntimeException("Stub!");
    }

    public static final String[] getKeywordValues(String keyword) {
        throw new RuntimeException("Stub!");
    }

    public static final String[] getKeywordValuesForLocale(String key, ULocale locale, boolean commonlyUsed) {
        throw new RuntimeException("Stub!");
    }

    public static final ULocale getFunctionalEquivalent(String keyword, ULocale locID, boolean[] isAvailable) {
        throw new RuntimeException("Stub!");
    }

    public static final ULocale getFunctionalEquivalent(String keyword, ULocale locID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayName(Locale objectLocale, Locale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayName(ULocale objectLocale, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayName(Locale objectLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayName(ULocale objectLocale) {
        throw new RuntimeException("Stub!");
    }

    public int getStrength() {
        throw new RuntimeException("Stub!");
    }

    public int getDecomposition() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(String source, String target) {
        throw new RuntimeException("Stub!");
    }

    public UnicodeSet getTailoredSet() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compare(Object source, Object target) {
        throw new RuntimeException("Stub!");
    }

    public Collator setMaxVariable(int group) {
        throw new RuntimeException("Stub!");
    }

    public int getMaxVariable() {
        throw new RuntimeException("Stub!");
    }

    public int[] getReorderCodes() {
        throw new RuntimeException("Stub!");
    }

    public static int[] getEquivalentReorderCodes(int reorderCode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isFrozen() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Collator freeze() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Collator cloneAsThawed2() {
        throw new RuntimeException("Stub!");
    }
}
