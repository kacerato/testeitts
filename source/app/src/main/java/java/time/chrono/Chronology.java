package java.time.chrono;

import java.time.Clock;
import java.time.Instant;
import java.time.ZoneId;
import java.time.format.ResolverStyle;
import java.time.format.TextStyle;
import java.time.temporal.ChronoField;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalField;
import java.time.temporal.ValueRange;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/Chronology.class
 */
public interface Chronology extends Comparable<Chronology> {
    String getId();

    String getCalendarType();

    ChronoLocalDate date(int i10, int i11, int i12);

    ChronoLocalDate dateYearDay(int i10, int i11);

    ChronoLocalDate dateEpochDay(long j10);

    ChronoLocalDate date(TemporalAccessor temporalAccessor);

    boolean isLeapYear(long j10);

    int prolepticYear(Era era, int i10);

    Era eraOf(int i10);

    List<Era> eras();

    ValueRange range(ChronoField chronoField);

    ChronoLocalDate resolveDate(Map<TemporalField, Long> map, ResolverStyle resolverStyle);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    int compareTo(Chronology chronology);

    boolean equals(Object obj);

    int hashCode();

    String toString();

    static Chronology from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    static Chronology ofLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    static Chronology of(String id2) {
        throw new RuntimeException("Stub!");
    }

    static Set<Chronology> getAvailableChronologies() {
        throw new RuntimeException("Stub!");
    }

    default ChronoLocalDate date(Era era, int yearOfEra, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    default ChronoLocalDate dateYearDay(Era era, int yearOfEra, int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    default ChronoLocalDate dateNow() {
        throw new RuntimeException("Stub!");
    }

    default ChronoLocalDate dateNow(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    default ChronoLocalDate dateNow(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    default ChronoLocalDateTime<? extends ChronoLocalDate> localDateTime(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    default ChronoZonedDateTime<? extends ChronoLocalDate> zonedDateTime(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    default ChronoZonedDateTime<? extends ChronoLocalDate> zonedDateTime(Instant instant, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    default String getDisplayName(TextStyle style, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    default ChronoPeriod period(int years, int months, int days) {
        throw new RuntimeException("Stub!");
    }
}
