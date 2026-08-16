package cl;

import Bi.B;
import Bi.P;
import Xi.C3335c;
import java.security.SecureRandom;
import pl.C15017e;

public class C4222e implements B {

    public final SecureRandom f35003a;

    public C4222e(SecureRandom secureRandom) {
        this.f35003a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        k kVar = (k) c3335c;
        C4219b a10 = kVar.d().a();
        a10.v(this.f35003a);
        byte[][] x10 = a10.x(kVar.getEncoded());
        return new C15017e(x10[0], x10[1]);
    }
}
