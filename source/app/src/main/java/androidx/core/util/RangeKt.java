package androidx.core.util;

import Vf.g;
import android.util.Range;
import kotlin.jvm.internal.M;

public final class RangeKt {
    public static final <T extends Comparable<? super T>> Range<T> and(Range<T> range, Range<T> other) {
        M.p(range, "<this>");
        M.p(other, "other");
        Range<T> intersect = range.intersect(other);
        M.o(intersect, "intersect(other)");
        return intersect;
    }

    public static final <T extends Comparable<? super T>> Range<T> plus(Range<T> range, T value) {
        M.p(range, "<this>");
        M.p(value, "value");
        Range<T> extend = range.extend((Range<T>) value);
        M.o(extend, "extend(value)");
        return extend;
    }

    public static final <T extends Comparable<? super T>> Range<T> rangeTo(T t10, T that) {
        M.p(t10, "<this>");
        M.p(that, "that");
        return new Range<>(t10, that);
    }

    public static final <T extends Comparable<? super T>> g<T> toClosedRange(final Range<T> range) {
        M.p(range, "<this>");
        return (g<T>) new g<T>() {
            /* JADX WARN: Incorrect types in method signature: (TT;)Z */
            @Override
            public boolean contains(Comparable comparable) {
                return g.a.a(this, comparable);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override
            public Comparable getEndInclusive() {
                return range.getUpper();
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override
            public Comparable getStart() {
                return range.getLower();
            }

            @Override
            public boolean isEmpty() {
                return g.a.b(this);
            }
        };
    }

    public static final <T extends Comparable<? super T>> Range<T> toRange(g<T> gVar) {
        M.p(gVar, "<this>");
        return new Range<>(gVar.getStart(), gVar.getEndInclusive());
    }

    public static final <T extends Comparable<? super T>> Range<T> plus(Range<T> range, Range<T> other) {
        M.p(range, "<this>");
        M.p(other, "other");
        Range<T> extend = range.extend(other);
        M.o(extend, "extend(other)");
        return extend;
    }
}
