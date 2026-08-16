package Oi;

import Xi.C3363q;
import java.math.BigInteger;
import java.security.SecureRandom;

public class C2933i {

    public static final C2933i f20213a = new C2933i();

    public static final BigInteger f20214b = BigInteger.valueOf(1);

    public static final BigInteger f20215c = BigInteger.valueOf(2);

    public BigInteger a(C3363q c3363q, SecureRandom secureRandom) {
        BigInteger g10;
        BigInteger bit;
        int d10 = c3363q.d();
        if (d10 != 0) {
            int i10 = d10 >>> 2;
            do {
                bit = org.bouncycastle.util.b.f(d10, secureRandom).setBit(d10 - 1);
            } while (jk.B.i(bit) < i10);
            return bit;
        }
        BigInteger bigInteger = f20215c;
        int e10 = c3363q.e();
        BigInteger shiftLeft = e10 != 0 ? f20214b.shiftLeft(e10 - 1) : bigInteger;
        BigInteger g11 = c3363q.g();
        if (g11 == null) {
            g11 = c3363q.f();
        }
        BigInteger subtract = g11.subtract(bigInteger);
        int bitLength = subtract.bitLength() >>> 2;
        do {
            g10 = org.bouncycastle.util.b.g(shiftLeft, subtract, secureRandom);
        } while (jk.B.i(g10) < bitLength);
        return g10;
    }

    public BigInteger b(C3363q c3363q, BigInteger bigInteger) {
        return c3363q.b().modPow(bigInteger, c3363q.f());
    }
}
