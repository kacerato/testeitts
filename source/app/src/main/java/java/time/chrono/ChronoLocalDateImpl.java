package java.time.chrono;

import java.io.Serializable;
import java.time.chrono.ChronoLocalDate;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalAmount;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/ChronoLocalDateImpl.class
 */
abstract class ChronoLocalDateImpl<D extends ChronoLocalDate> implements ChronoLocalDate, Temporal, TemporalAdjuster, Serializable {
    public ChronoLocalDateImpl() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public D with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public D with(TemporalField field, long value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public D plus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public D plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public D minus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public D minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long until(Temporal endExclusive, TemporalUnit unit) {
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
