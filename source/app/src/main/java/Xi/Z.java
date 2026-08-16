package Xi;

import Bi.InterfaceC2379k;

public final class Z implements InterfaceC2379k {

    public final C3360o0 f29291b;

    public final org.bouncycastle.crypto.util.r f29292c;

    public final byte[] f29293d;

    public final boolean f29294e;

    public Z(C3360o0 c3360o0, int i10, byte[] bArr) {
        this(c3360o0, i10, bArr, false);
    }

    public C3360o0 a() {
        return this.f29291b;
    }

    public int b() {
        return this.f29292c.d();
    }

    public org.bouncycastle.crypto.util.r c() {
        return this.f29292c;
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f29293d);
    }

    public boolean e() {
        return this.f29294e;
    }

    public Z(C3360o0 c3360o0, int i10, byte[] bArr, boolean z10) {
        this(c3360o0, new org.bouncycastle.crypto.util.r(i10), bArr, z10);
    }

    public Z(C3360o0 c3360o0, org.bouncycastle.crypto.util.r rVar, byte[] bArr, boolean z10) {
        this.f29291b = c3360o0;
        this.f29292c = rVar;
        this.f29293d = org.bouncycastle.util.a.p(bArr);
        this.f29294e = z10;
    }
}
