package Xi;

import Bi.InterfaceC2379k;

public class w0 implements InterfaceC2379k {

    public byte[] f29432b;

    public InterfaceC2379k f29433c;

    public w0(InterfaceC2379k interfaceC2379k, byte[] bArr) {
        this(interfaceC2379k, bArr, 0, bArr.length);
    }

    public byte[] a() {
        return this.f29432b;
    }

    public InterfaceC2379k b() {
        return this.f29433c;
    }

    public w0(InterfaceC2379k interfaceC2379k, byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        this.f29432b = bArr2;
        this.f29433c = interfaceC2379k;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
    }
}
