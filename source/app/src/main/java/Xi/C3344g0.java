package Xi;

import Bi.InterfaceC2391x;

public class C3344g0 implements InterfaceC2391x {

    public final byte[] f29345a;

    public final boolean f29346b;

    public final byte[] f29347c;

    public final byte[] f29348d;

    public C3344g0(byte[] bArr, boolean z10, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            throw new IllegalArgumentException("IKM (input keying material) should not be null");
        }
        this.f29345a = org.bouncycastle.util.a.p(bArr);
        this.f29346b = z10;
        if (bArr2 == null || bArr2.length == 0) {
            this.f29347c = null;
        } else {
            this.f29347c = org.bouncycastle.util.a.p(bArr2);
        }
        if (bArr3 == null) {
            this.f29348d = new byte[0];
        } else {
            this.f29348d = org.bouncycastle.util.a.p(bArr3);
        }
    }

    public static C3344g0 a(byte[] bArr) {
        return new C3344g0(bArr, false, null, null);
    }

    public static C3344g0 f(byte[] bArr, byte[] bArr2) {
        return new C3344g0(bArr, true, null, bArr2);
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f29345a);
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f29348d);
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f29347c);
    }

    public boolean e() {
        return this.f29346b;
    }

    public C3344g0(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this(bArr, false, bArr2, bArr3);
    }
}
