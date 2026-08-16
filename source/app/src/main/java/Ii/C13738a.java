package ii;

import hi.C13486b;
import java.util.Enumeration;
import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.C14554z0;
import oh.E;
import oh.G0;

public class C13738a extends AbstractC14545v {

    public C13745h f92270b;

    public C13486b f92271c;

    public AbstractC14551y f92272d;

    public AbstractC14536q f92273e;

    public C13738a(C13745h c13745h, C13486b c13486b, AbstractC14551y abstractC14551y) {
        this.f92270b = c13745h;
        this.f92271c = c13486b;
        this.f92272d = abstractC14551y;
        this.f92273e = null;
    }

    public static C13738a w(Object obj) {
        if (obj instanceof C13738a) {
            return (C13738a) obj;
        }
        if (obj != null) {
            return new C13738a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f92270b);
        c14518h.a(this.f92271c);
        c14518h.a(this.f92272d);
        AbstractC14536q abstractC14536q = this.f92273e;
        if (abstractC14536q != null) {
            c14518h.a(abstractC14536q);
        }
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f92272d;
    }

    public C13486b v() {
        return this.f92271c;
    }

    public C14554z0 x() {
        AbstractC14536q abstractC14536q = this.f92273e;
        return (abstractC14536q == null || (abstractC14536q instanceof C14554z0)) ? (C14554z0) abstractC14536q : new C14554z0(this.f92273e.getString(), false);
    }

    public AbstractC14536q y() {
        return this.f92273e;
    }

    public C13745h z() {
        return this.f92270b;
    }

    public C13738a(C13745h c13745h, C13486b c13486b, AbstractC14551y abstractC14551y, AbstractC14536q abstractC14536q) {
        this.f92270b = c13745h;
        this.f92271c = c13486b;
        this.f92272d = abstractC14551y;
        this.f92273e = abstractC14536q;
    }

    public C13738a(E e10) {
        Enumeration J10 = e10.J();
        this.f92270b = C13745h.v(J10.nextElement());
        this.f92271c = C13486b.v(J10.nextElement());
        this.f92272d = AbstractC14551y.F(J10.nextElement());
        if (J10.hasMoreElements()) {
            this.f92273e = AbstractC14536q.F(J10.nextElement());
        }
    }
}
