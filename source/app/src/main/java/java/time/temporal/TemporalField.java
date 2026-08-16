package java.time.temporal;

import java.time.format.ResolverStyle;
import java.util.Locale;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/temporal/TemporalField.class
 */
public interface TemporalField {
    TemporalUnit getBaseUnit();

    TemporalUnit getRangeUnit();

    ValueRange range();

    boolean isDateBased();

    boolean isTimeBased();

    boolean isSupportedBy(TemporalAccessor temporalAccessor);

    ValueRange rangeRefinedBy(TemporalAccessor temporalAccessor);

    long getFrom(TemporalAccessor temporalAccessor);

    <R extends Temporal> R adjustInto(R r10, long j10);

    String toString();

    default String getDisplayName(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    default TemporalAccessor resolve(Map<TemporalField, Long> fieldValues, TemporalAccessor partialTemporal, ResolverStyle resolverStyle) {
        throw new RuntimeException("Stub!");
    }
}
