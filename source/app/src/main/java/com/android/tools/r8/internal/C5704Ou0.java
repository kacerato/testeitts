package com.android.tools.r8.internal;

public final class C5704Ou0 implements Comparable {

    public final long f43073b;

    public static int a(long j10) {
        return Long.hashCode(j10);
    }

    @Override
    public final int compareTo(Object obj) {
        long j10 = ((C5704Ou0) obj).f43073b;
        long j11 = this.f43073b ^ Long.MIN_VALUE;
        long j12 = j10 ^ Long.MIN_VALUE;
        if (j11 < j12) {
            return -1;
        }
        return j11 == j12 ? 0 : 1;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C5704Ou0) && this.f43073b == ((C5704Ou0) obj).f43073b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f43073b);
    }

    public final String toString() {
        long j10 = this.f43073b;
        if (j10 >= 0) {
            String l10 = Long.toString(j10, 10);
            GJ.b(l10, "toString(...)");
            return l10;
        }
        long j11 = 10;
        long j12 = ((j10 >>> 1) / j11) << 1;
        long j13 = j10 - (j12 * j11);
        if (j13 >= j11) {
            j13 -= j11;
            j12++;
        }
        String l11 = Long.toString(j12, 10);
        GJ.b(l11, "toString(...)");
        String l12 = Long.toString(j13, 10);
        GJ.b(l12, "toString(...)");
        return l11.concat(l12);
    }
}
