package sh;

import fi.C13228d;
import hi.C13503o;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.G0;
import oh.M0;
import oh.Q;

public class F extends AbstractC14545v {

    public final C13228d f109484b;

    public final C14539s f109485c;

    public final C13503o f109486d;

    public C14530n f109487e;

    public AbstractC14551y f109488f;

    public Q f109489g;

    public F(C13228d c13228d, C14539s c14539s, C13503o c13503o, C14530n c14530n, AbstractC14551y abstractC14551y, Q q10) {
        this.f109484b = c13228d;
        this.f109485c = c14539s;
        this.f109486d = c13503o;
        this.f109487e = c14530n;
        this.f109488f = abstractC14551y;
        this.f109489g = q10;
    }

    public static F w(Object obj) {
        if (obj instanceof F) {
            return (F) obj;
        }
        if (obj != null) {
            return new F(oh.E.G(obj));
        }
        return null;
    }

    public AbstractC14551y A() {
        return this.f109488f;
    }

    public C13503o B() {
        return this.f109486d;
    }

    public BigInteger C() {
        return this.f109485c.I();
    }

    public void D(Q q10) {
        this.f109489g = q10;
    }

    public void E(C14530n c14530n) {
        this.f109487e = c14530n;
    }

    public void F(AbstractC14551y abstractC14551y) {
        this.f109488f = abstractC14551y;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(6);
        c14518h.a(this.f109484b);
        c14518h.a(this.f109485c);
        c14518h.a(this.f109486d);
        C14530n c14530n = this.f109487e;
        if (c14530n != null) {
            c14518h.a(c14530n);
        }
        AbstractC14551y abstractC14551y = this.f109488f;
        if (abstractC14551y != null) {
            c14518h.a(abstractC14551y);
        }
        Q q10 = this.f109489g;
        if (q10 != null) {
            c14518h.a(q10);
        }
        return new G0(c14518h);
    }

    public M0 u() {
        Q q10 = this.f109489g;
        return (q10 == null || (q10 instanceof M0)) ? (M0) q10 : new M0(this.f109489g.getString());
    }

    public Q v() {
        return this.f109489g;
    }

    public C14530n x() {
        return this.f109487e;
    }

    public C13228d y() {
        return this.f109484b;
    }

    public byte[] z() {
        AbstractC14551y abstractC14551y = this.f109488f;
        if (abstractC14551y != null) {
            return org.bouncycastle.util.a.p(abstractC14551y.H());
        }
        return null;
    }

    public F(oh.E e10) {
        int i10 = 3;
        if (e10.size() < 3 || e10.size() > 6) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109484b = C13228d.x(e10.I(0));
        this.f109485c = C14539s.F(e10.I(1));
        this.f109486d = C13503o.u(e10.I(2));
        if (e10.size() > 3 && (e10.I(3).r() instanceof C14530n)) {
            this.f109487e = C14530n.J(e10.I(3));
            i10 = 4;
        }
        if (e10.size() > i10 && (e10.I(i10).r() instanceof AbstractC14551y)) {
            this.f109488f = AbstractC14551y.F(e10.I(i10));
            i10++;
        }
        if (e10.size() <= i10 || !(e10.I(i10).r() instanceof Q)) {
            return;
        }
        this.f109489g = Q.F(e10.I(i10));
    }
}
