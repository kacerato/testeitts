package android.icu.text;

import android.icu.text.DisplayContext;
import android.icu.util.Calendar;
import android.icu.util.TimeZone;
import android.icu.util.ULocale;
import java.io.InvalidObjectException;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/DateFormat.class
 */
public abstract class DateFormat extends UFormat {
    public static final String ABBR_GENERIC_TZ = "v";
    public static final String ABBR_MONTH = "MMM";
    public static final String ABBR_MONTH_DAY = "MMMd";
    public static final String ABBR_MONTH_WEEKDAY_DAY = "MMMEd";
    public static final String ABBR_QUARTER = "QQQ";
    public static final String ABBR_SPECIFIC_TZ = "z";
    public static final String ABBR_UTC_TZ = "ZZZZ";
    public static final String ABBR_WEEKDAY = "E";
    public static final int AM_PM_FIELD = 14;
    public static final int DATE_FIELD = 3;
    public static final String DAY = "d";
    public static final int DAY_OF_WEEK_FIELD = 9;
    public static final int DAY_OF_WEEK_IN_MONTH_FIELD = 11;
    public static final int DAY_OF_YEAR_FIELD = 10;
    public static final int DEFAULT = 2;
    public static final int DOW_LOCAL_FIELD = 19;
    public static final int ERA_FIELD = 0;
    public static final int EXTENDED_YEAR_FIELD = 20;
    public static final int FRACTIONAL_SECOND_FIELD = 8;
    public static final int FULL = 0;
    public static final String GENERIC_TZ = "vvvv";
    public static final String HOUR = "j";
    public static final int HOUR0_FIELD = 16;
    public static final int HOUR1_FIELD = 15;
    public static final String HOUR24 = "H";
    public static final String HOUR24_MINUTE = "Hm";
    public static final String HOUR24_MINUTE_SECOND = "Hms";
    public static final String HOUR_MINUTE = "jm";
    public static final String HOUR_MINUTE_SECOND = "jms";
    public static final int HOUR_OF_DAY0_FIELD = 5;
    public static final int HOUR_OF_DAY1_FIELD = 4;
    public static final int JULIAN_DAY_FIELD = 21;
    public static final String LOCATION_TZ = "VVVV";
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int MILLISECONDS_IN_DAY_FIELD = 22;
    public static final int MILLISECOND_FIELD = 8;
    public static final String MINUTE = "m";
    public static final int MINUTE_FIELD = 6;
    public static final String MINUTE_SECOND = "ms";
    public static final String MONTH = "MMMM";
    public static final String MONTH_DAY = "MMMMd";
    public static final int MONTH_FIELD = 2;
    public static final String MONTH_WEEKDAY_DAY = "MMMMEEEEd";
    public static final int NONE = -1;
    public static final String NUM_MONTH = "M";
    public static final String NUM_MONTH_DAY = "Md";
    public static final String NUM_MONTH_WEEKDAY_DAY = "MEd";
    public static final String QUARTER = "QQQQ";
    public static final int QUARTER_FIELD = 27;
    public static final int RELATIVE = 128;
    public static final int RELATIVE_DEFAULT = 130;
    public static final int RELATIVE_FULL = 128;
    public static final int RELATIVE_LONG = 129;
    public static final int RELATIVE_MEDIUM = 130;
    public static final int RELATIVE_SHORT = 131;
    public static final String SECOND = "s";
    public static final int SECOND_FIELD = 7;
    public static final int SHORT = 3;
    public static final String SPECIFIC_TZ = "zzzz";
    public static final int STANDALONE_DAY_FIELD = 25;
    public static final int STANDALONE_MONTH_FIELD = 26;
    public static final int STANDALONE_QUARTER_FIELD = 28;
    public static final int TIMEZONE_FIELD = 17;
    public static final int TIMEZONE_GENERIC_FIELD = 24;
    public static final int TIMEZONE_ISO_FIELD = 32;
    public static final int TIMEZONE_ISO_LOCAL_FIELD = 33;
    public static final int TIMEZONE_LOCALIZED_GMT_OFFSET_FIELD = 31;
    public static final int TIMEZONE_RFC_FIELD = 23;
    public static final int TIMEZONE_SPECIAL_FIELD = 29;
    public static final String WEEKDAY = "EEEE";
    public static final int WEEK_OF_MONTH_FIELD = 13;
    public static final int WEEK_OF_YEAR_FIELD = 12;
    public static final String YEAR = "y";
    public static final String YEAR_ABBR_MONTH = "yMMM";
    public static final String YEAR_ABBR_MONTH_DAY = "yMMMd";
    public static final String YEAR_ABBR_MONTH_WEEKDAY_DAY = "yMMMEd";
    public static final String YEAR_ABBR_QUARTER = "yQQQ";
    public static final int YEAR_FIELD = 1;
    public static final String YEAR_MONTH = "yMMMM";
    public static final String YEAR_MONTH_DAY = "yMMMMd";
    public static final String YEAR_MONTH_WEEKDAY_DAY = "yMMMMEEEEd";
    public static final int YEAR_NAME_FIELD = 30;
    public static final String YEAR_NUM_MONTH = "yM";
    public static final String YEAR_NUM_MONTH_DAY = "yMd";
    public static final String YEAR_NUM_MONTH_WEEKDAY_DAY = "yMEd";
    public static final String YEAR_QUARTER = "yQQQQ";
    public static final int YEAR_WOY_FIELD = 18;
    protected Calendar calendar;
    protected NumberFormat numberFormat;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/DateFormat$BooleanAttribute.class
 */
    public enum BooleanAttribute {
        PARSE_ALLOW_NUMERIC,
        PARSE_ALLOW_WHITESPACE,
        PARSE_MULTIPLE_PATTERNS_FOR_MATCH,
        PARSE_PARTIAL_LITERAL_MATCH
    }

    public abstract StringBuffer format(Calendar calendar, StringBuffer stringBuffer, FieldPosition fieldPosition);

    public abstract void parse(String str, Calendar calendar, ParsePosition parsePosition);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/DateFormat$Field.class
 */
    public static class Field extends Format.Field {
        public static final Field AM_PM = null;
        public static final Field DAY_OF_MONTH = null;
        public static final Field DAY_OF_WEEK = null;
        public static final Field DAY_OF_WEEK_IN_MONTH = null;
        public static final Field DAY_OF_YEAR = null;
        public static final Field DOW_LOCAL = null;
        public static final Field ERA = null;
        public static final Field EXTENDED_YEAR = null;
        public static final Field HOUR0 = null;
        public static final Field HOUR1 = null;
        public static final Field HOUR_OF_DAY0 = null;
        public static final Field HOUR_OF_DAY1 = null;
        public static final Field JULIAN_DAY = null;
        public static final Field MILLISECOND = null;
        public static final Field MILLISECONDS_IN_DAY = null;
        public static final Field MINUTE = null;
        public static final Field MONTH = null;
        public static final Field QUARTER = null;
        public static final Field SECOND = null;
        public static final Field TIME_ZONE = null;
        public static final Field WEEK_OF_MONTH = null;
        public static final Field WEEK_OF_YEAR = null;
        public static final Field YEAR = null;
        public static final Field YEAR_WOY = null;

        protected Field(String name, int calendarField) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public static Field ofCalendarField(int calendarField) {
            throw new RuntimeException("Stub!");
        }

        public int getCalendarField() {
            throw new RuntimeException("Stub!");
        }

        @Override
        protected Object readResolve() throws InvalidObjectException {
            throw new RuntimeException("Stub!");
        }
    }

    public DateFormat() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final StringBuffer format(Object obj, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        throw new RuntimeException("Stub!");
    }

    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        throw new RuntimeException("Stub!");
    }

    public final String format(Date date) {
        throw new RuntimeException("Stub!");
    }

    public Date parse(String text) throws ParseException {
        throw new RuntimeException("Stub!");
    }

    public Date parse(String text, ParsePosition pos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object parseObject(String source, ParsePosition pos) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getTimeInstance() {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getTimeInstance(int style) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getTimeInstance(int style, Locale aLocale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getTimeInstance(int style, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateInstance() {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateInstance(int style) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateInstance(int style, Locale aLocale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateInstance(int style, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateTimeInstance() {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateTimeInstance(int dateStyle, int timeStyle) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateTimeInstance(int dateStyle, int timeStyle, Locale aLocale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateTimeInstance(int dateStyle, int timeStyle, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getInstance() {
        throw new RuntimeException("Stub!");
    }

    public static Locale[] getAvailableLocales() {
        throw new RuntimeException("Stub!");
    }

    public void setCalendar(Calendar newCalendar) {
        throw new RuntimeException("Stub!");
    }

    public Calendar getCalendar() {
        throw new RuntimeException("Stub!");
    }

    public void setNumberFormat(NumberFormat newNumberFormat) {
        throw new RuntimeException("Stub!");
    }

    public NumberFormat getNumberFormat() {
        throw new RuntimeException("Stub!");
    }

    public void setTimeZone(TimeZone zone) {
        throw new RuntimeException("Stub!");
    }

    public TimeZone getTimeZone() {
        throw new RuntimeException("Stub!");
    }

    public void setLenient(boolean lenient) {
        throw new RuntimeException("Stub!");
    }

    public boolean isLenient() {
        throw new RuntimeException("Stub!");
    }

    public void setCalendarLenient(boolean lenient) {
        throw new RuntimeException("Stub!");
    }

    public boolean isCalendarLenient() {
        throw new RuntimeException("Stub!");
    }

    public DateFormat setBooleanAttribute(BooleanAttribute key, boolean value) {
        throw new RuntimeException("Stub!");
    }

    public boolean getBooleanAttribute(BooleanAttribute key) {
        throw new RuntimeException("Stub!");
    }

    public void setContext(DisplayContext context) {
        throw new RuntimeException("Stub!");
    }

    public DisplayContext getContext(DisplayContext.Type type) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateInstance(Calendar cal, int dateStyle, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateInstance(Calendar cal, int dateStyle, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getTimeInstance(Calendar cal, int timeStyle, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getTimeInstance(Calendar cal, int timeStyle, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateTimeInstance(Calendar cal, int dateStyle, int timeStyle, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateTimeInstance(Calendar cal, int dateStyle, int timeStyle, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getInstance(Calendar cal, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getInstance(Calendar cal) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateInstance(Calendar cal, int dateStyle) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getTimeInstance(Calendar cal, int timeStyle) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getDateTimeInstance(Calendar cal, int dateStyle, int timeStyle) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getInstanceForSkeleton(String skeleton) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getInstanceForSkeleton(String skeleton, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getInstanceForSkeleton(String skeleton, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getInstanceForSkeleton(Calendar cal, String skeleton, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getInstanceForSkeleton(Calendar cal, String skeleton, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getPatternInstance(String skeleton) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getPatternInstance(String skeleton, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getPatternInstance(String skeleton, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getPatternInstance(Calendar cal, String skeleton, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static final DateFormat getPatternInstance(Calendar cal, String skeleton, ULocale locale) {
        throw new RuntimeException("Stub!");
    }
}
