package Ej;

import Dj.n;
import Fk.AbstractC2538j;
import Fk.C2528a;
import Fk.C2539k;
import Fk.C2540l;
import Fk.S;
import Fk.m0;
import Xi.C3335c;
import Xi.K;
import Xi.M;
import bi.C3889a;
import bi.InterfaceC3890b;
import jk.AbstractC13875e;
import jk.i;
import ki.l;
import oh.C14549x;

public class e extends n {
    public e(S s10) {
        super(s10);
    }

    public static S b(M m10) {
        C14549x j10 = ((K) m10.d()).j();
        i e10 = m10.e();
        if (j10.A(Zh.d.f31273H)) {
            return new S(m0.f7143f, new C2528a.C0133a().b(0).c(C2539k.G(e10.f().v(), e10.g().v())).a());
        }
        if (j10.A(InterfaceC3890b.f33255u)) {
            return new S(m0.f7143f, new C2528a.C0133a().b(1).c(C2539k.G(e10.f().v(), e10.g().v())).a());
        }
        throw new IllegalArgumentException("unknown curve in public encryption key");
    }

    public C3335c c() {
        C14549x c14549x;
        l d10;
        C2528a x10 = this.f5257a.x();
        int y10 = x10.y();
        if (y10 == 0) {
            c14549x = Zh.d.f31273H;
            d10 = Sh.c.d(c14549x);
        } else {
            if (y10 != 1) {
                throw new IllegalStateException("unknown key type");
            }
            c14549x = InterfaceC3890b.f33255u;
            d10 = C3889a.j(c14549x);
        }
        AbstractC13875e v10 = d10.v();
        if (!(this.f5257a.x().x() instanceof AbstractC2538j)) {
            throw new IllegalStateException("extension to public verification key not supported");
        }
        AbstractC2538j abstractC2538j = (AbstractC2538j) x10.x();
        if ((abstractC2538j instanceof C2539k) || (abstractC2538j instanceof C2540l)) {
            return new M(v10.l(abstractC2538j.u()).B(), new K(c14549x, d10));
        }
        throw new IllegalStateException("unknown key type");
    }

    public e(C3335c c3335c) {
        super(b((M) c3335c));
    }
}
