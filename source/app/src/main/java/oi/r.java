package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import Xi.S;
import java.security.SecureRandom;

public class r implements InterfaceC2372d {

    public SecureRandom f20240g;

    @Override
    public C2371c a() {
        S s10 = new S(this.f20240g);
        return new C2371c((C3335c) s10.e(), (C3335c) s10);
    }

    @Override
    public void b(Bi.G g10) {
        this.f20240g = g10.a();
        Bi.r.a(new Hi.c("Ed448KeyGen", 224, null, EnumC2383o.KEYGEN));
    }
}
