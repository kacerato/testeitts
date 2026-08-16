package java.util.concurrent.atomic;

import java.io.Serializable;
import java.util.function.BinaryOperator;
import java.util.function.UnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/atomic/AtomicReferenceArray.class
 */
public class AtomicReferenceArray<E> implements Serializable {
    public AtomicReferenceArray(int length) {
        throw new RuntimeException("Stub!");
    }

    public AtomicReferenceArray(E[] array) {
        throw new RuntimeException("Stub!");
    }

    public final int length() {
        throw new RuntimeException("Stub!");
    }

    public final E get(int i10) {
        throw new RuntimeException("Stub!");
    }

    public final void set(int i10, E newValue) {
        throw new RuntimeException("Stub!");
    }

    public final void lazySet(int i10, E newValue) {
        throw new RuntimeException("Stub!");
    }

    public final E getAndSet(int i10, E newValue) {
        throw new RuntimeException("Stub!");
    }

    public final boolean compareAndSet(int i10, E expect, E update) {
        throw new RuntimeException("Stub!");
    }

    public final boolean weakCompareAndSet(int i10, E expect, E update) {
        throw new RuntimeException("Stub!");
    }

    public final E getAndUpdate(int i10, UnaryOperator<E> updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final E updateAndGet(int i10, UnaryOperator<E> updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final E getAndAccumulate(int i10, E x10, BinaryOperator<E> accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public final E accumulateAndGet(int i10, E x10, BinaryOperator<E> accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
