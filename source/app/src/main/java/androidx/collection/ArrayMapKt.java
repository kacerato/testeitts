package androidx.collection;

import kotlin.jvm.internal.M;
import nf.Z;

public final class ArrayMapKt {
    public static final <K, V> ArrayMap<K, V> arrayMapOf() {
        return new ArrayMap<>();
    }

    public static final <K, V> ArrayMap<K, V> arrayMapOf(Z<? extends K, ? extends V>... pairs) {
        M.q(pairs, "pairs");
        ArrayMap<K, V> arrayMap = new ArrayMap<>(pairs.length);
        for (Z<? extends K, ? extends V> z10 : pairs) {
            arrayMap.put(z10.e(), z10.f());
        }
        return arrayMap;
    }
}
