package android.text.format;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/format/Time.class
 */
@Deprecated
public class Time {
    public static final int EPOCH_JULIAN_DAY = 2440588;
    public static final int FRIDAY = 5;
    public static final int HOUR = 3;
    public static final int MINUTE = 2;
    public static final int MONDAY = 1;
    public static final int MONDAY_BEFORE_JULIAN_EPOCH = 2440585;
    public static final int MONTH = 5;
    public static final int MONTH_DAY = 4;
    public static final int SATURDAY = 6;
    public static final int SECOND = 1;
    public static final int SUNDAY = 0;
    public static final int THURSDAY = 4;
    public static final String TIMEZONE_UTC = "UTC";
    public static final int TUESDAY = 2;
    public static final int WEDNESDAY = 3;
    public static final int WEEK_DAY = 7;
    public static final int WEEK_NUM = 9;
    public static final int YEAR = 6;
    public static final int YEAR_DAY = 8;
    public boolean allDay;
    public long gmtoff;
    public int hour;
    public int isDst;
    public int minute;
    public int month;
    public int monthDay;
    public int second;
    public String timezone;
    public int weekDay;
    public int year;
    public int yearDay;

    public Time(String timezoneId) {
        throw new RuntimeException("Stub!");
    }

    public Time() {
        throw new RuntimeException("Stub!");
    }

    public Time(Time other) {
        throw new RuntimeException("Stub!");
    }

    public long normalize(boolean ignoreDst) {
        throw new RuntimeException("Stub!");
    }

    public void switchTimezone(String timezone) {
        throw new RuntimeException("Stub!");
    }

    public int getActualMaximum(int field) {
        throw new RuntimeException("Stub!");
    }

    public void clear(String timezoneId) {
        throw new RuntimeException("Stub!");
    }

    public static int compare(Time a10, Time b10) {
        throw new RuntimeException("Stub!");
    }

    public String format(String format) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean parse(String s10) {
        throw new RuntimeException("Stub!");
    }

    public boolean parse3339(String s10) {
        throw new RuntimeException("Stub!");
    }

    public static String getCurrentTimezone() {
        throw new RuntimeException("Stub!");
    }

    public void setToNow() {
        throw new RuntimeException("Stub!");
    }

    public long toMillis(boolean ignoreDst) {
        throw new RuntimeException("Stub!");
    }

    public void set(long millis) {
        throw new RuntimeException("Stub!");
    }

    public String format2445() {
        throw new RuntimeException("Stub!");
    }

    public void set(Time that) {
        throw new RuntimeException("Stub!");
    }

    public void set(int second, int minute, int hour, int monthDay, int month, int year) {
        throw new RuntimeException("Stub!");
    }

    public void set(int monthDay, int month, int year) {
        throw new RuntimeException("Stub!");
    }

    public boolean before(Time that) {
        throw new RuntimeException("Stub!");
    }

    public boolean after(Time that) {
        throw new RuntimeException("Stub!");
    }

    public int getWeekNumber() {
        throw new RuntimeException("Stub!");
    }

    public String format3339(boolean allDay) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isEpoch(Time time) {
        throw new RuntimeException("Stub!");
    }

    public static int getJulianDay(long millis, long gmtoff) {
        throw new RuntimeException("Stub!");
    }

    public long setJulianDay(int julianDay) {
        throw new RuntimeException("Stub!");
    }

    public static int getWeeksSinceEpochFromJulianDay(int julianDay, int firstDayOfWeek) {
        throw new RuntimeException("Stub!");
    }

    public static int getJulianMondayFromWeeksSinceEpoch(int week) {
        throw new RuntimeException("Stub!");
    }
}
