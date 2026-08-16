package Di;

import java.math.BigInteger;

public class b {

    public final BigInteger f5216a;

    public final BigInteger f5217b;

    public final BigInteger f5218c;

    public b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, false);
    }

    public BigInteger a() {
        return this.f5218c;
    }

    public BigInteger b() {
        return this.f5216a;
    }

    public BigInteger c() {
        return this.f5217b;
    }

    public b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, boolean z10) {
        g.y(bigInteger, com.itsmagic.engine.Engines.Engine.Animation.a.f72594b);
        g.y(bigInteger2, "q");
        g.y(bigInteger3, "g");
        if (!z10) {
            BigInteger bigInteger4 = g.f5233b;
            if (!bigInteger.subtract(bigInteger4).mod(bigInteger2).equals(g.f5232a)) {
                throw new IllegalArgumentException("p-1 must be evenly divisible by q");
            }
            if (bigInteger3.compareTo(BigInteger.valueOf(2L)) == -1 || bigInteger3.compareTo(bigInteger.subtract(bigInteger4)) == 1) {
                throw new IllegalArgumentException("g must be in [2, p-1]");
            }
            if (!bigInteger3.modPow(bigInteger2, bigInteger).equals(bigInteger4)) {
                throw new IllegalArgumentException("g^q mod p must equal 1");
            }
            if (!bigInteger.isProbablePrime(20)) {
                throw new IllegalArgumentException("p must be prime");
            }
            if (!bigInteger2.isProbablePrime(20)) {
                throw new IllegalArgumentException("q must be prime");
            }
        }
        this.f5216a = bigInteger;
        this.f5217b = bigInteger2;
        this.f5218c = bigInteger3;
    }
}
