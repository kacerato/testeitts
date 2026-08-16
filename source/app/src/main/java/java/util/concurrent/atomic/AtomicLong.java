package java.util.concurrent.atomic;

import java.io.Serializable;
import java.util.function.LongBinaryOperator;
import java.util.function.LongUnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/atomic/AtomicLong.class
 */
public class AtomicLong extends Number implements Serializable {
    public AtomicLong(long initialValue) {
        throw new RuntimeException("Stub!");
    }

    public AtomicLong() {
        throw new RuntimeException("Stub!");
    }

    public final long get() {
        throw new RuntimeException("Stub!");
    }

    public final void set(long newValue) {
        throw new RuntimeException("Stub!");
    }

    public final void lazySet(long newValue) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndSet(long newValue) {
        throw new RuntimeException("Stub!");
    }

    public final boolean compareAndSet(long expect, long update) {
        throw new RuntimeException("Stub!");
    }

    public final boolean weakCompareAndSet(long expect, long update) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndIncrement() {
        throw new RuntimeException("Stub!");
    }

    public final long getAndDecrement() {
        throw new RuntimeException("Stub!");
    }

    public final long getAndAdd(long delta) {
        throw new RuntimeException("Stub!");
    }

    public final long incrementAndGet() {
        throw new RuntimeException("Stub!");
    }

    public final long decrementAndGet() {
        throw new RuntimeException("Stub!");
    }

    public final long addAndGet(long delta) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndUpdate(LongUnaryOperator updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final long updateAndGet(LongUnaryOperator updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndAccumulate(long x10, LongBinaryOperator accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public final long accumulateAndGet(long x10, LongBinaryOperator accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int intValue() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long longValue() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float floatValue() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public double doubleValue() {
        throw new RuntimeException("Stub!");
    }
}
