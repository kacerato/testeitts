package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.math.BigInteger;
import java.security.SecureRandom;
import jk.InterfaceC13874d;

public class C2940p implements InterfaceC2372d, InterfaceC13874d {

    public final String f20236g;

    public Xi.G f20237h;

    public SecureRandom f20238i;

    public C2940p() {
        this("ECKeyGen");
    }

    @Override
    public C2371c a() {
        BigInteger e10 = this.f20237h.e();
        int bitLength = e10.bitLength();
        int i10 = bitLength >>> 2;
        while (true) {
            BigInteger f10 = org.bouncycastle.util.b.f(bitLength, this.f20238i);
            if (!d(f10, e10) && jk.B.i(f10) >= i10) {
                return new C2371c((C3335c) new Xi.M(c().a(this.f20237h.b(), f10), this.f20237h), (C3335c) new Xi.L(f10, this.f20237h));
            }
        }
    }

    @Override
    public void b(Bi.G g10) {
        Xi.I i10 = (Xi.I) g10;
        this.f20238i = i10.a();
        Xi.G c10 = i10.c();
        this.f20237h = c10;
        Bi.r.a(new Hi.c(this.f20236g, Hi.b.b(c10.a()), i10.c(), EnumC2383o.KEYGEN));
    }

    public jk.h c() {
        return new jk.k();
    }

    public boolean d(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.compareTo(InterfaceC13874d.f93854b) < 0 || bigInteger.compareTo(bigInteger2) >= 0;
    }

    public C2940p(String str) {
        this.f20236g = str;
    }
}
