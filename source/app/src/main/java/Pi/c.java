package Pi;

import Bi.InterfaceC2392y;
import Ii.L;
import Ii.M;
import Ii.O;
import Oi.x;
import Xi.C3344g0;
import org.bouncycastle.util.p;

public class c {

    public static final String f21504c = "HPKE-v1";

    public final x f21505a;

    public final int f21506b;

    public c(short s10) {
        InterfaceC2392y l10;
        if (s10 == 1) {
            l10 = new L();
        } else if (s10 == 2) {
            l10 = new M();
        } else {
            if (s10 != 3) {
                throw new IllegalArgumentException("invalid kdf id");
            }
            l10 = new O();
        }
        this.f21505a = new x(l10);
        this.f21506b = l10.f();
    }

    public byte[] a(byte[] bArr, byte[] bArr2, int i10) {
        if (i10 > 65536) {
            throw new IllegalArgumentException("Expand length cannot be larger than 2^16");
        }
        this.f21505a.c(C3344g0.f(bArr, bArr2));
        byte[] bArr3 = new byte[i10];
        this.f21505a.a(bArr3, 0, i10);
        return bArr3;
    }

    public byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            bArr = new byte[this.f21506b];
        }
        return this.f21505a.f(bArr, bArr2);
    }

    public byte[] c(byte[] bArr, byte[] bArr2, String str, byte[] bArr3, int i10) {
        if (i10 > 65536) {
            throw new IllegalArgumentException("Expand length cannot be larger than 2^16");
        }
        this.f21505a.c(C3344g0.f(bArr, org.bouncycastle.util.a.B(org.bouncycastle.util.a.D(p.Q((short) i10), f21504c.getBytes(), bArr2, str.getBytes()), bArr3)));
        byte[] bArr4 = new byte[i10];
        this.f21505a.a(bArr4, 0, i10);
        return bArr4;
    }

    public byte[] d(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        if (bArr == null) {
            bArr = new byte[this.f21506b];
        }
        return this.f21505a.f(bArr, org.bouncycastle.util.a.D(f21504c.getBytes(), bArr2, str.getBytes(), bArr3));
    }

    public int e() {
        return this.f21506b;
    }
}
