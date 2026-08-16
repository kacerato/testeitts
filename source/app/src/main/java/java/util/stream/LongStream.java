package java.util.stream;

import java.util.Iterator;
import java.util.LongSummaryStatistics;
import java.util.OptionalDouble;
import java.util.OptionalLong;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongSupplier;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/LongStream.class
 */
public interface LongStream extends BaseStream<Long, LongStream> {
    LongStream filter(LongPredicate longPredicate);

    LongStream map(LongUnaryOperator longUnaryOperator);

    <U> Stream<U> mapToObj(LongFunction<? extends U> longFunction);

    IntStream mapToInt(LongToIntFunction longToIntFunction);

    DoubleStream mapToDouble(LongToDoubleFunction longToDoubleFunction);

    LongStream flatMap(LongFunction<? extends LongStream> longFunction);

    LongStream distinct();

    LongStream sorted();

    LongStream peek(LongConsumer longConsumer);

    LongStream limit(long j10);

    LongStream skip(long j10);

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    long[] toArray();

    long reduce(long j10, LongBinaryOperator longBinaryOperator);

    OptionalLong reduce(LongBinaryOperator longBinaryOperator);

    <R> R collect(Supplier<R> supplier, ObjLongConsumer<R> objLongConsumer, BiConsumer<R, R> biConsumer);

    long sum();

    OptionalLong min();

    OptionalLong max();

    long count();

    OptionalDouble average();

    LongSummaryStatistics summaryStatistics();

    boolean anyMatch(LongPredicate longPredicate);

    boolean allMatch(LongPredicate longPredicate);

    boolean noneMatch(LongPredicate longPredicate);

    OptionalLong findFirst();

    OptionalLong findAny();

    DoubleStream asDoubleStream();

    Stream<Long> boxed();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    LongStream sequential();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    LongStream parallel();

    @Override
    Iterator<Long> iterator2();

    @Override
    Spliterator<Long> spliterator2();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/LongStream$Builder.class
 */
    public interface Builder extends LongConsumer {
        @Override
        void accept(long j10);

        LongStream build();

        default Builder add(long t10) {
            throw new RuntimeException("Stub!");
        }
    }

    static Builder builder() {
        throw new RuntimeException("Stub!");
    }

    static LongStream empty() {
        throw new RuntimeException("Stub!");
    }

    static LongStream of(long t10) {
        throw new RuntimeException("Stub!");
    }

    static LongStream of(long... values) {
        throw new RuntimeException("Stub!");
    }

    static LongStream iterate(long seed, LongUnaryOperator f10) {
        throw new RuntimeException("Stub!");
    }

    static LongStream generate(LongSupplier s10) {
        throw new RuntimeException("Stub!");
    }

    static LongStream range(long startInclusive, long endExclusive) {
        throw new RuntimeException("Stub!");
    }

    static LongStream rangeClosed(long startInclusive, long endInclusive) {
        throw new RuntimeException("Stub!");
    }

    static LongStream concat(LongStream a10, LongStream b10) {
        throw new RuntimeException("Stub!");
    }
}
