package Xi;

import Bi.InterfaceC2379k;

public class z0 implements InterfaceC2379k {

    public byte[] f29450b;

    public InterfaceC2379k f29451c;

    public z0(InterfaceC2379k interfaceC2379k, byte[] bArr) {
        this(interfaceC2379k, bArr, 0, bArr.length);
    }

    public InterfaceC2379k a() {
        return this.f29451c;
    }

    public byte[] b() {
        return this.f29450b;
    }

    public z0(InterfaceC2379k interfaceC2379k, byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        this.f29450b = bArr2;
        this.f29451c = interfaceC2379k;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
    }
}
