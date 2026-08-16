package androidx.collection;

import kotlin.jvm.internal.M;

public final class ArraySetKt {
    public static final <T> ArraySet<T> arraySetOf() {
        return new ArraySet<>();
    }

    public static final <T> ArraySet<T> arraySetOf(T... values) {
        M.q(values, "values");
        ArraySet<T> arraySet = new ArraySet<>(values.length);
        for (T t10 : values) {
            arraySet.add(t10);
        }
        return arraySet;
    }
}
