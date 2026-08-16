package kotlin.jvm.internal;

import org.jetbrains.annotations.NotNull;

public final class C14020q extends e0<byte[]> {

    @NotNull
    public final byte[] f95766d;

    public C14020q(int i10) {
        super(i10);
        this.f95766d = new byte[i10];
    }

    public final void h(byte b10) {
        byte[] bArr = this.f95766d;
        int b11 = b();
        e(b11 + 1);
        bArr[b11] = b10;
    }

    @Override
    public int c(@NotNull byte[] bArr) {
        M.p(bArr, "<this>");
        return bArr.length;
    }

    @NotNull
    public final byte[] j() {
        return g(this.f95766d, new byte[f()]);
    }
}
