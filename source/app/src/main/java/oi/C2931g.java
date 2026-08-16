package Oi;

import Bi.EnumC2383o;
import Xi.C3351k;
import Xi.C3353l;

public class C2931g extends C2930f {

    public static final int f20211c = 20;

    @Override
    public byte[] a() {
        int i10 = this.f1865b;
        byte[] bArr = new byte[i10];
        int i11 = 0;
        while (true) {
            this.f1864a.nextBytes(bArr);
            C3351k.f(bArr);
            i11++;
            if (i11 >= 20 || (!C3353l.j(bArr, 0, i10) && C3353l.i(bArr, 0))) {
                break;
            }
        }
        if (C3353l.j(bArr, 0, i10) || !C3353l.i(bArr, 0)) {
            throw new IllegalStateException("Unable to generate DES-EDE key");
        }
        return bArr;
    }

    @Override
    public void b(Bi.G g10) {
        this.f1864a = g10.a();
        int b10 = (g10.b() + 7) / 8;
        this.f1865b = b10;
        if (b10 == 0 || b10 == 21) {
            this.f1865b = 24;
        } else if (b10 == 14) {
            this.f1865b = 16;
        } else if (b10 != 24 && b10 != 16) {
            throw new IllegalArgumentException("DESede key must be 192 or 128 bits long.");
        }
        Bi.r.a(new Hi.c("DESedeKeyGen", 112, null, EnumC2383o.KEYGEN));
    }
}
