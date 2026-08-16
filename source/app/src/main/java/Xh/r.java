package Xh;

import hi.C13486b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class r extends AbstractC14545v implements t {

    public C13486b f28996b;

    public C13486b f28997c;

    public r(C13486b c13486b, C13486b c13486b2) {
        this.f28996b = c13486b;
        this.f28997c = c13486b2;
    }

    public static r u(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28996b);
        c14518h.a(this.f28997c);
        return new G0(c14518h);
    }

    public C13486b v() {
        return this.f28996b;
    }

    public C13486b x() {
        return this.f28997c;
    }

    public r(oh.E e10) {
        Enumeration J10 = e10.J();
        oh.E G10 = oh.E.G(((InterfaceC14516g) J10.nextElement()).r());
        InterfaceC14516g I10 = G10.I(0);
        C14549x c14549x = t.f29107h1;
        if (I10.equals(c14549x)) {
            this.f28996b = new C13486b(c14549x, q.u(G10.I(1)));
        } else {
            this.f28996b = C13486b.v(G10);
        }
        this.f28997c = C13486b.v(J10.nextElement());
    }
}
