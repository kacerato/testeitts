package ll;

import Bi.InterfaceC2392y;
import Li.C2769a;
import Xi.C3360o0;
import java.security.SecureRandom;

public class C14157c extends SecureRandom {

    public byte[] f96535b;

    public byte[] f96536c;

    public byte[] f96537d;

    public InterfaceC2392y f96538e;

    public C14157c(byte[] bArr, InterfaceC2392y interfaceC2392y) {
        this.f96535b = bArr;
        this.f96538e = interfaceC2392y;
        c(256);
    }

    public final void a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[48];
        for (int i10 = 0; i10 < 3; i10++) {
            int i11 = 15;
            while (true) {
                if (i11 >= 0) {
                    byte b10 = bArr3[i11];
                    if ((b10 & 255) != 255) {
                        bArr3[i11] = (byte) (b10 + 1);
                        break;
                    } else {
                        bArr3[i11] = 0;
                        i11--;
                    }
                }
            }
            b(bArr2, bArr3, bArr4, i10 * 16);
        }
        if (bArr != null) {
            for (int i12 = 0; i12 < 48; i12++) {
                bArr4[i12] = (byte) (bArr4[i12] ^ bArr[i12]);
            }
        }
        System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
        System.arraycopy(bArr4, 32, bArr3, 0, bArr3.length);
    }

    public final void b(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        try {
            C2769a c2769a = new C2769a();
            c2769a.a(true, new C3360o0(bArr));
            for (int i11 = 0; i11 != bArr2.length; i11 += 16) {
                c2769a.g(bArr2, i11, bArr3, i10 + i11);
            }
        } catch (Throwable th2) {
            throw new IllegalStateException("drbg failure: " + th2.getMessage(), th2);
        }
    }

    public final void c(int i10) {
        byte[] bArr = this.f96535b;
        if (bArr.length >= 48) {
            d(bArr, i10);
        } else {
            d(org.bouncycastle.util.a.B(this.f96535b, m.l(this.f96538e, bArr, 48 - bArr.length)), i10);
        }
    }

    public final void d(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[48];
        System.arraycopy(bArr, 0, bArr2, 0, 48);
        byte[] bArr3 = new byte[32];
        this.f96536c = bArr3;
        byte[] bArr4 = new byte[16];
        this.f96537d = bArr4;
        a(bArr2, bArr3, bArr4);
    }

    @Override
    public void nextBytes(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int length = bArr.length;
        int i10 = 0;
        while (length > 0) {
            int i11 = 15;
            while (true) {
                if (i11 < 0) {
                    break;
                }
                byte[] bArr3 = this.f96537d;
                byte b10 = bArr3[i11];
                if ((b10 & 255) != 255) {
                    bArr3[i11] = (byte) (b10 + 1);
                    break;
                } else {
                    bArr3[i11] = 0;
                    i11--;
                }
            }
            b(this.f96536c, this.f96537d, bArr2, 0);
            if (length > 15) {
                System.arraycopy(bArr2, 0, bArr, i10, 16);
                i10 += 16;
                length -= 16;
            } else {
                System.arraycopy(bArr2, 0, bArr, i10, length);
                length = 0;
            }
        }
        a(null, this.f96536c, this.f96537d);
    }
}
