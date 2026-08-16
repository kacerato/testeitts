package kotlin.jvm.internal;

import org.jetbrains.annotations.NotNull;

public final class C extends e0<float[]> {

    @NotNull
    public final float[] f95701d;

    public C(int i10) {
        super(i10);
        this.f95701d = new float[i10];
    }

    public final void h(float f10) {
        float[] fArr = this.f95701d;
        int b10 = b();
        e(b10 + 1);
        fArr[b10] = f10;
    }

    @Override
    public int c(@NotNull float[] fArr) {
        M.p(fArr, "<this>");
        return fArr.length;
    }

    @NotNull
    public final float[] j() {
        return g(this.f95701d, new float[f()]);
    }
}
