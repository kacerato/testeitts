package th;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.G0;

public class C15445v extends AbstractC14545v {

    public final C13486b f117636b;

    public final AbstractC14551y f117637c;

    public C15445v(C13486b c13486b, AbstractC14551y abstractC14551y) {
        this.f117636b = c13486b;
        this.f117637c = abstractC14551y;
    }

    public static C15445v v(Object obj) {
        if (obj instanceof C15445v) {
            return (C15445v) obj;
        }
        if (obj != null) {
            return new C15445v(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f117636b);
        c14518h.a(this.f117637c);
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f117637c;
    }

    public C13486b x() {
        return this.f117636b;
    }

    public C15445v(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("sequence size should 2");
        }
        this.f117636b = C13486b.v(e10.I(0));
        this.f117637c = AbstractC14551y.F(e10.I(1));
    }
}
