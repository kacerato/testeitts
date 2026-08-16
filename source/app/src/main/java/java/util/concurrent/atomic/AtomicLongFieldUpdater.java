package java.util.concurrent.atomic;

import java.util.function.LongBinaryOperator;
import java.util.function.LongUnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/atomic/AtomicLongFieldUpdater.class
 */
public abstract class AtomicLongFieldUpdater<T> {
    public abstract boolean compareAndSet(T t10, long j10, long j11);

    public abstract boolean weakCompareAndSet(T t10, long j10, long j11);

    public abstract void set(T t10, long j10);

    public abstract void lazySet(T t10, long j10);

    public abstract long get(T t10);

    protected AtomicLongFieldUpdater() {
        throw new RuntimeException("Stub!");
    }

    public static <U> AtomicLongFieldUpdater<U> newUpdater(Class<U> tclass, String fieldName) {
        throw new RuntimeException("Stub!");
    }

    public long getAndSet(T obj, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public long getAndIncrement(T obj) {
        throw new RuntimeException("Stub!");
    }

    public long getAndDecrement(T obj) {
        throw new RuntimeException("Stub!");
    }

    public long getAndAdd(T obj, long delta) {
        throw new RuntimeException("Stub!");
    }

    public long incrementAndGet(T obj) {
        throw new RuntimeException("Stub!");
    }

    public long decrementAndGet(T obj) {
        throw new RuntimeException("Stub!");
    }

    public long addAndGet(T obj, long delta) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndUpdate(T obj, LongUnaryOperator updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final long updateAndGet(T obj, LongUnaryOperator updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final long getAndAccumulate(T obj, long x10, LongBinaryOperator accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public final long accumulateAndGet(T obj, long x10, LongBinaryOperator accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }
}
