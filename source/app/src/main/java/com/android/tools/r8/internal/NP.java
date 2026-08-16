package com.android.tools.r8.internal;

public final class NP extends SP {

    public final double f42579a;

    public NP(double d10) {
        this.f42579a = d10;
    }

    @Override
    public final Object a() {
        return Double.valueOf(this.f42579a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NP) && Double.compare(this.f42579a, ((NP) obj).f42579a) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.f42579a);
    }
}
