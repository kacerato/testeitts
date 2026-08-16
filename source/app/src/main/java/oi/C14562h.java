package oi;

import Qk.InterfaceC3013f;
import fi.C13228d;
import hi.C13480D;
import hi.C13481E;
import hi.h0;
import hi.o0;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import oh.A0;
import oh.AbstractC14541t;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import org.bouncycastle.cert.CertIOException;
import org.bouncycastle.cert.crmf.CRMFException;
import wh.C16003a;

public class C14562h {

    public final BigInteger f99019a;

    public InterfaceC3013f f99023e;

    public C14571q f99024f;

    public char[] f99025g;

    public C13481E f99026h;

    public wh.r f99028j;

    public AbstractC14541t f99029k;

    public wh.q f99030l;

    public int f99027i = 2;

    public C13480D f99020b = new C13480D();

    public wh.h f99021c = new wh.h();

    public List f99022d = new ArrayList();

    public C16003a[] f99031m = null;

    public C14562h(BigInteger bigInteger) {
        this.f99019a = bigInteger;
    }

    public C14562h a(InterfaceC14565k interfaceC14565k) {
        this.f99022d.add(interfaceC14565k);
        return this;
    }

    public C14562h b(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws CertIOException {
        C14556b.a(this.f99020b, c14549x, z10, interfaceC14516g);
        return this;
    }

    public C14562h c(C14549x c14549x, boolean z10, byte[] bArr) {
        this.f99020b.d(c14549x, z10, bArr);
        return this;
    }

    public C14561g d() throws CRMFException {
        wh.u uVar;
        C14575u c14575u;
        C14518h c14518h = new C14518h(3);
        c14518h.a(new C14539s(this.f99019a));
        if (!this.f99020b.h()) {
            this.f99021c.c(this.f99020b.e());
        }
        c14518h.a(this.f99021c.b());
        if (!this.f99022d.isEmpty()) {
            C14518h c14518h2 = new C14518h();
            for (InterfaceC14565k interfaceC14565k : this.f99022d) {
                c14518h2.a(new C16003a(interfaceC14565k.getType(), interfaceC14565k.getValue()));
            }
            c14518h.a(new G0(c14518h2));
        }
        wh.f y10 = wh.f.y(new G0(c14518h));
        if (this.f99023e != null) {
            wh.g v10 = y10.v();
            if (v10.C() == null || v10.z() == null) {
                C14575u c14575u2 = new C14575u(y10.v().z());
                C13481E c13481e = this.f99026h;
                if (c13481e != null) {
                    c14575u2.c(c13481e);
                } else {
                    c14575u2.b(this.f99024f, this.f99025g);
                }
                c14575u = c14575u2;
            } else {
                c14575u = new C14575u(y10);
            }
            uVar = new wh.u(c14575u.a(this.f99023e));
        } else {
            wh.r rVar = this.f99028j;
            if (rVar != null) {
                uVar = new wh.u(this.f99027i, rVar);
            } else {
                wh.q qVar = this.f99030l;
                uVar = qVar != null ? new wh.u(3, new wh.r(qVar)) : this.f99029k != null ? new wh.u() : new wh.u();
            }
        }
        return new C14561g(new wh.e(y10, uVar, this.f99031m));
    }

    public final o0 e(Date date) {
        if (date != null) {
            return new o0(date);
        }
        return null;
    }

    public C14562h f(C14571q c14571q, char[] cArr) {
        this.f99024f = c14571q;
        this.f99025g = cArr;
        return this;
    }

    public C14562h g(C13228d c13228d) {
        return h(new C13481E(c13228d));
    }

    public C14562h h(C13481E c13481e) {
        this.f99026h = c13481e;
        return this;
    }

    public C14562h i(C13228d c13228d) {
        if (c13228d != null) {
            this.f99021c.e(c13228d);
        }
        return this;
    }

    public C14562h j(wh.q qVar) {
        if (this.f99023e != null || this.f99029k != null || this.f99028j != null) {
            throw new IllegalStateException("only one proof of possession allowed");
        }
        this.f99030l = qVar;
        return this;
    }

    public C14562h k() {
        if (this.f99023e != null || this.f99028j != null) {
            throw new IllegalStateException("only one proof of possession allowed");
        }
        this.f99029k = A0.f98776c;
        return this;
    }

    public C14562h l(InterfaceC3013f interfaceC3013f) {
        if (this.f99028j != null || this.f99029k != null || this.f99030l != null) {
            throw new IllegalStateException("only one proof of possession allowed");
        }
        this.f99023e = interfaceC3013f;
        return this;
    }

    public C14562h m(int i10, wh.w wVar) {
        if (this.f99023e != null || this.f99029k != null || this.f99030l != null) {
            throw new IllegalStateException("only one proof of possession allowed");
        }
        if (i10 != 2 && i10 != 3) {
            throw new IllegalArgumentException("type must be ProofOfPossession.TYPE_KEY_ENCIPHERMENT or ProofOfPossession.TYPE_KEY_AGREEMENT");
        }
        this.f99027i = i10;
        this.f99028j = new wh.r(wVar);
        return this;
    }

    public C14562h n(wh.w wVar) {
        if (this.f99023e != null || this.f99029k != null || this.f99030l != null) {
            throw new IllegalStateException("only one proof of possession allowed");
        }
        this.f99027i = 2;
        this.f99028j = new wh.r(wVar);
        return this;
    }

    public C14562h o(h0 h0Var) {
        if (h0Var != null) {
            this.f99021c.g(h0Var);
        }
        return this;
    }

    public C14562h p(C16003a[] c16003aArr) {
        this.f99031m = c16003aArr;
        return this;
    }

    public C14562h q(BigInteger bigInteger) {
        if (bigInteger != null) {
            this.f99021c.h(new C14539s(bigInteger));
        }
        return this;
    }

    public C14562h r(C14539s c14539s) {
        if (c14539s != null) {
            this.f99021c.h(c14539s);
        }
        return this;
    }

    public C14562h s(C13228d c13228d) {
        if (c13228d != null) {
            this.f99021c.j(c13228d);
        }
        return this;
    }

    public C14562h t(Date date, Date date2) {
        this.f99021c.l(new wh.n(e(date), e(date2)));
        return this;
    }
}
