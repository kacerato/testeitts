package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import Xi.C3341f;
import Xi.C3345h;
import Xi.C3347i;
import Xi.C3349j;
import java.math.BigInteger;
import java.security.SecureRandom;

public class C2928d implements InterfaceC2372d {

    public static final BigInteger f20204h = BigInteger.valueOf(1);

    public C3341f f20205g;

    @Override
    public C2371c a() {
        C3345h c10 = this.f20205g.c();
        C3347i d10 = d(this.f20205g.a(), c10);
        C3349j c11 = c(c10, d10);
        d10.k(c11);
        return new C2371c((C3335c) c11, (C3335c) d10);
    }

    @Override
    public void b(Bi.G g10) {
        C3341f c3341f = (C3341f) g10;
        this.f20205g = c3341f;
        Bi.r.a(new Hi.c("CramerShoupKeyGen", Hi.b.a(c3341f.c().d()), this.f20205g.c(), EnumC2383o.KEYGEN));
    }

    public final C3349j c(C3345h c3345h, C3347i c3347i) {
        BigInteger a10 = c3345h.a();
        BigInteger b10 = c3345h.b();
        BigInteger d10 = c3345h.d();
        return new C3349j(c3345h, a10.modPow(c3347i.f(), d10).multiply(b10.modPow(c3347i.g(), d10)), a10.modPow(c3347i.h(), d10).multiply(b10.modPow(c3347i.i(), d10)), a10.modPow(c3347i.j(), d10));
    }

    public final C3347i d(SecureRandom secureRandom, C3345h c3345h) {
        BigInteger d10 = c3345h.d();
        return new C3347i(c3345h, e(d10, secureRandom), e(d10, secureRandom), e(d10, secureRandom), e(d10, secureRandom), e(d10, secureRandom));
    }

    public final BigInteger e(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger bigInteger2 = f20204h;
        return org.bouncycastle.util.b.g(bigInteger2, bigInteger.subtract(bigInteger2), secureRandom);
    }
}
