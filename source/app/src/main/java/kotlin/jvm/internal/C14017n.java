package kotlin.jvm.internal;

import org.jetbrains.annotations.NotNull;

public final class C14017n extends e0<boolean[]> {

    @NotNull
    public final boolean[] f95756d;

    public C14017n(int i10) {
        super(i10);
        this.f95756d = new boolean[i10];
    }

    public final void h(boolean z10) {
        boolean[] zArr = this.f95756d;
        int b10 = b();
        e(b10 + 1);
        zArr[b10] = z10;
    }

    @Override
    public int c(@NotNull boolean[] zArr) {
        M.p(zArr, "<this>");
        return zArr.length;
    }

    @NotNull
    public final boolean[] j() {
        return g(this.f95756d, new boolean[f()]);
    }
}
