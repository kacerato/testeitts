package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import Xi.C3363q;
import Xi.U;
import Xi.W;
import Xi.X;
import Xi.Y;
import java.math.BigInteger;

public class s implements InterfaceC2372d {

    public U f20241g;

    @Override
    public C2371c a() {
        C2933i c2933i = C2933i.f20213a;
        W c10 = this.f20241g.c();
        C3363q c3363q = new C3363q(c10.c(), c10.a(), null, c10.b());
        BigInteger a10 = c2933i.a(c3363q, this.f20241g.a());
        return new C2371c((C3335c) new Y(c2933i.b(c3363q, a10), c10), (C3335c) new X(a10, c10));
    }

    @Override
    public void b(Bi.G g10) {
        U u10 = (U) g10;
        this.f20241g = u10;
        Bi.r.a(new Hi.c("ElGamalKeyGen", Hi.b.a(u10.c().c()), this.f20241g.c(), EnumC2383o.KEYGEN));
    }
}
