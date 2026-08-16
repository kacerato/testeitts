package java.time;

import java.time.format.TextStyle;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalQuery;
import java.time.temporal.ValueRange;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/DayOfWeek.class
 */
public enum DayOfWeek implements TemporalAccessor, TemporalAdjuster {
    FRIDAY,
    MONDAY,
    SATURDAY,
    SUNDAY,
    THURSDAY,
    TUESDAY,
    WEDNESDAY;

    public static DayOfWeek of(int dayOfWeek) {
        throw new RuntimeException("Stub!");
    }

    public static DayOfWeek from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public int getValue() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayName(TextStyle style, Locale locale) {
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

    public DayOfWeek plus(long days) {
        throw new RuntimeException("Stub!");
    }

    public DayOfWeek minus(long days) {
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
}
