package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import Xi.C3355m;
import Xi.C3363q;
import Xi.C3366s;
import java.math.BigInteger;

public class C2932h implements InterfaceC2372d {

    public C3355m f20212g;

    @Override
    public C2371c a() {
        C2933i c2933i = C2933i.f20213a;
        C3363q c10 = this.f20212g.c();
        BigInteger a10 = c2933i.a(c10, this.f20212g.a());
        return new C2371c((C3335c) new C3366s(c2933i.b(c10, a10), c10), (C3335c) new Xi.r(a10, c10));
    }

    @Override
    public void b(Bi.G g10) {
        C3355m c3355m = (C3355m) g10;
        this.f20212g = c3355m;
        Bi.r.a(new Hi.c("DHBasicKeyGen", Hi.b.a(c3355m.c().f()), this.f20212g.c(), EnumC2383o.KEYGEN));
    }
}
