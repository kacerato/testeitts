package Oi;

import java.math.BigInteger;
import java.security.SecureRandom;

public class C2936l {

    public static final BigInteger f20221a = BigInteger.valueOf(1);

    public static final BigInteger f20222b = BigInteger.valueOf(2);

    public static BigInteger[] a(int i10, int i11, SecureRandom secureRandom) {
        int i12 = i10 - 1;
        int i13 = i10 >>> 2;
        while (true) {
            BigInteger h10 = org.bouncycastle.util.b.h(i12, 2, secureRandom);
            BigInteger add = h10.shiftLeft(1).add(f20221a);
            if (add.isProbablePrime(i11) && (i11 <= 2 || h10.isProbablePrime(i11 - 2))) {
                if (jk.B.i(add) >= i13) {
                    return new BigInteger[]{add, h10};
                }
            }
        }
    }

    public static BigInteger b(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger modPow;
        BigInteger subtract = bigInteger.subtract(f20222b);
        do {
            BigInteger bigInteger3 = f20222b;
            modPow = org.bouncycastle.util.b.g(bigInteger3, subtract, secureRandom).modPow(bigInteger3, bigInteger);
        } while (modPow.equals(f20221a));
        return modPow;
    }
}
