package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Function;
import java.util.function.Supplier;

public final class AP extends DP {

    public final JM f38610a;

    public AP(JM jm2) {
        this.f38610a = jm2;
    }

    @Override
    public final Object a(Supplier supplier, Function function, Function function2, Function function3) {
        return function2.apply(this.f38610a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AP) {
            return Objects.equals(this.f38610a, ((AP) obj).f38610a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f38610a);
    }

    public final String toString() {
        return this.f38610a.toString();
    }
}
