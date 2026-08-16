package java.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterator.class
 */
public interface Spliterator<T> {
    public static final int CONCURRENT = 4096;
    public static final int DISTINCT = 1;
    public static final int IMMUTABLE = 1024;
    public static final int NONNULL = 256;
    public static final int ORDERED = 16;
    public static final int SIZED = 64;
    public static final int SORTED = 4;
    public static final int SUBSIZED = 16384;

    boolean tryAdvance(Consumer<? super T> consumer);

    Spliterator<T> trySplit();

    long estimateSize();

    int characteristics();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterator$OfPrimitive.class
 */
    public interface OfPrimitive<T, T_CONS, T_SPLITR extends OfPrimitive<T, T_CONS, T_SPLITR>> extends Spliterator<T> {
        @Override
        T_SPLITR trySplit();

        boolean tryAdvance(T_CONS t_cons);

        default void forEachRemaining(T_CONS action) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterator$OfInt.class
 */
    public interface OfInt extends OfPrimitive<Integer, IntConsumer, OfInt> {
        @Override
        OfInt trySplit();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        boolean tryAdvance(IntConsumer intConsumer);

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        default void forEachRemaining(IntConsumer action) {
            throw new RuntimeException("Stub!");
        }

        @Override
        default boolean tryAdvance(Consumer<? super Integer> action) {
            throw new RuntimeException("Stub!");
        }

        @Override
        default void forEachRemaining(Consumer<? super Integer> action) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterator$OfLong.class
 */
    public interface OfLong extends OfPrimitive<Long, LongConsumer, OfLong> {
        @Override
        OfLong trySplit();

        @Override
        boolean tryAdvance(LongConsumer longConsumer);

        @Override
        default void forEachRemaining(LongConsumer action) {
            throw new RuntimeException("Stub!");
        }

        @Override
        default boolean tryAdvance(Consumer<? super Long> action) {
            throw new RuntimeException("Stub!");
        }

        @Override
        default void forEachRemaining(Consumer<? super Long> action) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterator$OfDouble.class
 */
    public interface OfDouble extends OfPrimitive<Double, DoubleConsumer, OfDouble> {
        @Override
        OfDouble trySplit();

        @Override
        boolean tryAdvance(DoubleConsumer doubleConsumer);

        @Override
        default void forEachRemaining(DoubleConsumer action) {
            throw new RuntimeException("Stub!");
        }

        @Override
        default boolean tryAdvance(Consumer<? super Double> action) {
            throw new RuntimeException("Stub!");
        }

        @Override
        default void forEachRemaining(Consumer<? super Double> action) {
            throw new RuntimeException("Stub!");
        }
    }

    default void forEachRemaining(Consumer<? super T> action) {
        throw new RuntimeException("Stub!");
    }

    default long getExactSizeIfKnown() {
        throw new RuntimeException("Stub!");
    }

    default boolean hasCharacteristics(int characteristics) {
        throw new RuntimeException("Stub!");
    }

    default Comparator<? super T> getComparator() {
        throw new RuntimeException("Stub!");
    }
}
