package Ch;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;

public class b extends AbstractC14545v {

    public C14549x f4320b;

    public E f4321c;

    public b(C14549x c14549x) {
        this.f4320b = c14549x;
    }

    public static b w(Object obj) {
        return (obj == null || (obj instanceof b)) ? (b) obj : new b(E.G(obj));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f4320b);
        E e10 = this.f4321c;
        if (e10 != null) {
            c14518h.a(e10);
        }
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f4320b;
    }

    public E v() {
        return this.f4321c;
    }

    public b(C14549x c14549x, E e10) {
        this.f4320b = c14549x;
        this.f4321c = e10;
    }

    public b(E e10) {
        this.f4320b = (C14549x) e10.I(0);
        if (e10.size() > 1) {
            this.f4321c = (E) e10.I(1);
        }
    }
}
