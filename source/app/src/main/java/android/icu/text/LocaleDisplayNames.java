package android.icu.text;

import android.icu.text.DisplayContext;
import android.icu.util.ULocale;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/LocaleDisplayNames.class
 */
public abstract class LocaleDisplayNames {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/LocaleDisplayNames$DialectHandling.class
 */
    public enum DialectHandling {
        DIALECT_NAMES,
        STANDARD_NAMES
    }

    public abstract ULocale getLocale();

    public abstract DialectHandling getDialectHandling();

    public abstract DisplayContext getContext(DisplayContext.Type type);

    public abstract String localeDisplayName(ULocale uLocale);

    public abstract String localeDisplayName(Locale locale);

    public abstract String localeDisplayName(String str);

    public abstract String languageDisplayName(String str);

    public abstract String scriptDisplayName(String str);

    public abstract String scriptDisplayName(int i10);

    public abstract String regionDisplayName(String str);

    public abstract String variantDisplayName(String str);

    public abstract String keyDisplayName(String str);

    public abstract String keyValueDisplayName(String str, String str2);

    public abstract List<UiListItem> getUiListCompareWholeItems(Set<ULocale> set, Comparator<UiListItem> comparator);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/LocaleDisplayNames$UiListItem.class
 */
    public static class UiListItem {
        public final ULocale minimized;
        public final ULocale modified;
        public final String nameInDisplayLocale;
        public final String nameInSelf;

        public UiListItem(ULocale minimized, ULocale modified, String nameInDisplayLocale, String nameInSelf) {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object obj) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        public static Comparator<UiListItem> getComparator(Comparator<Object> comparator, boolean inSelf) {
            throw new RuntimeException("Stub!");
        }
    }

    LocaleDisplayNames() {
        throw new RuntimeException("Stub!");
    }

    public static LocaleDisplayNames getInstance(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static LocaleDisplayNames getInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static LocaleDisplayNames getInstance(ULocale locale, DialectHandling dialectHandling) {
        throw new RuntimeException("Stub!");
    }

    public static LocaleDisplayNames getInstance(ULocale locale, DisplayContext... contexts) {
        throw new RuntimeException("Stub!");
    }

    public static LocaleDisplayNames getInstance(Locale locale, DisplayContext... contexts) {
        throw new RuntimeException("Stub!");
    }

    public List<UiListItem> getUiList(Set<ULocale> localeSet, boolean inSelf, Comparator<Object> collator) {
        throw new RuntimeException("Stub!");
    }
}
