package Ef;

import nf.B0;
import nf.F0;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;

public final class u {
    public static final int a(int i10, int i11, int i12) {
        int remainderUnsigned = Integer.remainderUnsigned(i10, i12);
        int remainderUnsigned2 = Integer.remainderUnsigned(i11, i12);
        int compareUnsigned = Integer.compareUnsigned(remainderUnsigned, remainderUnsigned2);
        int o10 = B0.o(remainderUnsigned - remainderUnsigned2);
        return compareUnsigned >= 0 ? o10 : B0.o(o10 + i12);
    }

    public static final long b(long j10, long j11, long j12) {
        long remainderUnsigned = Long.remainderUnsigned(j10, j12);
        long remainderUnsigned2 = Long.remainderUnsigned(j11, j12);
        int compareUnsigned = Long.compareUnsigned(remainderUnsigned, remainderUnsigned2);
        long i10 = F0.i(remainderUnsigned - remainderUnsigned2);
        return compareUnsigned >= 0 ? i10 : F0.i(i10 + j12);
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final long c(long j10, long j11, long j12) {
        if (j12 > 0) {
            return Long.compareUnsigned(j10, j11) >= 0 ? j11 : F0.i(j11 - b(j11, j10, F0.i(j12)));
        }
        if (j12 < 0) {
            return Long.compareUnsigned(j10, j11) <= 0 ? j11 : F0.i(j11 + b(j10, j11, F0.i(-j12)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final int d(int i10, int i11, int i12) {
        if (i12 > 0) {
            return Integer.compareUnsigned(i10, i11) >= 0 ? i11 : B0.o(i11 - a(i11, i10, B0.o(i12)));
        }
        if (i12 < 0) {
            return Integer.compareUnsigned(i10, i11) <= 0 ? i11 : B0.o(i11 + a(i10, i11, B0.o(-i12)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }
}
