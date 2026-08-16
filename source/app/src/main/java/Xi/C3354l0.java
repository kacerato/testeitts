package Xi;

import Bi.InterfaceC2391x;

public final class C3354l0 implements InterfaceC2391x {

    public static final int f29375e = 32;

    public final byte[] f29376a;

    public final boolean f29377b;

    public final int f29378c;

    public final byte[] f29379d;

    public C3354l0(byte[] bArr, byte[] bArr2, int i10, boolean z10) {
        if (bArr == null) {
            throw new IllegalArgumentException("A KDF requires Ki (a seed) as input");
        }
        this.f29376a = org.bouncycastle.util.a.p(bArr);
        if (bArr2 == null) {
            this.f29379d = new byte[0];
        } else {
            this.f29379d = org.bouncycastle.util.a.p(bArr2);
        }
        if (i10 != 8 && i10 != 16 && i10 != 24 && i10 != 32) {
            throw new IllegalArgumentException("Length of counter should be 8, 16, 24 or 32");
        }
        this.f29378c = i10;
        this.f29377b = z10;
    }

    public static C3354l0 a(byte[] bArr, byte[] bArr2, int i10) {
        return new C3354l0(bArr, bArr2, i10, true);
    }

    public static C3354l0 b(byte[] bArr, byte[] bArr2) {
        return new C3354l0(bArr, bArr2, 32, false);
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f29379d);
    }

    public byte[] d() {
        return this.f29376a;
    }

    public int e() {
        return this.f29378c;
    }

    public boolean f() {
        return this.f29377b;
    }
}
