package bj;

import java.math.BigInteger;
import java.security.SecureRandom;

public class x implements c {

    public static final BigInteger f33404c = BigInteger.valueOf(0);

    public BigInteger f33405a;

    public SecureRandom f33406b;

    @Override
    public void a(BigInteger bigInteger, SecureRandom secureRandom) {
        this.f33405a = bigInteger;
        this.f33406b = secureRandom;
    }

    @Override
    public BigInteger b() {
        int bitLength = this.f33405a.bitLength();
        while (true) {
            BigInteger f10 = org.bouncycastle.util.b.f(bitLength, this.f33406b);
            if (!f10.equals(f33404c) && f10.compareTo(this.f33405a) < 0) {
                return f10;
            }
        }
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public void d(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        throw new IllegalStateException("Operation not supported");
    }
}
