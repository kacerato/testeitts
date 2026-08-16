package Xi;

import java.math.BigInteger;
import java.security.SecureRandom;

public class E0 extends Bi.G {

    public BigInteger f29208d;

    public int f29209e;

    public E0(BigInteger bigInteger, SecureRandom secureRandom, int i10, int i11) {
        super(secureRandom, i10);
        if (i10 < 12) {
            throw new IllegalArgumentException("key strength too small");
        }
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("public exponent cannot be even");
        }
        this.f29208d = bigInteger;
        this.f29209e = i11;
    }

    public int c() {
        return this.f29209e;
    }

    public BigInteger d() {
        return this.f29208d;
    }
}
