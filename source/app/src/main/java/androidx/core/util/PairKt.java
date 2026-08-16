package androidx.core.util;

import kotlin.jvm.internal.M;
import nf.Z;

public final class PairKt {
    public static final <F, S> F component1(Pair<F, S> pair) {
        M.p(pair, "<this>");
        return pair.first;
    }

    public static final <F, S> S component2(Pair<F, S> pair) {
        M.p(pair, "<this>");
        return pair.second;
    }

    public static final <F, S> android.util.Pair<F, S> toAndroidPair(Z<? extends F, ? extends S> z10) {
        M.p(z10, "<this>");
        return new android.util.Pair<>(z10.e(), z10.f());
    }

    public static final <F, S> Pair<F, S> toAndroidXPair(Z<? extends F, ? extends S> z10) {
        M.p(z10, "<this>");
        return new Pair<>(z10.e(), z10.f());
    }

    public static final <F, S> Z<F, S> toKotlinPair(Pair<F, S> pair) {
        M.p(pair, "<this>");
        return new Z<>(pair.first, pair.second);
    }

    public static final <F, S> F component1(android.util.Pair<F, S> pair) {
        M.p(pair, "<this>");
        return pair.first;
    }

    public static final <F, S> S component2(android.util.Pair<F, S> pair) {
        M.p(pair, "<this>");
        return pair.second;
    }

    public static final <F, S> Z<F, S> toKotlinPair(android.util.Pair<F, S> pair) {
        M.p(pair, "<this>");
        return new Z<>(pair.first, pair.second);
    }
}
