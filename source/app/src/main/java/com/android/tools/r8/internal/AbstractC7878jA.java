package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public abstract class AbstractC7878jA {
    public static final int a(int i10) {
        int i11 = i10 * (-1640531527);
        return i11 ^ (i11 >>> 16);
    }

    public static long b(long j10) {
        if (j10 == 0) {
            return 1L;
        }
        long j11 = j10 - 1;
        long j12 = j11 | (j11 >> 1);
        long j13 = j12 | (j12 >> 2);
        long j14 = j13 | (j13 >> 4);
        long j15 = j14 | (j14 >> 8);
        long j16 = j15 | (j15 >> 16);
        return (j16 | (j16 >> 32)) + 1;
    }

    public static final long a(long j10) {
        long j11 = j10 * Li.Z.f13808g;
        long j12 = j11 ^ (j11 >>> 32);
        return j12 ^ (j12 >>> 16);
    }

    public static int b(int i10, float f10) {
        return Math.min((int) Math.ceil(i10 * f10), i10 - 1);
    }

    public static int a(int i10, float f10) {
        long max = Math.max(2L, b((long) Math.ceil(i10 / f10)));
        if (max <= TagBits.HasDirectWildcard) {
            return (int) max;
        }
        throw new IllegalArgumentException("Too large (" + i10 + " expected elements with load factor " + f10 + ")");
    }
}
