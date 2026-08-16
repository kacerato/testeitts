package Li;

import Bi.C2376h;
import Bi.InterfaceC2373e;
import Bi.InterfaceC2390w;

public class T extends L {
    public T(InterfaceC2373e interfaceC2373e, InterfaceC2390w interfaceC2390w, Bi.I i10) {
        super(interfaceC2373e, interfaceC2390w, i10);
    }

    @Override
    public byte[] e(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        if (bArr != null) {
            org.bouncycastle.util.p.h(bArr.length * 8, bArr2, 0);
        }
        return bArr2;
    }

    public T(InterfaceC2373e interfaceC2373e, InterfaceC2390w interfaceC2390w, Bi.I i10, C2376h c2376h) {
        super(interfaceC2373e, interfaceC2390w, i10, c2376h);
    }
}
