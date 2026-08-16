package kotlin.jvm.internal;

import org.jetbrains.annotations.NotNull;

public final class s0 extends e0<short[]> {

    @NotNull
    public final short[] f95784d;

    public s0(int i10) {
        super(i10);
        this.f95784d = new short[i10];
    }

    public final void h(short s10) {
        short[] sArr = this.f95784d;
        int b10 = b();
        e(b10 + 1);
        sArr[b10] = s10;
    }

    @Override
    public int c(@NotNull short[] sArr) {
        M.p(sArr, "<this>");
        return sArr.length;
    }

    @NotNull
    public final short[] j() {
        return g(this.f95784d, new short[f()]);
    }
}
