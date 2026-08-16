package androidx.core.util;

import java.util.Objects;

public interface Predicate<T> {
    static <T> Predicate<T> isEqual(final Object obj) {
        return obj == null ? new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                boolean isNull;
                isNull = Objects.isNull(obj2);
                return isNull;
            }
        } : new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                boolean equals;
                equals = Object.this.equals(obj2);
                return equals;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$and$0(Predicate predicate, Object obj) {
        return test(obj) && predicate.test(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$negate$1(Object obj) {
        return !test(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$or$2(Predicate predicate, Object obj) {
        return test(obj) || predicate.test(obj);
    }

    static <T> Predicate<T> not(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return predicate.negate();
    }

    default Predicate<T> and(final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$and$0;
                lambda$and$0 = Predicate.this.lambda$and$0(predicate, obj);
                return lambda$and$0;
            }
        };
    }

    default Predicate<T> negate() {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$negate$1;
                lambda$negate$1 = Predicate.this.lambda$negate$1(obj);
                return lambda$negate$1;
            }
        };
    }

    default Predicate<T> or(final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$or$2;
                lambda$or$2 = Predicate.this.lambda$or$2(predicate, obj);
                return lambda$or$2;
            }
        };
    }

    boolean test(T t10);
}
