package Vh;

import fi.C13228d;
import hi.C13498j;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class n extends AbstractC14545v {

    public final C13228d f27061b;

    public final C13498j f27062c;

    public n(E e10) {
        this.f27061b = C13228d.x(e10.I(0));
        this.f27062c = e10.size() == 2 ? C13498j.y(e10.I(1)) : null;
    }

    public static n u(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f27061b);
        C13498j c13498j = this.f27062c;
        if (c13498j != null) {
            c14518h.a(c13498j);
        }
        return new G0(c14518h);
    }

    public C13228d v() {
        return this.f27061b;
    }

    public C13498j x() {
        return this.f27062c;
    }
}
