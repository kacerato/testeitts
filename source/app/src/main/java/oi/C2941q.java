package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class C2941q implements InterfaceC2372d {

    public SecureRandom f20239g;

    @Override
    public C2371c a() {
        Xi.O o10 = new Xi.O(this.f20239g);
        return new C2371c((C3335c) o10.e(), (C3335c) o10);
    }

    @Override
    public void b(Bi.G g10) {
        this.f20239g = g10.a();
        Bi.r.a(new Hi.c("Ed25519KeyGen", 128, null, EnumC2383o.KEYGEN));
    }
}
