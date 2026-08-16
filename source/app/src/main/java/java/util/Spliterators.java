package java.util;

import java.util.PrimitiveIterator;
import java.util.Spliterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterators.class
 */
public final class Spliterators {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterators$AbstractSpliterator.class
 */
    public static abstract class AbstractSpliterator<T> implements Spliterator<T> {
        public AbstractSpliterator(long est, int additionalCharacteristics) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Spliterator<T> trySplit() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public long estimateSize() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int characteristics() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterators$AbstractIntSpliterator.class
 */
    public static abstract class AbstractIntSpliterator implements Spliterator.OfInt {
        protected AbstractIntSpliterator(long est, int additionalCharacteristics) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Spliterator.OfInt trySplit() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public long estimateSize() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int characteristics() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterators$AbstractLongSpliterator.class
 */
    public static abstract class AbstractLongSpliterator implements Spliterator.OfLong {
        protected AbstractLongSpliterator(long est, int additionalCharacteristics) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Spliterator.OfLong trySplit() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public long estimateSize() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int characteristics() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Spliterators$AbstractDoubleSpliterator.class
 */
    public static abstract class AbstractDoubleSpliterator implements Spliterator.OfDouble {
        protected AbstractDoubleSpliterator(long est, int additionalCharacteristics) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Spliterator.OfDouble trySplit() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public long estimateSize() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int characteristics() {
            throw new RuntimeException("Stub!");
        }
    }

    Spliterators() {
        throw new RuntimeException("Stub!");
    }

    public static <T> Spliterator<T> emptySpliterator() {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfInt emptyIntSpliterator() {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfLong emptyLongSpliterator() {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfDouble emptyDoubleSpliterator() {
        throw new RuntimeException("Stub!");
    }

    public static <T> Spliterator<T> spliterator(Object[] array, int additionalCharacteristics) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Spliterator<T> spliterator(Object[] array, int fromIndex, int toIndex, int additionalCharacteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfInt spliterator(int[] array, int additionalCharacteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfInt spliterator(int[] array, int fromIndex, int toIndex, int additionalCharacteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfLong spliterator(long[] array, int additionalCharacteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfLong spliterator(long[] array, int fromIndex, int toIndex, int additionalCharacteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfDouble spliterator(double[] array, int additionalCharacteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfDouble spliterator(double[] array, int fromIndex, int toIndex, int additionalCharacteristics) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Spliterator<T> spliterator(Collection<? extends T> c10, int characteristics) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Spliterator<T> spliterator(Iterator<? extends T> iterator, long size, int characteristics) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Spliterator<T> spliteratorUnknownSize(Iterator<? extends T> iterator, int characteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfInt spliterator(PrimitiveIterator.OfInt iterator, long size, int characteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfInt spliteratorUnknownSize(PrimitiveIterator.OfInt iterator, int characteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfLong spliterator(PrimitiveIterator.OfLong iterator, long size, int characteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfLong spliteratorUnknownSize(PrimitiveIterator.OfLong iterator, int characteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfDouble spliterator(PrimitiveIterator.OfDouble iterator, long size, int characteristics) {
        throw new RuntimeException("Stub!");
    }

    public static Spliterator.OfDouble spliteratorUnknownSize(PrimitiveIterator.OfDouble iterator, int characteristics) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Iterator<T> iterator(Spliterator<? extends T> spliterator) {
        throw new RuntimeException("Stub!");
    }

    public static PrimitiveIterator.OfInt iterator(Spliterator.OfInt spliterator) {
        throw new RuntimeException("Stub!");
    }

    public static PrimitiveIterator.OfLong iterator(Spliterator.OfLong spliterator) {
        throw new RuntimeException("Stub!");
    }

    public static PrimitiveIterator.OfDouble iterator(Spliterator.OfDouble spliterator) {
        throw new RuntimeException("Stub!");
    }
}
