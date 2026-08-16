package Xi;

import Bi.InterfaceC2379k;

public class C3360o0 implements InterfaceC2379k {

    public byte[] f29393b;

    public C3360o0(int i10) {
        this.f29393b = new byte[i10];
    }

    public void a(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = this.f29393b;
        if (bArr2.length != i11) {
            throw new IllegalArgumentException("len");
        }
        System.arraycopy(bArr2, 0, bArr, i10, i11);
    }

    public byte[] b() {
        return this.f29393b;
    }

    public int c() {
        return this.f29393b.length;
    }

    public C3360o0 d() {
        C3360o0 c3360o0 = new C3360o0(this.f29393b.length);
        org.bouncycastle.util.a.M0(this.f29393b, c3360o0.f29393b);
        return c3360o0;
    }

    public C3360o0(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public C3360o0(byte[] bArr, int i10, int i11) {
        this(i11);
        System.arraycopy(bArr, i10, this.f29393b, 0, i11);
    }
}
