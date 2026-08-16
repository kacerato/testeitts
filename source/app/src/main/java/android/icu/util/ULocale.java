package android.icu.util;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/ULocale.class
 */
public final class ULocale implements Serializable, Comparable<ULocale> {
    public static final char PRIVATE_USE_EXTENSION = 'x';
    public static final char UNICODE_LOCALE_EXTENSION = 'u';
    public static final ULocale CANADA = null;
    public static final ULocale CANADA_FRENCH = null;
    public static final ULocale CHINA = null;
    public static final ULocale CHINESE = null;
    public static final ULocale ENGLISH = null;
    public static final ULocale FRANCE = null;
    public static final ULocale FRENCH = null;
    public static final ULocale GERMAN = null;
    public static final ULocale GERMANY = null;
    public static final ULocale ITALIAN = null;
    public static final ULocale ITALY = null;
    public static final ULocale JAPAN = null;
    public static final ULocale JAPANESE = null;
    public static final ULocale KOREA = null;
    public static final ULocale KOREAN = null;
    public static final ULocale PRC = null;
    public static final ULocale ROOT = null;
    public static final ULocale SIMPLIFIED_CHINESE = null;
    public static final ULocale TAIWAN = null;
    public static final ULocale TRADITIONAL_CHINESE = null;
    public static final ULocale UK = null;
    public static final ULocale US = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/ULocale$Category.class
 */
    public enum Category {
        DISPLAY,
        FORMAT
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/ULocale$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setLocale(ULocale locale) {
            throw new RuntimeException("Stub!");
        }

        public Builder setLanguageTag(String languageTag) {
            throw new RuntimeException("Stub!");
        }

        public Builder setLanguage(String language) {
            throw new RuntimeException("Stub!");
        }

        public Builder setScript(String script) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRegion(String region) {
            throw new RuntimeException("Stub!");
        }

        public Builder setVariant(String variant) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtension(char key, String value) {
            throw new RuntimeException("Stub!");
        }

        public Builder setUnicodeLocaleKeyword(String key, String type) {
            throw new RuntimeException("Stub!");
        }

        public Builder addUnicodeLocaleAttribute(String attribute) {
            throw new RuntimeException("Stub!");
        }

        public Builder removeUnicodeLocaleAttribute(String attribute) {
            throw new RuntimeException("Stub!");
        }

        public Builder clear() {
            throw new RuntimeException("Stub!");
        }

        public Builder clearExtensions() {
            throw new RuntimeException("Stub!");
        }

        public ULocale build() {
            throw new RuntimeException("Stub!");
        }
    }

    public ULocale(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public ULocale(String a10, String b10) {
        throw new RuntimeException("Stub!");
    }

    public ULocale(String a10, String b10, String c10) {
        throw new RuntimeException("Stub!");
    }

    public static ULocale forLocale(Locale loc) {
        throw new RuntimeException("Stub!");
    }

    public static ULocale createCanonical(String nonCanonicalID) {
        throw new RuntimeException("Stub!");
    }

    public Locale toLocale() {
        throw new RuntimeException("Stub!");
    }

    public static ULocale getDefault() {
        throw new RuntimeException("Stub!");
    }

    public static ULocale getDefault(Category category) {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(ULocale other) {
        throw new RuntimeException("Stub!");
    }

    public static ULocale[] getAvailableLocales() {
        throw new RuntimeException("Stub!");
    }

    public static String[] getISOCountries() {
        throw new RuntimeException("Stub!");
    }

    public static String[] getISOLanguages() {
        throw new RuntimeException("Stub!");
    }

    public String getLanguage() {
        throw new RuntimeException("Stub!");
    }

    public static String getLanguage(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public String getScript() {
        throw new RuntimeException("Stub!");
    }

    public static String getScript(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public String getCountry() {
        throw new RuntimeException("Stub!");
    }

    public static String getCountry(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public String getVariant() {
        throw new RuntimeException("Stub!");
    }

    public static String getVariant(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public static String getFallback(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public ULocale getFallback() {
        throw new RuntimeException("Stub!");
    }

    public String getBaseName() {
        throw new RuntimeException("Stub!");
    }

    public static String getBaseName(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public static String getName(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public Iterator<String> getKeywords() {
        throw new RuntimeException("Stub!");
    }

    public static Iterator<String> getKeywords(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public String getKeywordValue(String keywordName) {
        throw new RuntimeException("Stub!");
    }

    public static String getKeywordValue(String localeID, String keywordName) {
        throw new RuntimeException("Stub!");
    }

    public static String canonicalize(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public ULocale setKeywordValue(String keyword, String value) {
        throw new RuntimeException("Stub!");
    }

    public static String setKeywordValue(String localeID, String keyword, String value) {
        throw new RuntimeException("Stub!");
    }

    public String getISO3Language() {
        throw new RuntimeException("Stub!");
    }

    public static String getISO3Language(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public String getISO3Country() {
        throw new RuntimeException("Stub!");
    }

    public static String getISO3Country(String localeID) {
        throw new RuntimeException("Stub!");
    }

    public boolean isRightToLeft() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayLanguage() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayLanguage(ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayLanguage(String localeID, String displayLocaleID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayLanguage(String localeID, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayLanguageWithDialect() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayLanguageWithDialect(ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayLanguageWithDialect(String localeID, String displayLocaleID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayLanguageWithDialect(String localeID, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayScript() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayScript(ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayScript(String localeID, String displayLocaleID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayScript(String localeID, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayCountry() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayCountry(ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayCountry(String localeID, String displayLocaleID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayCountry(String localeID, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayVariant() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayVariant(ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayVariant(String localeID, String displayLocaleID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayVariant(String localeID, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayKeyword(String keyword) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayKeyword(String keyword, String displayLocaleID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayKeyword(String keyword, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayKeywordValue(String keyword) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayKeywordValue(String keyword, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayKeywordValue(String localeID, String keyword, String displayLocaleID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayKeywordValue(String localeID, String keyword, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayName() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayName(ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayName(String localeID, String displayLocaleID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayName(String localeID, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayNameWithDialect() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayNameWithDialect(ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayNameWithDialect(String localeID, String displayLocaleID) {
        throw new RuntimeException("Stub!");
    }

    public static String getDisplayNameWithDialect(String localeID, ULocale displayLocale) {
        throw new RuntimeException("Stub!");
    }

    public String getCharacterOrientation() {
        throw new RuntimeException("Stub!");
    }

    public String getLineOrientation() {
        throw new RuntimeException("Stub!");
    }

    public static ULocale acceptLanguage(String acceptLanguageList, ULocale[] availableLocales, boolean[] fallback) {
        throw new RuntimeException("Stub!");
    }

    public static ULocale acceptLanguage(ULocale[] acceptLanguageList, ULocale[] availableLocales, boolean[] fallback) {
        throw new RuntimeException("Stub!");
    }

    public static ULocale acceptLanguage(String acceptLanguageList, boolean[] fallback) {
        throw new RuntimeException("Stub!");
    }

    public static ULocale acceptLanguage(ULocale[] acceptLanguageList, boolean[] fallback) {
        throw new RuntimeException("Stub!");
    }

    public static ULocale addLikelySubtags(ULocale loc) {
        throw new RuntimeException("Stub!");
    }

    public static ULocale minimizeSubtags(ULocale loc) {
        throw new RuntimeException("Stub!");
    }

    public String getExtension(char key) {
        throw new RuntimeException("Stub!");
    }

    public Set<Character> getExtensionKeys() {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getUnicodeLocaleAttributes() {
        throw new RuntimeException("Stub!");
    }

    public String getUnicodeLocaleType(String key) {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getUnicodeLocaleKeys() {
        throw new RuntimeException("Stub!");
    }

    public String toLanguageTag() {
        throw new RuntimeException("Stub!");
    }

    public static ULocale forLanguageTag(String languageTag) {
        throw new RuntimeException("Stub!");
    }

    public static String toUnicodeLocaleKey(String keyword) {
        throw new RuntimeException("Stub!");
    }

    public static String toUnicodeLocaleType(String keyword, String value) {
        throw new RuntimeException("Stub!");
    }

    public static String toLegacyKey(String keyword) {
        throw new RuntimeException("Stub!");
    }

    public static String toLegacyType(String keyword, String value) {
        throw new RuntimeException("Stub!");
    }
}
