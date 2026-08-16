package kotlin.jvm.internal;

import org.jetbrains.annotations.NotNull;

public final class L extends e0<int[]> {

    @NotNull
    public final int[] f95708d;

    public L(int i10) {
        super(i10);
        this.f95708d = new int[i10];
    }

    public final void h(int i10) {
        int[] iArr = this.f95708d;
        int b10 = b();
        e(b10 + 1);
        iArr[b10] = i10;
    }

    @Override
    public int c(@NotNull int[] iArr) {
        M.p(iArr, "<this>");
        return iArr.length;
    }

    @NotNull
    public final int[] j() {
        return g(this.f95708d, new int[f()]);
    }
}
