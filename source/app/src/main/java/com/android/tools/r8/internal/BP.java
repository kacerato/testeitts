package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Function;
import java.util.function.Supplier;

public final class BP extends DP {

    public final YM f38893a;

    public BP(YM ym2) {
        this.f38893a = ym2;
    }

    @Override
    public final Object a(Supplier supplier, Function function, Function function2, Function function3) {
        return function3.apply(this.f38893a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BP) {
            return Objects.equals(this.f38893a, ((BP) obj).f38893a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f38893a);
    }

    public final String toString() {
        return this.f38893a.toString();
    }
}
