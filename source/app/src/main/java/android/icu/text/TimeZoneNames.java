package android.icu.text;

import android.icu.util.ULocale;
import java.io.Serializable;
import java.util.Locale;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/TimeZoneNames.class
 */
public abstract class TimeZoneNames implements Serializable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/TimeZoneNames$NameType.class
 */
    public enum NameType {
        EXEMPLAR_LOCATION,
        LONG_DAYLIGHT,
        LONG_GENERIC,
        LONG_STANDARD,
        SHORT_DAYLIGHT,
        SHORT_GENERIC,
        SHORT_STANDARD
    }

    public abstract Set<String> getAvailableMetaZoneIDs();

    public abstract Set<String> getAvailableMetaZoneIDs(String str);

    public abstract String getMetaZoneID(String str, long j10);

    public abstract String getReferenceZoneID(String str, String str2);

    public abstract String getMetaZoneDisplayName(String str, NameType nameType);

    public abstract String getTimeZoneDisplayName(String str, NameType nameType);

    TimeZoneNames() {
        throw new RuntimeException("Stub!");
    }

    public static TimeZoneNames getInstance(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static TimeZoneNames getInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static TimeZoneNames getTZDBInstance(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public final String getDisplayName(String tzID, NameType type, long date) {
        throw new RuntimeException("Stub!");
    }

    public String getExemplarLocationName(String tzID) {
        throw new RuntimeException("Stub!");
    }
}
