package java.util.concurrent.atomic;

import java.util.function.BinaryOperator;
import java.util.function.UnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/atomic/AtomicReferenceFieldUpdater.class
 */
public abstract class AtomicReferenceFieldUpdater<T, V> {
    public abstract boolean compareAndSet(T t10, V v10, V v11);

    public abstract boolean weakCompareAndSet(T t10, V v10, V v11);

    public abstract void set(T t10, V v10);

    public abstract void lazySet(T t10, V v10);

    public abstract V get(T t10);

    protected AtomicReferenceFieldUpdater() {
        throw new RuntimeException("Stub!");
    }

    public static <U, W> AtomicReferenceFieldUpdater<U, W> newUpdater(Class<U> tclass, Class<W> vclass, String fieldName) {
        throw new RuntimeException("Stub!");
    }

    public V getAndSet(T obj, V newValue) {
        throw new RuntimeException("Stub!");
    }

    public final V getAndUpdate(T obj, UnaryOperator<V> updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final V updateAndGet(T obj, UnaryOperator<V> updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final V getAndAccumulate(T obj, V x10, BinaryOperator<V> accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public final V accumulateAndGet(T obj, V x10, BinaryOperator<V> accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }
}
