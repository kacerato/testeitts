package org.bouncycastle.crypto.util;

import Bi.C2378j;
import Bi.G;
import Oi.C2930f;
import Oi.C2931g;
import java.security.SecureRandom;
import oh.C14549x;
import wj.InterfaceC16012a;

public class d {
    public static C2378j a(SecureRandom secureRandom, int i10) {
        C2378j c2378j = new C2378j();
        c2378j.b(new G(secureRandom, i10));
        return c2378j;
    }

    public static C2378j b(C14549x c14549x, SecureRandom secureRandom) throws IllegalArgumentException {
        if (Sh.d.f23373y.A(c14549x)) {
            return a(secureRandom, 128);
        }
        if (Sh.d.f23314H.A(c14549x)) {
            return a(secureRandom, 192);
        }
        if (Sh.d.f23323Q.A(c14549x)) {
            return a(secureRandom, 256);
        }
        if (Sh.d.f23309C.A(c14549x)) {
            return a(secureRandom, 128);
        }
        if (Sh.d.f23318L.A(c14549x)) {
            return a(secureRandom, 192);
        }
        if (Sh.d.f23327U.A(c14549x)) {
            return a(secureRandom, 256);
        }
        if (Sh.d.f23310D.A(c14549x)) {
            return a(secureRandom, 128);
        }
        if (Sh.d.f23319M.A(c14549x)) {
            return a(secureRandom, 192);
        }
        if (Sh.d.f23328V.A(c14549x)) {
            return a(secureRandom, 256);
        }
        if (Xh.t.f29123n1.A(c14549x)) {
            C2931g c2931g = new C2931g();
            c2931g.b(new G(secureRandom, 192));
            return c2931g;
        }
        if (Aj.a.f827a.A(c14549x)) {
            return a(secureRandom, 128);
        }
        if (Aj.a.f828b.A(c14549x)) {
            return a(secureRandom, 192);
        }
        if (Aj.a.f829c.A(c14549x)) {
            return a(secureRandom, 256);
        }
        if (!InterfaceC16012a.f127584a.A(c14549x) && !a.f101044b.A(c14549x)) {
            if (Bj.b.f1907e.A(c14549x)) {
                C2930f c2930f = new C2930f();
                c2930f.b(new G(secureRandom, 64));
                return c2930f;
            }
            if (!Xh.t.f29129p1.A(c14549x) && !Xh.t.f29126o1.A(c14549x)) {
                throw new IllegalArgumentException("cannot recognise cipher: " + ((Object) c14549x));
            }
            return a(secureRandom, 128);
        }
        return a(secureRandom, 128);
    }
}
