package oi;

import org.bouncycastle.cms.C14683y;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.E0;
import th.C15426b;
import th.C15436l;
import uh.C15624o;

public class C14563i {

    public final C15436l f99032a;

    public C14563i(C15436l c15436l) {
        this.f99032a = c15436l;
    }

    public C15426b a() throws CMSException {
        if (d()) {
            throw new IllegalStateException("plaintext certificate asked for, none found");
        }
        return this.f99032a.v().u().u();
    }

    public C15426b b(E0 e02) throws CMSException {
        return C15426b.u(c().e().b().iterator().next().a(e02));
    }

    public C14683y c() throws CMSException {
        if (!d()) {
            throw new IllegalStateException("encrypted certificate asked for, none found");
        }
        C14683y c14683y = new C14683y(new C15624o(Xh.t.f29023J1, this.f99032a.v().u().v().v()));
        if (c14683y.e().size() == 1) {
            return c14683y;
        }
        throw new IllegalStateException("data encrypted for more than one recipient");
    }

    public boolean d() {
        return this.f99032a.v().u().x();
    }

    public C15436l e() {
        return this.f99032a;
    }
}
