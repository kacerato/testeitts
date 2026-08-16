package java.util.concurrent.atomic;

import java.io.Serializable;
import java.util.function.BinaryOperator;
import java.util.function.UnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/atomic/AtomicReference.class
 */
public class AtomicReference<V> implements Serializable {
    public AtomicReference(V initialValue) {
        throw new RuntimeException("Stub!");
    }

    public AtomicReference() {
        throw new RuntimeException("Stub!");
    }

    public final V get() {
        throw new RuntimeException("Stub!");
    }

    public final void set(V newValue) {
        throw new RuntimeException("Stub!");
    }

    public final void lazySet(V newValue) {
        throw new RuntimeException("Stub!");
    }

    public final boolean compareAndSet(V expect, V update) {
        throw new RuntimeException("Stub!");
    }

    public final boolean weakCompareAndSet(V expect, V update) {
        throw new RuntimeException("Stub!");
    }

    public final V getAndSet(V newValue) {
        throw new RuntimeException("Stub!");
    }

    public final V getAndUpdate(UnaryOperator<V> updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final V updateAndGet(UnaryOperator<V> updateFunction) {
        throw new RuntimeException("Stub!");
    }

    public final V getAndAccumulate(V x10, BinaryOperator<V> accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public final V accumulateAndGet(V x10, BinaryOperator<V> accumulatorFunction) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
