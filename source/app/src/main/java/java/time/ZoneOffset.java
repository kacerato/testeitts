package java.time;

import java.io.Serializable;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalQuery;
import java.time.temporal.ValueRange;
import java.time.zone.ZoneRules;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/ZoneOffset.class
 */
public final class ZoneOffset extends ZoneId implements TemporalAccessor, TemporalAdjuster, Comparable<ZoneOffset>, Serializable {
    public static final ZoneOffset MAX = null;
    public static final ZoneOffset MIN = null;
    public static final ZoneOffset UTC = null;

    ZoneOffset() {
        throw new RuntimeException("Stub!");
    }

    public static ZoneOffset of(String offsetId) {
        throw new RuntimeException("Stub!");
    }

    public static ZoneOffset ofHours(int hours) {
        throw new RuntimeException("Stub!");
    }

    public static ZoneOffset ofHoursMinutes(int hours, int minutes) {
        throw new RuntimeException("Stub!");
    }

    public static ZoneOffset ofHoursMinutesSeconds(int hours, int minutes, int seconds) {
        throw new RuntimeException("Stub!");
    }

    public static ZoneOffset from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static ZoneOffset ofTotalSeconds(int totalSeconds) {
        throw new RuntimeException("Stub!");
    }

    public int getTotalSeconds() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getId() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZoneRules getRules() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isSupported(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ValueRange range(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int get(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getLong(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <R> R query(TemporalQuery<R> query) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Temporal adjustInto(Temporal temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(ZoneOffset other) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
