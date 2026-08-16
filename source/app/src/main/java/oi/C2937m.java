package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import Xi.C3372w;
import Xi.C3375z;
import java.math.BigInteger;
import java.security.SecureRandom;

public class C2937m implements InterfaceC2372d {

    public static final BigInteger f20223h = BigInteger.valueOf(1);

    public C3372w f20224g;

    public static BigInteger c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger2.modPow(bigInteger3, bigInteger);
    }

    public static BigInteger d(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger g10;
        int bitLength = bigInteger.bitLength() >>> 2;
        do {
            BigInteger bigInteger2 = f20223h;
            g10 = org.bouncycastle.util.b.g(bigInteger2, bigInteger.subtract(bigInteger2), secureRandom);
        } while (jk.B.i(g10) < bitLength);
        return g10;
    }

    @Override
    public C2371c a() {
        C3375z c10 = this.f20224g.c();
        BigInteger d10 = d(c10.c(), this.f20224g.a());
        return new C2371c((C3335c) new Xi.B(c(c10.b(), c10.a(), d10), c10), (C3335c) new Xi.A(d10, c10));
    }

    @Override
    public void b(Bi.G g10) {
        C3372w c3372w = (C3372w) g10;
        this.f20224g = c3372w;
        Bi.r.a(new Hi.c("DSAKeyGen", Hi.b.a(c3372w.c().b()), this.f20224g.c(), EnumC2383o.KEYGEN));
    }
}
