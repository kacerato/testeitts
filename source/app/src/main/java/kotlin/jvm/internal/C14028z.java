package kotlin.jvm.internal;

import org.jetbrains.annotations.NotNull;

public final class C14028z extends e0<double[]> {

    @NotNull
    public final double[] f95809d;

    public C14028z(int i10) {
        super(i10);
        this.f95809d = new double[i10];
    }

    public final void h(double d10) {
        double[] dArr = this.f95809d;
        int b10 = b();
        e(b10 + 1);
        dArr[b10] = d10;
    }

    @Override
    public int c(@NotNull double[] dArr) {
        M.p(dArr, "<this>");
        return dArr.length;
    }

    @NotNull
    public final double[] j() {
        return g(this.f95809d, new double[f()]);
    }
}
