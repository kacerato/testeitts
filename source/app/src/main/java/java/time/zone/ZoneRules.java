package java.time.zone;

import java.io.Serializable;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/zone/ZoneRules.class
 */
public final class ZoneRules implements Serializable {
    ZoneRules() {
        throw new RuntimeException("Stub!");
    }

    public static ZoneRules of(ZoneOffset baseStandardOffset, ZoneOffset baseWallOffset, List<ZoneOffsetTransition> standardOffsetTransitionList, List<ZoneOffsetTransition> transitionList, List<ZoneOffsetTransitionRule> lastRules) {
        throw new RuntimeException("Stub!");
    }

    public static ZoneRules of(ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public boolean isFixedOffset() {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffset getOffset(Instant instant) {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffset getOffset(LocalDateTime localDateTime) {
        throw new RuntimeException("Stub!");
    }

    public List<ZoneOffset> getValidOffsets(LocalDateTime localDateTime) {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffsetTransition getTransition(LocalDateTime localDateTime) {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffset getStandardOffset(Instant instant) {
        throw new RuntimeException("Stub!");
    }

    public Duration getDaylightSavings(Instant instant) {
        throw new RuntimeException("Stub!");
    }

    public boolean isDaylightSavings(Instant instant) {
        throw new RuntimeException("Stub!");
    }

    public boolean isValidOffset(LocalDateTime localDateTime, ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffsetTransition nextTransition(Instant instant) {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffsetTransition previousTransition(Instant instant) {
        throw new RuntimeException("Stub!");
    }

    public List<ZoneOffsetTransition> getTransitions() {
        throw new RuntimeException("Stub!");
    }

    public List<ZoneOffsetTransitionRule> getTransitionRules() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object otherRules) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
