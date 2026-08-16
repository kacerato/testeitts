package Xi;

import Bi.InterfaceC2391x;

public final class C3356m0 implements InterfaceC2391x {

    public static final int f29381f = -1;

    public final byte[] f29382a;

    public final byte[] f29383b;

    public final boolean f29384c;

    public final int f29385d;

    public final byte[] f29386e;

    public C3356m0(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10, boolean z10) {
        if (bArr == null) {
            throw new IllegalArgumentException("A KDF requires Ki (a seed) as input");
        }
        this.f29382a = org.bouncycastle.util.a.p(bArr);
        if (bArr3 == null) {
            this.f29386e = new byte[0];
        } else {
            this.f29386e = org.bouncycastle.util.a.p(bArr3);
        }
        this.f29385d = i10;
        if (bArr2 == null) {
            this.f29383b = new byte[0];
        } else {
            this.f29383b = org.bouncycastle.util.a.p(bArr2);
        }
        this.f29384c = z10;
    }

    public static C3356m0 a(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        if (i10 == 8 || i10 == 16 || i10 == 24 || i10 == 32) {
            return new C3356m0(bArr, bArr2, bArr3, i10, true);
        }
        throw new IllegalArgumentException("Length of counter should be 8, 16, 24 or 32");
    }

    public static C3356m0 b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return new C3356m0(bArr, bArr2, bArr3, -1, false);
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f29386e);
    }

    public byte[] d() {
        return this.f29383b;
    }

    public byte[] e() {
        return this.f29382a;
    }

    public int f() {
        return this.f29385d;
    }

    public boolean g() {
        return this.f29384c;
    }
}
