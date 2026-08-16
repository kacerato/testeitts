package com.google.android.filament;

import androidx.annotation.NonNull;

public class Fence {

    public static final long f59955b = -1;

    public long f59956a;

    public enum a {
        ERROR,
        CONDITION_SATISFIED,
        TIMEOUT_EXPIRED
    }

    public enum b {
        FLUSH,
        DONT_FLUSH
    }

    public Fence(long j10) {
        this.f59956a = j10;
    }

    public static a d(@NonNull Fence fence, @NonNull b bVar) {
        int nWaitAndDestroy = nWaitAndDestroy(fence.b(), bVar.ordinal());
        if (nWaitAndDestroy != -1 && nWaitAndDestroy == 0) {
            return a.CONDITION_SATISFIED;
        }
        return a.ERROR;
    }

    private static native int nWait(long j10, int i10, long j11);

    private static native int nWaitAndDestroy(long j10, int i10);

    public void a() {
        this.f59956a = 0L;
    }

    public long b() {
        long j10 = this.f59956a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed Fence");
    }

    public a c(@NonNull b bVar, long j10) {
        int nWait = nWait(b(), bVar.ordinal(), j10);
        return nWait != -1 ? nWait != 0 ? nWait != 1 ? a.ERROR : a.TIMEOUT_EXPIRED : a.CONDITION_SATISFIED : a.ERROR;
    }
}
