package java.util;

import java.io.Serializable;
import java.time.ZoneId;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/TimeZone.class
 */
public abstract class TimeZone implements Serializable, Cloneable {
    public static final int LONG = 1;
    public static final int SHORT = 0;

    public abstract int getOffset(int i10, int i11, int i12, int i13, int i14, int i15);

    public abstract void setRawOffset(int i10);

    public abstract int getRawOffset();

    public abstract boolean useDaylightTime();

    public abstract boolean inDaylightTime(Date date);

    public TimeZone() {
        throw new RuntimeException("Stub!");
    }

    public int getOffset(long date) {
        throw new RuntimeException("Stub!");
    }

    public String getID() {
        throw new RuntimeException("Stub!");
    }

    public void setID(String ID) {
        throw new RuntimeException("Stub!");
    }

    public final String getDisplayName() {
        throw new RuntimeException("Stub!");
    }

    public final String getDisplayName(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public final String getDisplayName(boolean daylight, int style) {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayName(boolean daylightTime, int style, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public int getDSTSavings() {
        throw new RuntimeException("Stub!");
    }

    public boolean observesDaylightTime() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized TimeZone getTimeZone(String id2) {
        throw new RuntimeException("Stub!");
    }

    public static TimeZone getTimeZone(ZoneId zoneId) {
        throw new RuntimeException("Stub!");
    }

    public ZoneId toZoneId() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized String[] getAvailableIDs(int rawOffset) {
        throw new RuntimeException("Stub!");
    }

    public static synchronized String[] getAvailableIDs() {
        throw new RuntimeException("Stub!");
    }

    public static TimeZone getDefault() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized void setDefault(TimeZone timeZone) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasSameRules(TimeZone other) {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }
}
