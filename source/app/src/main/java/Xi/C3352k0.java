package Xi;

import Bi.InterfaceC2391x;

public final class C3352k0 implements InterfaceC2391x {

    public byte[] f29370a;

    public byte[] f29371b;

    public byte[] f29372c;

    public int f29373d;

    public C3352k0(byte[] bArr, byte[] bArr2, int i10) {
        this(bArr, null, bArr2, i10);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f29372c);
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f29371b);
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f29372c);
    }

    public byte[] d() {
        return this.f29370a;
    }

    public int e() {
        return this.f29373d;
    }

    public C3352k0(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        if (bArr == null) {
            throw new IllegalArgumentException("A KDF requires Ki (a seed) as input");
        }
        this.f29370a = org.bouncycastle.util.a.p(bArr);
        if (bArr2 == null) {
            this.f29371b = new byte[0];
        } else {
            this.f29371b = org.bouncycastle.util.a.p(bArr2);
        }
        if (bArr3 == null) {
            this.f29372c = new byte[0];
        } else {
            this.f29372c = org.bouncycastle.util.a.p(bArr3);
        }
        if (i10 != 8 && i10 != 16 && i10 != 24 && i10 != 32) {
            throw new IllegalArgumentException("Length of counter should be 8, 16, 24 or 32");
        }
        this.f29373d = i10;
    }
}
