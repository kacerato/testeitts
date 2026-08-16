package java.lang;

import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import jdk.internal.access.SharedSecrets;
import jdk.internal.javac.PreviewFeature;
import jdk.internal.lang.stable.StableEnumFunction;
import jdk.internal.lang.stable.StableFunction;
import jdk.internal.lang.stable.StableIntFunction;
import jdk.internal.lang.stable.StableSupplier;
import jdk.internal.lang.stable.StableUtil;
import jdk.internal.lang.stable.StableValueImpl;

@PreviewFeature(feature = PreviewFeature.Feature.STABLE_VALUES)
public interface StableValue<T> {
    boolean trySet(T t10);

    T orElse(T t10);

    T orElseThrow();

    boolean isSet();

    T orElseSet(Supplier<? extends T> supplier);

    void setOrThrow(T t10);

    boolean equals(Object obj);

    int hashCode();

    static <T> StableValue<T> of() {
        return StableValueImpl.of();
    }

    static <T> StableValue<T> of(T contents) {
        StableValue<T> stableValue = of();
        stableValue.trySet(contents);
        return stableValue;
    }

    static <T> Supplier<T> supplier(Supplier<? extends T> underlying) {
        Objects.requireNonNull(underlying);
        return StableSupplier.of(underlying);
    }

    static <R> IntFunction<R> intFunction(int size, IntFunction<? extends R> underlying) {
        StableUtil.assertSizeNonNegative(size);
        Objects.requireNonNull(underlying);
        return StableIntFunction.of(size, underlying);
    }

    static <T, R> Function<T, R> function(Set<? extends T> inputs, Function<? super T, ? extends R> underlying) {
        Objects.requireNonNull(inputs);
        Objects.requireNonNull(underlying);
        if ((inputs instanceof EnumSet) && !inputs.isEmpty()) {
            return StableEnumFunction.of(inputs, underlying);
        }
        return StableFunction.of(inputs, underlying);
    }

    static <E> List<E> list(int size, IntFunction<? extends E> mapper) {
        StableUtil.assertSizeNonNegative(size);
        Objects.requireNonNull(mapper);
        return SharedSecrets.getJavaUtilCollectionAccess().stableList(size, mapper);
    }

    static <K, V> Map<K, V> map(Set<K> keys, Function<? super K, ? extends V> mapper) {
        Objects.requireNonNull(keys);
        Objects.requireNonNull(mapper);
        return SharedSecrets.getJavaUtilCollectionAccess().stableMap(keys, mapper);
    }
}
