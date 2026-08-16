package java.util.stream;

import java.util.IntSummaryStatistics;
import java.util.Iterator;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntSupplier;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/IntStream.class
 */
public interface IntStream extends BaseStream<Integer, IntStream> {
    IntStream filter(IntPredicate intPredicate);

    IntStream map(IntUnaryOperator intUnaryOperator);

    <U> Stream<U> mapToObj(IntFunction<? extends U> intFunction);

    LongStream mapToLong(IntToLongFunction intToLongFunction);

    DoubleStream mapToDouble(IntToDoubleFunction intToDoubleFunction);

    IntStream flatMap(IntFunction<? extends IntStream> intFunction);

    IntStream distinct();

    IntStream sorted();

    IntStream peek(IntConsumer intConsumer);

    IntStream limit(long j10);

    IntStream skip(long j10);

    void forEach(IntConsumer intConsumer);

    void forEachOrdered(IntConsumer intConsumer);

    int[] toArray();

    int reduce(int i10, IntBinaryOperator intBinaryOperator);

    OptionalInt reduce(IntBinaryOperator intBinaryOperator);

    <R> R collect(Supplier<R> supplier, ObjIntConsumer<R> objIntConsumer, BiConsumer<R, R> biConsumer);

    int sum();

    OptionalInt min();

    OptionalInt max();

    long count();

    OptionalDouble average();

    IntSummaryStatistics summaryStatistics();

    boolean anyMatch(IntPredicate intPredicate);

    boolean allMatch(IntPredicate intPredicate);

    boolean noneMatch(IntPredicate intPredicate);

    OptionalInt findFirst();

    OptionalInt findAny();

    LongStream asLongStream();

    DoubleStream asDoubleStream();

    Stream<Integer> boxed();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    IntStream sequential();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    IntStream parallel();

    @Override
    Iterator<Integer> iterator2();

    @Override
    Spliterator<Integer> spliterator2();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/IntStream$Builder.class
 */
    public interface Builder extends IntConsumer {
        @Override
        void accept(int i10);

        IntStream build();

        default Builder add(int t10) {
            throw new RuntimeException("Stub!");
        }
    }

    static Builder builder() {
        throw new RuntimeException("Stub!");
    }

    static IntStream empty() {
        throw new RuntimeException("Stub!");
    }

    static IntStream of(int t10) {
        throw new RuntimeException("Stub!");
    }

    static IntStream of(int... values) {
        throw new RuntimeException("Stub!");
    }

    static IntStream iterate(int seed, IntUnaryOperator f10) {
        throw new RuntimeException("Stub!");
    }

    static IntStream generate(IntSupplier s10) {
        throw new RuntimeException("Stub!");
    }

    static IntStream range(int startInclusive, int endExclusive) {
        throw new RuntimeException("Stub!");
    }

    static IntStream rangeClosed(int startInclusive, int endInclusive) {
        throw new RuntimeException("Stub!");
    }

    static IntStream concat(IntStream a10, IntStream b10) {
        throw new RuntimeException("Stub!");
    }
}
