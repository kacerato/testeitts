package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import Xi.E0;
import Xi.F0;
import Xi.G0;
import android.bluetooth.le.AdvertisingSetParameters;
import ik.AbstractC13753a;
import java.math.BigInteger;

public class M implements InterfaceC2372d {

    public static final BigInteger f20153h = BigInteger.valueOf(1);

    public E0 f20154g;

    public static int d(int i10, int i11) {
        if (i10 >= 1536) {
            if (i11 <= 100) {
                return 3;
            }
            if (i11 <= 128) {
                return 4;
            }
            return 4 + ((i11 + AdvertisingSetParameters.TX_POWER_MIN) / 2);
        }
        if (i10 >= 1024) {
            if (i11 <= 100) {
                return 4;
            }
            if (i11 <= 112) {
                return 5;
            }
            return ((i11 - 111) / 2) + 5;
        }
        if (i10 < 512) {
            if (i11 <= 80) {
                return 40;
            }
            return 40 + ((i11 - 79) / 2);
        }
        if (i11 <= 80) {
            return 5;
        }
        if (i11 <= 100) {
            return 7;
        }
        return 7 + ((i11 - 99) / 2);
    }

    @Override
    public C2371c a() {
        BigInteger c10;
        BigInteger c11;
        BigInteger multiply;
        BigInteger bigInteger;
        M m10 = this;
        int b10 = m10.f20154g.b();
        int i10 = (b10 + 1) / 2;
        int i11 = b10 - i10;
        int i12 = b10 / 2;
        int i13 = i12 - 100;
        int i14 = b10 / 3;
        if (i13 < i14) {
            i13 = i14;
        }
        int i15 = b10 >> 2;
        BigInteger pow = BigInteger.valueOf(2L).pow(i12);
        BigInteger bigInteger2 = f20153h;
        BigInteger shiftLeft = bigInteger2.shiftLeft(b10 - 1);
        BigInteger shiftLeft2 = bigInteger2.shiftLeft(i13);
        C2371c c2371c = null;
        boolean z10 = false;
        while (!z10) {
            BigInteger d10 = m10.f20154g.d();
            do {
                c10 = m10.c(i10, d10, shiftLeft);
                while (true) {
                    c11 = m10.c(i11, d10, shiftLeft);
                    BigInteger abs = c11.subtract(c10).abs();
                    if (abs.bitLength() >= i13 && abs.compareTo(shiftLeft2) > 0) {
                        multiply = c10.multiply(c11);
                        if (multiply.bitLength() == b10) {
                            break;
                        }
                        c10 = c10.max(c11);
                    } else {
                        m10 = this;
                        b10 = b10;
                    }
                }
            } while (jk.B.i(multiply) < i15);
            if (c10.compareTo(c11) < 0) {
                bigInteger = c10;
                c10 = c11;
            } else {
                bigInteger = c11;
            }
            BigInteger bigInteger3 = f20153h;
            BigInteger subtract = c10.subtract(bigInteger3);
            BigInteger subtract2 = bigInteger.subtract(bigInteger3);
            int i16 = b10;
            BigInteger modInverse = d10.modInverse(subtract.divide(subtract.gcd(subtract2)).multiply(subtract2));
            if (modInverse.compareTo(pow) > 0) {
                c2371c = new C2371c((C3335c) new F0(false, multiply, d10, true), (C3335c) new G0(multiply, d10, modInverse, c10, bigInteger, modInverse.remainder(subtract), modInverse.remainder(subtract2), org.bouncycastle.util.b.n(c10, bigInteger), true));
                z10 = true;
            }
            m10 = this;
            b10 = i16;
        }
        return c2371c;
    }

    @Override
    public void b(Bi.G g10) {
        this.f20154g = (E0) g10;
        Bi.r.a(new Hi.c("RSAKeyGen", Hi.b.c(g10.b()), null, EnumC2383o.KEYGEN));
    }

    public BigInteger c(int i10, BigInteger bigInteger, BigInteger bigInteger2) {
        for (int i11 = 0; i11 != i10 * 5; i11++) {
            BigInteger h10 = org.bouncycastle.util.b.h(i10, 1, this.f20154g.a());
            BigInteger mod = h10.mod(bigInteger);
            BigInteger bigInteger3 = f20153h;
            if (!mod.equals(bigInteger3) && h10.multiply(h10).compareTo(bigInteger2) >= 0 && e(h10) && bigInteger.gcd(h10.subtract(bigInteger3)).equals(bigInteger3)) {
                return h10;
            }
        }
        throw new IllegalStateException("unable to generate prime number for RSA key");
    }

    public boolean e(BigInteger bigInteger) {
        return !AbstractC13753a.e(bigInteger) && AbstractC13753a.l(bigInteger, this.f20154g.a(), d(bigInteger.bitLength(), this.f20154g.c()));
    }
}
