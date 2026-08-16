package Ri;

import Bi.B;
import Bi.EnumC2383o;
import Bi.InterfaceC2390w;
import Bi.P;
import Bi.r;
import Xi.C3335c;
import Xi.C3358n0;
import Xi.F0;
import java.math.BigInteger;
import java.security.SecureRandom;

public class e implements B {

    public static final BigInteger f22823d = BigInteger.valueOf(0);

    public static final BigInteger f22824e = BigInteger.valueOf(1);

    public final int f22825a;

    public InterfaceC2390w f22826b;

    public SecureRandom f22827c;

    public e(int i10, InterfaceC2390w interfaceC2390w, SecureRandom secureRandom) {
        this.f22825a = i10;
        this.f22826b = interfaceC2390w;
        this.f22827c = secureRandom;
    }

    public static byte[] b(InterfaceC2390w interfaceC2390w, BigInteger bigInteger, BigInteger bigInteger2, int i10) {
        interfaceC2390w.c(new C3358n0(org.bouncycastle.util.b.b((bigInteger.bitLength() + 7) / 8, bigInteger2), null));
        byte[] bArr = new byte[i10];
        interfaceC2390w.a(bArr, 0, i10);
        return bArr;
    }

    @Override
    public P a(C3335c c3335c) {
        F0 f02 = (F0) c3335c;
        if (f02.c()) {
            throw new IllegalArgumentException("public key required for encryption");
        }
        r.a(new Hi.c("RSAKem", Hi.b.a(f02.f()), f02, EnumC2383o.ENCRYPTION));
        BigInteger f10 = f02.f();
        BigInteger d10 = f02.d();
        BigInteger g10 = org.bouncycastle.util.b.g(f22823d, f10.subtract(f22824e), this.f22827c);
        return new g(b(this.f22826b, f10, g10, this.f22825a), org.bouncycastle.util.b.b((f10.bitLength() + 7) / 8, g10.modPow(d10, f10)));
    }
}
