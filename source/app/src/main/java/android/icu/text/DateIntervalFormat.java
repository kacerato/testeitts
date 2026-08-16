package android.icu.text;

import android.icu.util.Calendar;
import android.icu.util.DateInterval;
import android.icu.util.TimeZone;
import android.icu.util.ULocale;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/DateIntervalFormat.class
 */
public class DateIntervalFormat extends UFormat {
    DateIntervalFormat() {
        throw new RuntimeException("Stub!");
    }

    public static final DateIntervalFormat getInstance(String skeleton) {
        throw new RuntimeException("Stub!");
    }

    public static final DateIntervalFormat getInstance(String skeleton, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateIntervalFormat getInstance(String skeleton, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateIntervalFormat getInstance(String skeleton, DateIntervalInfo dtitvinf) {
        throw new RuntimeException("Stub!");
    }

    public static final DateIntervalFormat getInstance(String skeleton, Locale locale, DateIntervalInfo dtitvinf) {
        throw new RuntimeException("Stub!");
    }

    public static final DateIntervalFormat getInstance(String skeleton, ULocale locale, DateIntervalInfo dtitvinf) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final StringBuffer format(Object obj, StringBuffer appendTo, FieldPosition fieldPosition) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized StringBuffer format(DateInterval dtInterval, StringBuffer appendTo, FieldPosition fieldPosition) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized StringBuffer format(Calendar fromCalendar, Calendar toCalendar, StringBuffer appendTo, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    public DateIntervalInfo getDateIntervalInfo() {
        throw new RuntimeException("Stub!");
    }

    public void setDateIntervalInfo(DateIntervalInfo newItvPattern) {
        throw new RuntimeException("Stub!");
    }

    public TimeZone getTimeZone() {
        throw new RuntimeException("Stub!");
    }

    public void setTimeZone(TimeZone zone) {
        throw new RuntimeException("Stub!");
    }

    public synchronized DateFormat getDateFormat() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public Object parseObject(String source, ParsePosition parse_pos) {
        throw new RuntimeException("Stub!");
    }
}
