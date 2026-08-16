package java.time.chrono;

import java.time.format.TextStyle;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalQuery;
import java.time.temporal.ValueRange;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/Era.class
 */
public interface Era extends TemporalAccessor, TemporalAdjuster {
    int getValue();

    @Override
    default boolean isSupported(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ValueRange range(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default int get(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default long getLong(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default <R> R query(TemporalQuery<R> query) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default Temporal adjustInto(Temporal temporal) {
        throw new RuntimeException("Stub!");
    }

    default String getDisplayName(TextStyle style, Locale locale) {
        throw new RuntimeException("Stub!");
    }
}
