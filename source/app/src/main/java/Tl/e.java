package Tl;

import Xi.C3335c;

public final class e extends C3335c {

    public int f25444c;

    public byte[] f25445d;

    public e(int i10, byte[] bArr) {
        super(true);
        if (bArr.length != g.b(i10)) {
            throw new IllegalArgumentException("invalid key size for security category");
        }
        this.f25444c = i10;
        this.f25445d = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f25445d);
    }

    public int e() {
        return this.f25444c;
    }
}
