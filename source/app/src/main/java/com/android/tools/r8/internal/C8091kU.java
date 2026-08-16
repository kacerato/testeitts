package com.android.tools.r8.internal;

public class C8091kU {

    public static final boolean f49645c = true;

    public final long f49646a;

    public final long f49647b;

    public C8091kU(int i10, int i11) {
        if (!f49645c && i10 > i11) {
            throw new AssertionError();
        }
        this.f49646a = i10;
        this.f49647b = i11;
    }

    public long a() {
        return this.f49647b;
    }

    public long b() {
        return this.f49646a;
    }

    public final boolean c() {
        return this.f49646a == this.f49647b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C8091kU) {
            C8091kU c8091kU = (C8091kU) obj;
            if (c8091kU.f49646a == this.f49646a && c8091kU.f49647b == this.f49647b) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return "[" + this.f49646a + ", " + this.f49647b + "]";
    }

    public C8091kU(long j10, long j11) {
        if (!f49645c && j10 > j11) {
            throw new AssertionError();
        }
        this.f49646a = j10;
        this.f49647b = j11;
    }
}
