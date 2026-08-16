package java.time.format;

import java.text.Format;
import java.text.ParsePosition;
import java.time.Period;
import java.time.ZoneId;
import java.time.chrono.Chronology;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalQuery;
import java.util.Locale;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/format/DateTimeFormatter.class
 */
public final class DateTimeFormatter {
    public static final DateTimeFormatter BASIC_ISO_DATE = null;
    public static final DateTimeFormatter ISO_DATE = null;
    public static final DateTimeFormatter ISO_DATE_TIME = null;
    public static final DateTimeFormatter ISO_INSTANT = null;
    public static final DateTimeFormatter ISO_LOCAL_DATE = null;
    public static final DateTimeFormatter ISO_LOCAL_DATE_TIME = null;
    public static final DateTimeFormatter ISO_LOCAL_TIME = null;
    public static final DateTimeFormatter ISO_OFFSET_DATE = null;
    public static final DateTimeFormatter ISO_OFFSET_DATE_TIME = null;
    public static final DateTimeFormatter ISO_OFFSET_TIME = null;
    public static final DateTimeFormatter ISO_ORDINAL_DATE = null;
    public static final DateTimeFormatter ISO_TIME = null;
    public static final DateTimeFormatter ISO_WEEK_DATE = null;
    public static final DateTimeFormatter ISO_ZONED_DATE_TIME = null;
    public static final DateTimeFormatter RFC_1123_DATE_TIME = null;

    DateTimeFormatter() {
        throw new RuntimeException("Stub!");
    }

    public static DateTimeFormatter ofPattern(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public static DateTimeFormatter ofPattern(String pattern, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static DateTimeFormatter ofLocalizedDate(FormatStyle dateStyle) {
        throw new RuntimeException("Stub!");
    }

    public static DateTimeFormatter ofLocalizedTime(FormatStyle timeStyle) {
        throw new RuntimeException("Stub!");
    }

    public static DateTimeFormatter ofLocalizedDateTime(FormatStyle dateTimeStyle) {
        throw new RuntimeException("Stub!");
    }

    public static DateTimeFormatter ofLocalizedDateTime(FormatStyle dateStyle, FormatStyle timeStyle) {
        throw new RuntimeException("Stub!");
    }

    public static final TemporalQuery<Period> parsedExcessDays() {
        throw new RuntimeException("Stub!");
    }

    public static final TemporalQuery<Boolean> parsedLeapSecond() {
        throw new RuntimeException("Stub!");
    }

    public Locale getLocale() {
        throw new RuntimeException("Stub!");
    }

    public DateTimeFormatter withLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public DecimalStyle getDecimalStyle() {
        throw new RuntimeException("Stub!");
    }

    public DateTimeFormatter withDecimalStyle(DecimalStyle decimalStyle) {
        throw new RuntimeException("Stub!");
    }

    public Chronology getChronology() {
        throw new RuntimeException("Stub!");
    }

    public DateTimeFormatter withChronology(Chronology chrono) {
        throw new RuntimeException("Stub!");
    }

    public ZoneId getZone() {
        throw new RuntimeException("Stub!");
    }

    public DateTimeFormatter withZone(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public ResolverStyle getResolverStyle() {
        throw new RuntimeException("Stub!");
    }

    public DateTimeFormatter withResolverStyle(ResolverStyle resolverStyle) {
        throw new RuntimeException("Stub!");
    }

    public Set<TemporalField> getResolverFields() {
        throw new RuntimeException("Stub!");
    }

    public DateTimeFormatter withResolverFields(TemporalField... resolverFields) {
        throw new RuntimeException("Stub!");
    }

    public DateTimeFormatter withResolverFields(Set<TemporalField> resolverFields) {
        throw new RuntimeException("Stub!");
    }

    public String format(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public void formatTo(TemporalAccessor temporal, Appendable appendable) {
        throw new RuntimeException("Stub!");
    }

    public TemporalAccessor parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public TemporalAccessor parse(CharSequence text, ParsePosition position) {
        throw new RuntimeException("Stub!");
    }

    public <T> T parse(CharSequence text, TemporalQuery<T> query) {
        throw new RuntimeException("Stub!");
    }

    public TemporalAccessor parseBest(CharSequence text, TemporalQuery<?>... queries) {
        throw new RuntimeException("Stub!");
    }

    public TemporalAccessor parseUnresolved(CharSequence text, ParsePosition position) {
        throw new RuntimeException("Stub!");
    }

    public Format toFormat() {
        throw new RuntimeException("Stub!");
    }

    public Format toFormat(TemporalQuery<?> parseQuery) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
