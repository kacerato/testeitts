package com.android.tools.r8.internal;

public final class TP extends SP {

    public final long f44464a;

    public TP(long j10) {
        this.f44464a = j10;
    }

    @Override
    public final Object a() {
        return Long.valueOf(this.f44464a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TP) && this.f44464a == ((TP) obj).f44464a;
    }

    public final int hashCode() {
        return Long.hashCode(this.f44464a);
    }
}
