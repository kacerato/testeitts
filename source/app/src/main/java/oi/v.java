package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3332a0;
import Xi.C3335c;
import Xi.C3336c0;
import Xi.C3338d0;
import Xi.C3340e0;
import java.math.BigInteger;
import java.security.SecureRandom;

public class v implements InterfaceC2372d {

    public C3332a0 f20247g;

    @Override
    public C2371c a() {
        C3336c0 c10 = this.f20247g.c();
        SecureRandom a10 = this.f20247g.a();
        BigInteger c11 = c10.c();
        BigInteger b10 = c10.b();
        BigInteger a11 = c10.a();
        while (true) {
            BigInteger f10 = org.bouncycastle.util.b.f(256, a10);
            if (f10.signum() >= 1 && f10.compareTo(c11) < 0 && jk.B.i(f10) >= 64) {
                return new C2371c((C3335c) new C3340e0(a11.modPow(f10, b10), c10), (C3335c) new C3338d0(f10, c10));
            }
        }
    }

    @Override
    public void b(Bi.G g10) {
        C3332a0 c3332a0 = (C3332a0) g10;
        this.f20247g = c3332a0;
        Bi.r.a(new Hi.c("GOST3410KeyGen", Hi.b.a(c3332a0.c().b()), this.f20247g.c(), EnumC2383o.KEYGEN));
    }
}
