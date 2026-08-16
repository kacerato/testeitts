package Xi;

import Bi.InterfaceC2379k;

public class A0 implements InterfaceC2379k {

    public byte[] f29191b;

    public InterfaceC2379k f29192c;

    public A0(InterfaceC2379k interfaceC2379k, byte[] bArr) {
        this(interfaceC2379k, bArr, 0, bArr.length);
    }

    public InterfaceC2379k a() {
        return this.f29192c;
    }

    public byte[] b() {
        return this.f29191b;
    }

    public A0(InterfaceC2379k interfaceC2379k, byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        this.f29191b = bArr2;
        this.f29192c = interfaceC2379k;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
    }
}
