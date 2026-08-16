package java.time.zone;

import java.io.Serializable;
import java.time.DayOfWeek;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.Month;
import java.time.ZoneOffset;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/zone/ZoneOffsetTransitionRule.class
 */
public final class ZoneOffsetTransitionRule implements Serializable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/zone/ZoneOffsetTransitionRule$TimeDefinition.class
 */
    public enum TimeDefinition {
        STANDARD,
        UTC,
        WALL;

        public LocalDateTime createDateTime(LocalDateTime dateTime, ZoneOffset standardOffset, ZoneOffset wallOffset) {
            throw new RuntimeException("Stub!");
        }
    }

    ZoneOffsetTransitionRule() {
        throw new RuntimeException("Stub!");
    }

    public static ZoneOffsetTransitionRule of(Month month, int dayOfMonthIndicator, DayOfWeek dayOfWeek, LocalTime time, boolean timeEndOfDay, TimeDefinition timeDefnition, ZoneOffset standardOffset, ZoneOffset offsetBefore, ZoneOffset offsetAfter) {
        throw new RuntimeException("Stub!");
    }

    public Month getMonth() {
        throw new RuntimeException("Stub!");
    }

    public int getDayOfMonthIndicator() {
        throw new RuntimeException("Stub!");
    }

    public DayOfWeek getDayOfWeek() {
        throw new RuntimeException("Stub!");
    }

    public LocalTime getLocalTime() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMidnightEndOfDay() {
        throw new RuntimeException("Stub!");
    }

    public TimeDefinition getTimeDefinition() {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffset getStandardOffset() {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffset getOffsetBefore() {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffset getOffsetAfter() {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffsetTransition createTransition(int year) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object otherRule) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
