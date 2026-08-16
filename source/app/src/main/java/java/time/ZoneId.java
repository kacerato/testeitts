package java.time;

import java.io.Serializable;
import java.time.format.TextStyle;
import java.time.temporal.TemporalAccessor;
import java.time.zone.ZoneRules;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/ZoneId.class
 */
public abstract class ZoneId implements Serializable {
    public static final Map<String, String> SHORT_IDS = null;

    public abstract String getId();

    public abstract ZoneRules getRules();

    public ZoneId() {
        throw new RuntimeException("Stub!");
    }

    public static ZoneId systemDefault() {
        throw new RuntimeException("Stub!");
    }

    public static Set<String> getAvailableZoneIds() {
        throw new RuntimeException("Stub!");
    }

    public static ZoneId of(String zoneId, Map<String, String> aliasMap) {
        throw new RuntimeException("Stub!");
    }

    public static ZoneId of(String zoneId) {
        throw new RuntimeException("Stub!");
    }

    public static ZoneId ofOffset(String prefix, ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public static ZoneId from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayName(TextStyle style, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public ZoneId normalized() {
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
}
