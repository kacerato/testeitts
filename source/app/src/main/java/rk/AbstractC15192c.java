package rk;

import java.math.BigInteger;

public abstract class AbstractC15192c {

    public static final InterfaceC15191b f109077a = new C15197h(BigInteger.valueOf(2));

    public static final InterfaceC15191b f109078b = new C15197h(BigInteger.valueOf(3));

    public static InterfaceC15196g a(int[] iArr) {
        if (iArr[0] != 0) {
            throw new IllegalArgumentException("Irreducible polynomials in GF(2) must have constant term");
        }
        for (int i10 = 1; i10 < iArr.length; i10++) {
            if (iArr[i10] <= iArr[i10 - 1]) {
                throw new IllegalArgumentException("Polynomial exponents must be monotonically increasing");
            }
        }
        return new C15194e(f109077a, new C15193d(iArr));
    }

    public static InterfaceC15191b b(BigInteger bigInteger) {
        int bitLength = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || bitLength < 2) {
            throw new IllegalArgumentException("'characteristic' must be >= 2");
        }
        if (bitLength < 3) {
            int l10 = org.bouncycastle.util.b.l(bigInteger);
            if (l10 == 2) {
                return f109077a;
            }
            if (l10 == 3) {
                return f109078b;
            }
        }
        return new C15197h(bigInteger);
    }
}
