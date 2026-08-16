package android.icu.util;

import java.util.Date;
import java.util.Locale;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/Currency.class
 */
public class Currency extends MeasureUnit {
    public static final int LONG_NAME = 1;
    public static final int PLURAL_LONG_NAME = 2;
    public static final int SYMBOL_NAME = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/Currency$CurrencyUsage.class
 */
    public enum CurrencyUsage {
        CASH,
        STANDARD
    }

    protected Currency(String theISOCode) {
        throw new RuntimeException("Stub!");
    }

    public static Currency getInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static Currency getInstance(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static String[] getAvailableCurrencyCodes(ULocale loc, Date d10) {
        throw new RuntimeException("Stub!");
    }

    public static String[] getAvailableCurrencyCodes(Locale loc, Date d10) {
        throw new RuntimeException("Stub!");
    }

    public static Set<Currency> getAvailableCurrencies() {
        throw new RuntimeException("Stub!");
    }

    public static Currency getInstance(String theISOCode) {
        throw new RuntimeException("Stub!");
    }

    public static Locale[] getAvailableLocales() {
        throw new RuntimeException("Stub!");
    }

    public static ULocale[] getAvailableULocales() {
        throw new RuntimeException("Stub!");
    }

    public static final String[] getKeywordValuesForLocale(String key, ULocale locale, boolean commonlyUsed) {
        throw new RuntimeException("Stub!");
    }

    public String getCurrencyCode() {
        throw new RuntimeException("Stub!");
    }

    public int getNumericCode() {
        throw new RuntimeException("Stub!");
    }

    public String getSymbol() {
        throw new RuntimeException("Stub!");
    }

    public String getSymbol(Locale loc) {
        throw new RuntimeException("Stub!");
    }

    public String getSymbol(ULocale uloc) {
        throw new RuntimeException("Stub!");
    }

    public String getName(Locale locale, int nameStyle, boolean[] isChoiceFormat) {
        throw new RuntimeException("Stub!");
    }

    public String getName(ULocale locale, int nameStyle, boolean[] isChoiceFormat) {
        throw new RuntimeException("Stub!");
    }

    public String getName(Locale locale, int nameStyle, String pluralCount, boolean[] isChoiceFormat) {
        throw new RuntimeException("Stub!");
    }

    public String getName(ULocale locale, int nameStyle, String pluralCount, boolean[] isChoiceFormat) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayName() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayName(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public int getDefaultFractionDigits() {
        throw new RuntimeException("Stub!");
    }

    public int getDefaultFractionDigits(CurrencyUsage Usage) {
        throw new RuntimeException("Stub!");
    }

    public double getRoundingIncrement() {
        throw new RuntimeException("Stub!");
    }

    public double getRoundingIncrement(CurrencyUsage Usage) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isAvailable(String code, Date from, Date to) {
        throw new RuntimeException("Stub!");
    }
}
