package Xi;

import Bi.InterfaceC2379k;

public class C3331a implements InterfaceC2379k {

    public byte[] f29295b;

    public byte[] f29296c;

    public C3360o0 f29297d;

    public int f29298e;

    public C3331a(C3360o0 c3360o0, int i10, byte[] bArr) {
        this(c3360o0, i10, bArr, null);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f29295b);
    }

    public C3360o0 b() {
        return this.f29297d;
    }

    public int c() {
        return this.f29298e;
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f29296c);
    }

    public C3331a(C3360o0 c3360o0, int i10, byte[] bArr, byte[] bArr2) {
        this.f29297d = c3360o0;
        this.f29296c = org.bouncycastle.util.a.p(bArr);
        this.f29298e = i10;
        this.f29295b = org.bouncycastle.util.a.p(bArr2);
    }
}
