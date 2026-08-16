package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import Xi.Q0;
import java.security.SecureRandom;

public class Q implements InterfaceC2372d {

    public SecureRandom f20156g;

    @Override
    public C2371c a() {
        Q0 q02 = new Q0(this.f20156g);
        return new C2371c((C3335c) q02.e(), (C3335c) q02);
    }

    @Override
    public void b(Bi.G g10) {
        this.f20156g = g10.a();
        Bi.r.a(new Hi.c("X448KeyGen", 224, null, EnumC2383o.KEYGEN));
    }
}
