package kl;

import Bi.InterfaceC2379k;

public class o implements Yk.g {

    public m f95463a;

    public n f95464b;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (z10) {
            this.f95463a = (m) interfaceC2379k;
        } else {
            this.f95464b = (n) interfaceC2379k;
        }
    }

    @Override
    public byte[] b(byte[] bArr) {
        h a10 = this.f95463a.d().a();
        byte[] bArr2 = new byte[a10.H(bArr.length)];
        a10.v(bArr2, bArr, this.f95463a.getEncoded());
        byte[] bArr3 = new byte[a10.I()];
        System.arraycopy(bArr2, bArr.length + 4, bArr3, 0, a10.I());
        return bArr3;
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        h a10 = this.f95464b.d().a();
        byte[] bArr3 = new byte[bArr.length];
        boolean x10 = a10.x(bArr3, org.bouncycastle.util.a.C(org.bouncycastle.util.p.p(bArr2.length), bArr, bArr2), this.f95464b.getEncoded());
        if (org.bouncycastle.util.a.g(bArr, bArr3)) {
            return x10;
        }
        return false;
    }
}
