package kotlin.jvm.internal;

import org.jetbrains.annotations.NotNull;

public final class C14022t extends e0<char[]> {

    @NotNull
    public final char[] f95785d;

    public C14022t(int i10) {
        super(i10);
        this.f95785d = new char[i10];
    }

    public final void h(char c10) {
        char[] cArr = this.f95785d;
        int b10 = b();
        e(b10 + 1);
        cArr[b10] = c10;
    }

    @Override
    public int c(@NotNull char[] cArr) {
        M.p(cArr, "<this>");
        return cArr.length;
    }

    @NotNull
    public final char[] j() {
        return g(this.f95785d, new char[f()]);
    }
}
