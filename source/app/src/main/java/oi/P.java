package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import Xi.N0;
import java.security.SecureRandom;

public class P implements InterfaceC2372d {

    public SecureRandom f20155g;

    @Override
    public C2371c a() {
        N0 n02 = new N0(this.f20155g);
        return new C2371c((C3335c) n02.e(), (C3335c) n02);
    }

    @Override
    public void b(Bi.G g10) {
        this.f20155g = g10.a();
        Bi.r.a(new Hi.c("X25519KeyGen", 128, null, EnumC2383o.KEYGEN));
    }
}
