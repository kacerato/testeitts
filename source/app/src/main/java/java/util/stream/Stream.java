package java.util.stream;

import java.util.Comparator;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import java.util.function.UnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/Stream.class
 */
public interface Stream<T> extends BaseStream<T, Stream<T>> {
    Stream<T> filter(Predicate<? super T> predicate);

    <R> Stream<R> map(Function<? super T, ? extends R> function);

    IntStream mapToInt(ToIntFunction<? super T> toIntFunction);

    LongStream mapToLong(ToLongFunction<? super T> toLongFunction);

    DoubleStream mapToDouble(ToDoubleFunction<? super T> toDoubleFunction);

    <R> Stream<R> flatMap(Function<? super T, ? extends Stream<? extends R>> function);

    IntStream flatMapToInt(Function<? super T, ? extends IntStream> function);

    LongStream flatMapToLong(Function<? super T, ? extends LongStream> function);

    DoubleStream flatMapToDouble(Function<? super T, ? extends DoubleStream> function);

    Stream<T> distinct();

    Stream<T> sorted();

    Stream<T> sorted(Comparator<? super T> comparator);

    Stream<T> peek(Consumer<? super T> consumer);

    Stream<T> limit(long j10);

    Stream<T> skip(long j10);

    void forEach(Consumer<? super T> consumer);

    void forEachOrdered(Consumer<? super T> consumer);

    Object[] toArray();

    <A> A[] toArray(IntFunction<A[]> intFunction);

    T reduce(T t10, BinaryOperator<T> binaryOperator);

    Optional<T> reduce(BinaryOperator<T> binaryOperator);

    <U> U reduce(U u10, BiFunction<U, ? super T, U> biFunction, BinaryOperator<U> binaryOperator);

    <R> R collect(Supplier<R> supplier, BiConsumer<R, ? super T> biConsumer, BiConsumer<R, R> biConsumer2);

    <R, A> R collect(Collector<? super T, A, R> collector);

    Optional<T> min(Comparator<? super T> comparator);

    Optional<T> max(Comparator<? super T> comparator);

    long count();

    boolean anyMatch(Predicate<? super T> predicate);

    boolean allMatch(Predicate<? super T> predicate);

    boolean noneMatch(Predicate<? super T> predicate);

    Optional<T> findFirst();

    Optional<T> findAny();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/Stream$Builder.class
 */
    public interface Builder<T> extends Consumer<T> {
        @Override
        void accept(T t10);

        Stream<T> build();

        default Builder<T> add(T t10) {
            throw new RuntimeException("Stub!");
        }
    }

    static <T> Builder<T> builder() {
        throw new RuntimeException("Stub!");
    }

    static <T> Stream<T> empty() {
        throw new RuntimeException("Stub!");
    }

    static <T> Stream<T> of(T t10) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    static <T> Stream<T> of(T... values) {
        throw new RuntimeException("Stub!");
    }

    static <T> Stream<T> iterate(T seed, UnaryOperator<T> f10) {
        throw new RuntimeException("Stub!");
    }

    static <T> Stream<T> generate(Supplier<T> s10) {
        throw new RuntimeException("Stub!");
    }

    static <T> Stream<T> concat(Stream<? extends T> a10, Stream<? extends T> b10) {
        throw new RuntimeException("Stub!");
    }
}
