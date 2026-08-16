package java.util;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Locale.class
 */
public final class Locale implements Cloneable, Serializable {
    public static final char PRIVATE_USE_EXTENSION = 'x';
    public static final char UNICODE_LOCALE_EXTENSION = 'u';
    public static final Locale CANADA = null;
    public static final Locale CANADA_FRENCH = null;
    public static final Locale CHINA = null;
    public static final Locale CHINESE = null;
    public static final Locale ENGLISH = null;
    public static final Locale FRANCE = null;
    public static final Locale FRENCH = null;
    public static final Locale GERMAN = null;
    public static final Locale GERMANY = null;
    public static final Locale ITALIAN = null;
    public static final Locale ITALY = null;
    public static final Locale JAPAN = null;
    public static final Locale JAPANESE = null;
    public static final Locale KOREA = null;
    public static final Locale KOREAN = null;
    public static final Locale PRC = null;
    public static final Locale ROOT = null;
    public static final Locale SIMPLIFIED_CHINESE = null;
    public static final Locale TAIWAN = null;
    public static final Locale TRADITIONAL_CHINESE = null;
    public static final Locale UK = null;
    public static final Locale US = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Locale$Category.class
 */
    public enum Category {
        DISPLAY,
        FORMAT
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Locale$FilteringMode.class
 */
    public enum FilteringMode {
        AUTOSELECT_FILTERING,
        EXTENDED_FILTERING,
        IGNORE_EXTENDED_RANGES,
        MAP_EXTENDED_RANGES,
        REJECT_EXTENDED_RANGES
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Locale$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setLocale(Locale locale) {
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

        public Locale build() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Locale$LanguageRange.class
 */
    public static final class LanguageRange {
        public static final double MAX_WEIGHT = 1.0d;
        public static final double MIN_WEIGHT = 0.0d;

        public LanguageRange(String range) {
            throw new RuntimeException("Stub!");
        }

        public LanguageRange(String range, double weight) {
            throw new RuntimeException("Stub!");
        }

        public String getRange() {
            throw new RuntimeException("Stub!");
        }

        public double getWeight() {
            throw new RuntimeException("Stub!");
        }

        public static List<LanguageRange> parse(String ranges) {
            throw new RuntimeException("Stub!");
        }

        public static List<LanguageRange> parse(String ranges, Map<String, List<String>> map) {
            throw new RuntimeException("Stub!");
        }

        public static List<LanguageRange> mapEquivalents(List<LanguageRange> priorityList, Map<String, List<String>> map) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object obj) {
            throw new RuntimeException("Stub!");
        }
    }

    public Locale(String language, String country, String variant) {
        throw new RuntimeException("Stub!");
    }

    public Locale(String language, String country) {
        throw new RuntimeException("Stub!");
    }

    public Locale(String language) {
        throw new RuntimeException("Stub!");
    }

    public static Locale getDefault() {
        throw new RuntimeException("Stub!");
    }

    public static Locale getDefault(Category category) {
        throw new RuntimeException("Stub!");
    }

    public static synchronized void setDefault(Locale newLocale) {
        throw new RuntimeException("Stub!");
    }

    public static synchronized void setDefault(Category category, Locale newLocale) {
        throw new RuntimeException("Stub!");
    }

    public static Locale[] getAvailableLocales() {
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

    public String getScript() {
        throw new RuntimeException("Stub!");
    }

    public String getCountry() {
        throw new RuntimeException("Stub!");
    }

    public String getVariant() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasExtensions() {
        throw new RuntimeException("Stub!");
    }

    public Locale stripExtensions() {
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

    public final String toString() {
        throw new RuntimeException("Stub!");
    }

    public String toLanguageTag() {
        throw new RuntimeException("Stub!");
    }

    public static Locale forLanguageTag(String languageTag) {
        throw new RuntimeException("Stub!");
    }

    public String getISO3Language() throws MissingResourceException {
        throw new RuntimeException("Stub!");
    }

    public String getISO3Country() throws MissingResourceException {
        throw new RuntimeException("Stub!");
    }

    public final String getDisplayLanguage() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayLanguage(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayScript() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayScript(Locale inLocale) {
        throw new RuntimeException("Stub!");
    }

    public final String getDisplayCountry() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayCountry(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public final String getDisplayVariant() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayVariant(Locale inLocale) {
        throw new RuntimeException("Stub!");
    }

    public final String getDisplayName() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayName(Locale locale) {
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

    public static List<Locale> filter(List<LanguageRange> priorityList, Collection<Locale> locales, FilteringMode mode) {
        throw new RuntimeException("Stub!");
    }

    public static List<Locale> filter(List<LanguageRange> priorityList, Collection<Locale> locales) {
        throw new RuntimeException("Stub!");
    }

    public static List<String> filterTags(List<LanguageRange> priorityList, Collection<String> tags, FilteringMode mode) {
        throw new RuntimeException("Stub!");
    }

    public static List<String> filterTags(List<LanguageRange> priorityList, Collection<String> tags) {
        throw new RuntimeException("Stub!");
    }

    public static Locale lookup(List<LanguageRange> priorityList, Collection<Locale> locales) {
        throw new RuntimeException("Stub!");
    }

    public static String lookupTag(List<LanguageRange> priorityList, Collection<String> tags) {
        throw new RuntimeException("Stub!");
    }
}
