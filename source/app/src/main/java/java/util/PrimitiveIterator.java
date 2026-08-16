package java.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/PrimitiveIterator.class
 */
public interface PrimitiveIterator<T, T_CONS> extends Iterator<T> {
    void forEachRemaining(T_CONS t_cons);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/PrimitiveIterator$OfInt.class
 */
    public interface OfInt extends PrimitiveIterator<Integer, IntConsumer> {
        int nextInt();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        default void forEachRemaining(IntConsumer action) {
            throw new RuntimeException("Stub!");
        }

        @Override
        default Integer next() {
            throw new RuntimeException("Stub!");
        }

        @Override
        default void forEachRemaining(Consumer<? super Integer> action) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/PrimitiveIterator$OfLong.class
 */
    public interface OfLong extends PrimitiveIterator<Long, LongConsumer> {
        long nextLong();

        @Override
        default void forEachRemaining(LongConsumer action) {
            throw new RuntimeException("Stub!");
        }

        @Override
        default Long next() {
            throw new RuntimeException("Stub!");
        }

        @Override
        default void forEachRemaining(Consumer<? super Long> action) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/PrimitiveIterator$OfDouble.class
 */
    public interface OfDouble extends PrimitiveIterator<Double, DoubleConsumer> {
        double nextDouble();

        @Override
        default void forEachRemaining(DoubleConsumer action) {
            throw new RuntimeException("Stub!");
        }

        @Override
        default Double next() {
            throw new RuntimeException("Stub!");
        }

        @Override
        default void forEachRemaining(Consumer<? super Double> action) {
            throw new RuntimeException("Stub!");
        }
    }
}
