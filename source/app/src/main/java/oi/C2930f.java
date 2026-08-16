package Oi;

import Bi.C2378j;
import Bi.EnumC2383o;
import Xi.C3351k;

public class C2930f extends C2378j {
    @Override
    public byte[] a() {
        byte[] bArr = new byte[8];
        do {
            this.f1864a.nextBytes(bArr);
            C3351k.f(bArr);
        } while (C3351k.e(bArr, 0));
        return bArr;
    }

    @Override
    public void b(Bi.G g10) {
        super.b(g10);
        int i10 = this.f1865b;
        if (i10 == 0 || i10 == 7) {
            this.f1865b = 8;
        } else if (i10 != 8) {
            throw new IllegalArgumentException("DES key must be 64 bits long.");
        }
        Bi.r.a(new Hi.c("DESKeyGen", 56, null, EnumC2383o.KEYGEN));
    }
}
