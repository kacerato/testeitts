package Xi;

import Bi.InterfaceC2379k;

public class C3337d implements InterfaceC2379k {

    public static final int f29334d = 32;

    public byte[] f29335b;

    public byte[] f29336c;

    public static C3337d b(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Invalid context");
        }
        C3337d c3337d = new C3337d();
        c3337d.f29336c = org.bouncycastle.util.a.p(bArr);
        return c3337d;
    }

    public static C3337d e(byte[] bArr) {
        if (bArr == null || bArr.length != 32) {
            throw new IllegalArgumentException("Invalid keyLength");
        }
        C3337d c3337d = new C3337d();
        c3337d.f29335b = org.bouncycastle.util.a.p(bArr);
        return c3337d;
    }

    public void a() {
        org.bouncycastle.util.a.e0(this.f29335b, (byte) 0);
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f29336c);
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f29335b);
    }
}
