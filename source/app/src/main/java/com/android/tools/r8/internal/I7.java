package com.android.tools.r8.internal;

public final class I7 {

    public static final boolean f40979b = true;

    public final CH f40980a = new CH(16);

    public I7(TH... thArr) {
        if (!f40979b && thArr.length <= 0) {
            throw new AssertionError();
        }
        for (TH th2 : thArr) {
            if (!f40979b && th2.size() <= 0) {
                throw new AssertionError();
            }
            CH ch2 = this.f40980a;
            ch2.a(ch2.size(), th2);
        }
    }

    public final long a(EnumC9738uJ enumC9738uJ) {
        long j10;
        CH ch2 = this.f40980a;
        long c10 = (ch2.c(ch2.f39177c - 1) - this.f40980a.c(0)) + 1;
        if (!C9569tI.a(enumC9738uJ, c10)) {
            return -9223372036854775807L;
        }
        long j11 = enumC9738uJ.a() ? 12 : 3;
        long j12 = this.f40980a.f39177c;
        long j13 = (enumC9738uJ.a() ? j12 * 8 : (j12 * 4) + 2) + j11;
        long j14 = enumC9738uJ.a() ? 16 : 3;
        if (!enumC9738uJ.a()) {
            j10 = (c10 * 2) + 4;
        } else {
            if (!C9569tI.f52577p && c10 > 4294967295L) {
                throw new AssertionError();
            }
            j10 = c10 * 4;
        }
        return j13 - (j10 + j14);
    }
}
