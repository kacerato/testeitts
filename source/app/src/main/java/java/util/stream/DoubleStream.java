package java.util.stream;

import java.util.DoubleSummaryStatistics;
import java.util.Iterator;
import java.util.OptionalDouble;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleSupplier;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/DoubleStream.class
 */
public interface DoubleStream extends BaseStream<Double, DoubleStream> {
    DoubleStream filter(DoublePredicate doublePredicate);

    DoubleStream map(DoubleUnaryOperator doubleUnaryOperator);

    <U> Stream<U> mapToObj(DoubleFunction<? extends U> doubleFunction);

    IntStream mapToInt(DoubleToIntFunction doubleToIntFunction);

    LongStream mapToLong(DoubleToLongFunction doubleToLongFunction);

    DoubleStream flatMap(DoubleFunction<? extends DoubleStream> doubleFunction);

    DoubleStream distinct();

    DoubleStream sorted();

    DoubleStream peek(DoubleConsumer doubleConsumer);

    DoubleStream limit(long j10);

    DoubleStream skip(long j10);

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    double[] toArray();

    double reduce(double d10, DoubleBinaryOperator doubleBinaryOperator);

    OptionalDouble reduce(DoubleBinaryOperator doubleBinaryOperator);

    <R> R collect(Supplier<R> supplier, ObjDoubleConsumer<R> objDoubleConsumer, BiConsumer<R, R> biConsumer);

    double sum();

    OptionalDouble min();

    OptionalDouble max();

    long count();

    OptionalDouble average();

    DoubleSummaryStatistics summaryStatistics();

    boolean anyMatch(DoublePredicate doublePredicate);

    boolean allMatch(DoublePredicate doublePredicate);

    boolean noneMatch(DoublePredicate doublePredicate);

    OptionalDouble findFirst();

    OptionalDouble findAny();

    Stream<Double> boxed();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    DoubleStream sequential();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    DoubleStream parallel();

    @Override
    Iterator<Double> iterator2();

    @Override
    Spliterator<Double> spliterator2();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/DoubleStream$Builder.class
 */
    public interface Builder extends DoubleConsumer {
        @Override
        void accept(double d10);

        DoubleStream build();

        default Builder add(double t10) {
            throw new RuntimeException("Stub!");
        }
    }

    static Builder builder() {
        throw new RuntimeException("Stub!");
    }

    static DoubleStream empty() {
        throw new RuntimeException("Stub!");
    }

    static DoubleStream of(double t10) {
        throw new RuntimeException("Stub!");
    }

    static DoubleStream of(double... values) {
        throw new RuntimeException("Stub!");
    }

    static DoubleStream iterate(double seed, DoubleUnaryOperator f10) {
        throw new RuntimeException("Stub!");
    }

    static DoubleStream generate(DoubleSupplier s10) {
        throw new RuntimeException("Stub!");
    }

    static DoubleStream concat(DoubleStream a10, DoubleStream b10) {
        throw new RuntimeException("Stub!");
    }
}
