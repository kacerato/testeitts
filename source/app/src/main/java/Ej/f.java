package Ej;

import Dj.o;
import Fk.AbstractC2538j;
import Fk.C2539k;
import Fk.C2540l;
import Fk.L;
import Fk.T;
import Xi.C3335c;
import Xi.K;
import Xi.M;
import bi.C3889a;
import bi.InterfaceC3890b;
import jk.AbstractC13875e;
import jk.i;
import ki.l;
import oh.C14549x;

public class f extends o {
    public f(T t10) {
        super(t10);
    }

    public static T b(M m10) {
        C14549x j10 = ((K) m10.d()).j();
        i e10 = m10.e();
        if (j10.A(Zh.d.f31273H)) {
            return new T(0, C2539k.F(L.u().b(e10.f().v()).e(e10.g().v()).a()));
        }
        if (j10.A(InterfaceC3890b.f33255u)) {
            return new T(1, C2539k.F(L.u().b(e10.f().v()).e(e10.g().v()).a()));
        }
        if (j10.A(InterfaceC3890b.f33259y)) {
            return new T(2, C2540l.D(Fk.M.u().b(e10.f().v()).e(e10.g().v()).a()));
        }
        throw new IllegalArgumentException("unknown curve in public encryption key");
    }

    public C3335c c() {
        C14549x c14549x;
        l d10;
        int y10 = this.f5258a.y();
        if (y10 != 0) {
            if (y10 == 1) {
                c14549x = InterfaceC3890b.f33255u;
            } else {
                if (y10 != 2) {
                    throw new IllegalStateException("unknown key type");
                }
                c14549x = InterfaceC3890b.f33259y;
            }
            d10 = C3889a.j(c14549x);
        } else {
            c14549x = Zh.d.f31273H;
            d10 = Sh.c.d(c14549x);
        }
        AbstractC13875e v10 = d10.v();
        if (!(this.f5258a.A() instanceof AbstractC2538j)) {
            throw new IllegalStateException("extension to public verification key not supported");
        }
        AbstractC2538j abstractC2538j = (AbstractC2538j) this.f5258a.A();
        if ((abstractC2538j instanceof C2539k) || (abstractC2538j instanceof C2540l)) {
            return new M(v10.l(abstractC2538j.u()).B(), new K(c14549x, d10));
        }
        throw new IllegalStateException("unknown key type");
    }

    public f(C3335c c3335c) {
        super(b((M) c3335c));
    }
}
