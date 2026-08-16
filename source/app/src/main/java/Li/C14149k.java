package li;

import Qk.InterfaceC3013f;
import fi.C13228d;
import hi.h0;
import hi.o0;
import hi.q0;
import java.math.BigInteger;
import java.util.Date;
import java.util.Locale;
import oh.C14539s;

public class C14149k {

    public q0 f96482a;

    public C14149k(C13228d c13228d, BigInteger bigInteger, o0 o0Var, o0 o0Var2, C13228d c13228d2, h0 h0Var) {
        if (c13228d == null) {
            throw new IllegalArgumentException("issuer must not be null");
        }
        if (h0Var == null) {
            throw new IllegalArgumentException("publicKeyInfo must not be null");
        }
        q0 q0Var = new q0();
        this.f96482a = q0Var;
        q0Var.f(new C14539s(bigInteger));
        this.f96482a.d(c13228d);
        this.f96482a.h(o0Var);
        this.f96482a.b(o0Var2);
        this.f96482a.j(c13228d2);
        this.f96482a.l(h0Var);
    }

    public C14146h a(InterfaceC3013f interfaceC3013f) {
        this.f96482a.g(interfaceC3013f.a());
        return C14141c.i(interfaceC3013f, this.f96482a.a());
    }

    public C14149k(C13228d c13228d, BigInteger bigInteger, Date date, Date date2, C13228d c13228d2, h0 h0Var) {
        this(c13228d, bigInteger, new o0(date), new o0(date2), c13228d2, h0Var);
    }

    public C14149k(C13228d c13228d, BigInteger bigInteger, Date date, Date date2, Locale locale, C13228d c13228d2, h0 h0Var) {
        this(c13228d, bigInteger, new o0(date, locale), new o0(date2, locale), c13228d2, h0Var);
    }
}
