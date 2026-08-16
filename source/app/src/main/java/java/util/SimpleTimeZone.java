package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/SimpleTimeZone.class
 */
public class SimpleTimeZone extends TimeZone {
    public static final int STANDARD_TIME = 1;
    public static final int UTC_TIME = 2;
    public static final int WALL_TIME = 0;

    public SimpleTimeZone(int rawOffset, String ID) {
        throw new RuntimeException("Stub!");
    }

    public SimpleTimeZone(int rawOffset, String ID, int startMonth, int startDay, int startDayOfWeek, int startTime, int endMonth, int endDay, int endDayOfWeek, int endTime) {
        throw new RuntimeException("Stub!");
    }

    public SimpleTimeZone(int rawOffset, String ID, int startMonth, int startDay, int startDayOfWeek, int startTime, int endMonth, int endDay, int endDayOfWeek, int endTime, int dstSavings) {
        throw new RuntimeException("Stub!");
    }

    public SimpleTimeZone(int rawOffset, String ID, int startMonth, int startDay, int startDayOfWeek, int startTime, int startTimeMode, int endMonth, int endDay, int endDayOfWeek, int endTime, int endTimeMode, int dstSavings) {
        throw new RuntimeException("Stub!");
    }

    public void setStartYear(int year) {
        throw new RuntimeException("Stub!");
    }

    public void setStartRule(int startMonth, int startDay, int startDayOfWeek, int startTime) {
        throw new RuntimeException("Stub!");
    }

    public void setStartRule(int startMonth, int startDay, int startTime) {
        throw new RuntimeException("Stub!");
    }

    public void setStartRule(int startMonth, int startDay, int startDayOfWeek, int startTime, boolean after) {
        throw new RuntimeException("Stub!");
    }

    public void setEndRule(int endMonth, int endDay, int endDayOfWeek, int endTime) {
        throw new RuntimeException("Stub!");
    }

    public void setEndRule(int endMonth, int endDay, int endTime) {
        throw new RuntimeException("Stub!");
    }

    public void setEndRule(int endMonth, int endDay, int endDayOfWeek, int endTime, boolean after) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getOffset(long date) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getOffset(int era, int year, int month, int day, int dayOfWeek, int millis) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getRawOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setRawOffset(int offsetMillis) {
        throw new RuntimeException("Stub!");
    }

    public void setDSTSavings(int millisSavedDuringDST) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getDSTSavings() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean useDaylightTime() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean observesDaylightTime() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean inDaylightTime(Date date) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    public synchronized int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasSameRules(TimeZone other) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
