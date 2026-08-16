package java.util.stream;

import java.util.Spliterator;
import java.util.function.Supplier;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/StreamSupport.class
 */
public final class StreamSupport {
    StreamSupport() {
        throw new RuntimeException("Stub!");
    }

    public static <T> Stream<T> stream(Spliterator<T> spliterator, boolean parallel) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Stream<T> stream(Supplier<? extends Spliterator<T>> supplier, int characteristics, boolean parallel) {
        throw new RuntimeException("Stub!");
    }

    public static IntStream intStream(Spliterator.OfInt spliterator, boolean parallel) {
        throw new RuntimeException("Stub!");
    }

    public static IntStream intStream(Supplier<? extends Spliterator.OfInt> supplier, int characteristics, boolean parallel) {
        throw new RuntimeException("Stub!");
    }

    public static LongStream longStream(Spliterator.OfLong spliterator, boolean parallel) {
        throw new RuntimeException("Stub!");
    }

    public static LongStream longStream(Supplier<? extends Spliterator.OfLong> supplier, int characteristics, boolean parallel) {
        throw new RuntimeException("Stub!");
    }

    public static DoubleStream doubleStream(Spliterator.OfDouble spliterator, boolean parallel) {
        throw new RuntimeException("Stub!");
    }

    public static DoubleStream doubleStream(Supplier<? extends Spliterator.OfDouble> supplier, int characteristics, boolean parallel) {
        throw new RuntimeException("Stub!");
    }
}
