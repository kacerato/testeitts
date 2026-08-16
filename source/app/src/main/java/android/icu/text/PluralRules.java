package android.icu.text;

import android.icu.util.ULocale;
import java.io.Serializable;
import java.text.ParseException;
import java.util.Collection;
import java.util.Locale;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/PluralRules.class
 */
public class PluralRules implements Serializable {
    public static final PluralRules DEFAULT = null;
    public static final String KEYWORD_FEW = "few";
    public static final String KEYWORD_MANY = "many";
    public static final String KEYWORD_ONE = "one";
    public static final String KEYWORD_OTHER = "other";
    public static final String KEYWORD_TWO = "two";
    public static final String KEYWORD_ZERO = "zero";
    public static final double NO_UNIQUE_VALUE = -0.00123456777d;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/PluralRules$PluralType.class
 */
    public enum PluralType {
        CARDINAL,
        ORDINAL
    }

    PluralRules() {
        throw new RuntimeException("Stub!");
    }

    public static PluralRules parseDescription(String description) throws ParseException {
        throw new RuntimeException("Stub!");
    }

    public static PluralRules createRules(String description) {
        throw new RuntimeException("Stub!");
    }

    public static PluralRules forLocale(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static PluralRules forLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static PluralRules forLocale(ULocale locale, PluralType type) {
        throw new RuntimeException("Stub!");
    }

    public static PluralRules forLocale(Locale locale, PluralType type) {
        throw new RuntimeException("Stub!");
    }

    public String select(double number) {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getKeywords() {
        throw new RuntimeException("Stub!");
    }

    public double getUniqueKeywordValue(String keyword) {
        throw new RuntimeException("Stub!");
    }

    public Collection<Double> getAllKeywordValues(String keyword) {
        throw new RuntimeException("Stub!");
    }

    public Collection<Double> getSamples(String keyword) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object rhs) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(PluralRules rhs) {
        throw new RuntimeException("Stub!");
    }
}
