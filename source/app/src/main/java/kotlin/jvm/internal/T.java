package kotlin.jvm.internal;

import org.jetbrains.annotations.NotNull;

public final class T extends e0<long[]> {

    @NotNull
    public final long[] f95714d;

    public T(int i10) {
        super(i10);
        this.f95714d = new long[i10];
    }

    public final void h(long j10) {
        long[] jArr = this.f95714d;
        int b10 = b();
        e(b10 + 1);
        jArr[b10] = j10;
    }

    @Override
    public int c(@NotNull long[] jArr) {
        M.p(jArr, "<this>");
        return jArr.length;
    }

    @NotNull
    public final long[] j() {
        return g(this.f95714d, new long[f()]);
    }
}
