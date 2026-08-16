package java.util.concurrent.atomic;

import java.util.function.IntBinaryOperator;
import java.util.function.IntUnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/atomic/AtomicIntegerFieldUpdater.class
 */
public abstract class AtomicIntegerFieldUpdater<T> {
    public abstract boolean compareAndSet(T t10, int i10, int i11);

    public abstract boolean weakCompareAndSet(T t10, int i10, int i11);

    public abstract void set(T t10, int i10);

    public abstract void lazySet(T t10, int i10);

    public abstract int get(T t10);

    protected AtomicIntegerFieldUpdater() {
        throw new RuntimeException("Stub!");
    }

    public static <U> AtomicIntegerFieldUpdater<U> newUpdater(Class<U> tclass, String fieldName) {
        throw new RuntimeException("Stub!");
    }

    public int getAndSet(T obj, int newValue) {
        throw new RuntimeException("Stub!");
    }

    public int getAndIncrement(T obj) {
        throw new RuntimeException("Stub!");
    }

    public int getAndDecrement(T obj) {
        throw new RuntimeException("Stub!");
    }

    public int getAndAdd(T obj, int delta) {
        throw new RuntimeException("Stub!");
    }

    public int incrementAndGet(T obj) {
        throw new RuntimeException("Stub!");
    }

    public int decrementAndGet(T obj) {
        throw new RuntimeException("Stub!");
    }

    public int addAndGet(T obj, int delta) {
        throw new RuntimeException("Stub!");
    }

    public final int getAndUpdate(T obj, IntUnaryOperator updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final int updateAndGet(T obj, IntUnaryOperator updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final int getAndAccumulate(T obj, int x10, IntBinaryOperator accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public final int accumulateAndGet(T obj, int x10, IntBinaryOperator accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }
}
