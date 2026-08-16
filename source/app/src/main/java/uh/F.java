package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class F extends AbstractC14545v {

    public C14539s f120575b;

    public P f120576c;

    public C13486b f120577d;

    public AbstractC14551y f120578e;

    public F(oh.E e10) {
        this.f120575b = (C14539s) e10.I(0);
        this.f120576c = P.v(e10.I(1));
        this.f120577d = C13486b.v(e10.I(2));
        this.f120578e = (AbstractC14551y) e10.I(3);
    }

    public static F v(Object obj) {
        if (obj instanceof F) {
            return (F) obj;
        }
        if (obj != null) {
            return new F(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f120575b);
        c14518h.a(this.f120576c);
        c14518h.a(this.f120577d);
        c14518h.a(this.f120578e);
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f120578e;
    }

    public C13486b x() {
        return this.f120577d;
    }

    public P y() {
        return this.f120576c;
    }

    public C14539s z() {
        return this.f120575b;
    }

    public F(P p10, C13486b c13486b, AbstractC14551y abstractC14551y) {
        this.f120575b = p10.r() instanceof oh.M ? new C14539s(2L) : new C14539s(0L);
        this.f120576c = p10;
        this.f120577d = c13486b;
        this.f120578e = abstractC14551y;
    }
}
