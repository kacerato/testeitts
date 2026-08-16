package Xi;

import Bi.InterfaceC2379k;

public class C0 implements InterfaceC2379k {

    public byte[] f29200b;

    public int f29201c;

    public C0(byte[] bArr, int i10) {
        if (bArr.length > 255) {
            throw new IllegalArgumentException("RC5 key length can be no greater than 255");
        }
        byte[] bArr2 = new byte[bArr.length];
        this.f29200b = bArr2;
        this.f29201c = i10;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public byte[] a() {
        return this.f29200b;
    }

    public int b() {
        return this.f29201c;
    }
}
