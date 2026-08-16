package java.util.concurrent.atomic;

import java.io.Serializable;
import java.util.function.LongBinaryOperator;
import java.util.function.LongUnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/atomic/AtomicLongArray.class
 */
public class AtomicLongArray implements Serializable {
    public AtomicLongArray(int length) {
        throw new RuntimeException("Stub!");
    }

    public AtomicLongArray(long[] array) {
        throw new RuntimeException("Stub!");
    }

    public final int length() {
        throw new RuntimeException("Stub!");
    }

    public final long get(int i10) {
        throw new RuntimeException("Stub!");
    }

    public final void set(int i10, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public final void lazySet(int i10, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndSet(int i10, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public final boolean compareAndSet(int i10, long expect, long update) {
        throw new RuntimeException("Stub!");
    }

    public final boolean weakCompareAndSet(int i10, long expect, long update) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndIncrement(int i10) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndDecrement(int i10) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndAdd(int i10, long delta) {
        throw new RuntimeException("Stub!");
    }

    public final long incrementAndGet(int i10) {
        throw new RuntimeException("Stub!");
    }

    public final long decrementAndGet(int i10) {
        throw new RuntimeException("Stub!");
    }

    public long addAndGet(int i10, long delta) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndUpdate(int i10, LongUnaryOperator updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final long updateAndGet(int i10, LongUnaryOperator updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndAccumulate(int i10, long x10, LongBinaryOperator accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public final long accumulateAndGet(int i10, long x10, LongBinaryOperator accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
