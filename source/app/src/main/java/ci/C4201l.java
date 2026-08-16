package ci;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import th.L;
import uh.C15624o;

public class C4201l extends AbstractC14545v {

    public L f34865b;

    public C15624o f34866c;

    public C4201l(E e10) {
        Enumeration J10 = e10.J();
        this.f34865b = L.v(J10.nextElement());
        if (J10.hasMoreElements()) {
            this.f34866c = C15624o.w(J10.nextElement());
        }
    }

    public static C4201l u(Object obj) {
        if (obj instanceof C4201l) {
            return (C4201l) obj;
        }
        if (obj != null) {
            return new C4201l(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f34865b);
        C15624o c15624o = this.f34866c;
        if (c15624o != null) {
            c14518h.a(c15624o);
        }
        return new G0(c14518h);
    }

    public L v() {
        return this.f34865b;
    }

    public C15624o x() {
        return this.f34866c;
    }

    public C4201l(L l10, C15624o c15624o) {
        this.f34865b = l10;
        this.f34866c = c15624o;
    }
}
