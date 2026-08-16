package Xi;

import ik.AbstractC13753a;
import java.math.BigInteger;
import org.bouncycastle.util.b;

public class F0 extends C3335c {

    public static final b.a f29212e = new b.a();

    public static final BigInteger f29213f = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);

    public BigInteger f29214c;

    public BigInteger f29215d;

    public F0(boolean z10, BigInteger bigInteger, BigInteger bigInteger2) {
        this(z10, bigInteger, bigInteger2, false);
    }

    public static int e(int i10) {
        if (i10 >= 1536) {
            return 3;
        }
        if (i10 >= 1024) {
            return 4;
        }
        return i10 >= 512 ? 7 : 50;
    }

    public static boolean g(BigInteger bigInteger) {
        BigInteger bigInteger2 = f29213f;
        if (bigInteger.bitLength() < bigInteger2.bitLength()) {
            bigInteger2 = bigInteger;
            bigInteger = bigInteger2;
        }
        return !org.bouncycastle.util.b.q(bigInteger, bigInteger2);
    }

    public static BigInteger h(BigInteger bigInteger, boolean z10) {
        if (!z10) {
            if ((bigInteger.intValue() & 1) == 0) {
                throw new IllegalArgumentException("RSA modulus is even");
            }
            if (org.bouncycastle.util.q.f("org.bouncycastle.rsa.allow_unsafe_mod")) {
                return bigInteger;
            }
            if (org.bouncycastle.util.q.b("org.bouncycastle.rsa.max_size", 16384) < bigInteger.bitLength()) {
                throw new IllegalArgumentException("RSA modulus out of range");
            }
            if (g(bigInteger)) {
                throw new IllegalArgumentException("RSA modulus has a small prime factor");
            }
            int b10 = org.bouncycastle.util.q.b("org.bouncycastle.rsa.max_mr_tests", e(bigInteger.bitLength() / 2));
            if (b10 > 0 && !AbstractC13753a.b(bigInteger, Bi.r.h(), b10).f()) {
                throw new IllegalArgumentException("RSA modulus is not composite");
            }
        }
        f29212e.a(bigInteger);
        return bigInteger;
    }

    public BigInteger d() {
        return this.f29215d;
    }

    public BigInteger f() {
        return this.f29214c;
    }

    public F0(boolean z10, BigInteger bigInteger, BigInteger bigInteger2, boolean z11) {
        super(z10);
        if (!z10 && (bigInteger2.intValue() & 1) == 0) {
            throw new IllegalArgumentException("RSA publicExponent is even");
        }
        this.f29214c = f29212e.c(bigInteger) ? bigInteger : h(bigInteger, z11);
        this.f29215d = bigInteger2;
    }
}
