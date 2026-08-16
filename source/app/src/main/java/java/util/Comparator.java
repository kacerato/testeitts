package java.util;

import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Comparator.class
 */
@FunctionalInterface
public interface Comparator<T> {
    int compare(T t10, T t11);

    boolean equals(Object obj);

    default Comparator<T> reversed() {
        throw new RuntimeException("Stub!");
    }

    default Comparator<T> thenComparing(Comparator<? super T> other) {
        throw new RuntimeException("Stub!");
    }

    default <U> Comparator<T> thenComparing(Function<? super T, ? extends U> keyExtractor, Comparator<? super U> keyComparator) {
        throw new RuntimeException("Stub!");
    }

    default <U extends Comparable<? super U>> Comparator<T> thenComparing(Function<? super T, ? extends U> keyExtractor) {
        throw new RuntimeException("Stub!");
    }

    default Comparator<T> thenComparingInt(ToIntFunction<? super T> keyExtractor) {
        throw new RuntimeException("Stub!");
    }

    default Comparator<T> thenComparingLong(ToLongFunction<? super T> keyExtractor) {
        throw new RuntimeException("Stub!");
    }

    default Comparator<T> thenComparingDouble(ToDoubleFunction<? super T> keyExtractor) {
        throw new RuntimeException("Stub!");
    }

    static <T extends Comparable<? super T>> Comparator<T> reverseOrder() {
        throw new RuntimeException("Stub!");
    }

    static <T extends Comparable<? super T>> Comparator<T> naturalOrder() {
        throw new RuntimeException("Stub!");
    }

    static <T> Comparator<T> nullsFirst(Comparator<? super T> comparator) {
        throw new RuntimeException("Stub!");
    }

    static <T> Comparator<T> nullsLast(Comparator<? super T> comparator) {
        throw new RuntimeException("Stub!");
    }

    static <T, U> Comparator<T> comparing(Function<? super T, ? extends U> keyExtractor, Comparator<? super U> keyComparator) {
        throw new RuntimeException("Stub!");
    }

    static <T, U extends Comparable<? super U>> Comparator<T> comparing(Function<? super T, ? extends U> keyExtractor) {
        throw new RuntimeException("Stub!");
    }

    static <T> Comparator<T> comparingInt(ToIntFunction<? super T> keyExtractor) {
        throw new RuntimeException("Stub!");
    }

    static <T> Comparator<T> comparingLong(ToLongFunction<? super T> keyExtractor) {
        throw new RuntimeException("Stub!");
    }

    static <T> Comparator<T> comparingDouble(ToDoubleFunction<? super T> keyExtractor) {
        throw new RuntimeException("Stub!");
    }
}
