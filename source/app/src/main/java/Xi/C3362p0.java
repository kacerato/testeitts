package Xi;

import Bi.InterfaceC2391x;

public class C3362p0 implements InterfaceC2391x {

    public byte[] f29396a;

    public C3362p0(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public byte[] a() {
        return this.f29396a;
    }

    public C3362p0(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        this.f29396a = bArr2;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
    }
}
