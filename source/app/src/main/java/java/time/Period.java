package java.time;

import java.io.Serializable;
import java.time.chrono.ChronoPeriod;
import java.time.chrono.IsoChronology;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAmount;
import java.time.temporal.TemporalUnit;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/Period.class
 */
public final class Period implements ChronoPeriod, Serializable {
    public static final Period ZERO = null;

    Period() {
        throw new RuntimeException("Stub!");
    }

    public static Period ofYears(int years) {
        throw new RuntimeException("Stub!");
    }

    public static Period ofMonths(int months) {
        throw new RuntimeException("Stub!");
    }

    public static Period ofWeeks(int weeks) {
        throw new RuntimeException("Stub!");
    }

    public static Period ofDays(int days) {
        throw new RuntimeException("Stub!");
    }

    public static Period of(int years, int months, int days) {
        throw new RuntimeException("Stub!");
    }

    public static Period from(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    public static Period parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public static Period between(LocalDate startDateInclusive, LocalDate endDateExclusive) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long get(TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<TemporalUnit> getUnits() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IsoChronology getChronology() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isZero() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isNegative() {
        throw new RuntimeException("Stub!");
    }

    public int getYears() {
        throw new RuntimeException("Stub!");
    }

    public int getMonths() {
        throw new RuntimeException("Stub!");
    }

    public int getDays() {
        throw new RuntimeException("Stub!");
    }

    public Period withYears(int years) {
        throw new RuntimeException("Stub!");
    }

    public Period withMonths(int months) {
        throw new RuntimeException("Stub!");
    }

    public Period withDays(int days) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Period plus(TemporalAmount amountToAdd) {
        throw new RuntimeException("Stub!");
    }

    public Period plusYears(long yearsToAdd) {
        throw new RuntimeException("Stub!");
    }

    public Period plusMonths(long monthsToAdd) {
        throw new RuntimeException("Stub!");
    }

    public Period plusDays(long daysToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Period minus(TemporalAmount amountToSubtract) {
        throw new RuntimeException("Stub!");
    }

    public Period minusYears(long yearsToSubtract) {
        throw new RuntimeException("Stub!");
    }

    public Period minusMonths(long monthsToSubtract) {
        throw new RuntimeException("Stub!");
    }

    public Period minusDays(long daysToSubtract) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Period multipliedBy(int scalar) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Period negated() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Period normalized() {
        throw new RuntimeException("Stub!");
    }

    public long toTotalMonths() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Temporal addTo(Temporal temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Temporal subtractFrom(Temporal temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
