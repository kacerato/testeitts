package Tl;

import Xi.C3335c;

public final class f extends C3335c {

    public int f25446c;

    public byte[] f25447d;

    public f(int i10, byte[] bArr) {
        super(false);
        if (bArr.length != g.c(i10)) {
            throw new IllegalArgumentException("invalid key size for security category");
        }
        this.f25446c = i10;
        this.f25447d = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f25447d);
    }

    public int e() {
        return this.f25446c;
    }
}
