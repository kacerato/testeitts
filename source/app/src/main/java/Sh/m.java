package sh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class m extends AbstractC14545v {

    public final C15304c f109593b;

    public final C14549x f109594c;

    public final InterfaceC14516g f109595d;

    public m(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109593b = C15304c.v(e10.I(0));
        this.f109594c = C14549x.K(e10.I(1));
        this.f109595d = e10.I(2);
    }

    public static m y(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f109593b);
        c14518h.a(this.f109594c);
        c14518h.a(this.f109595d);
        return new G0(c14518h);
    }

    public C15304c u() {
        return this.f109593b;
    }

    public InterfaceC14516g v() {
        return this.f109595d;
    }

    public C14549x x() {
        return this.f109594c;
    }

    public m(C15304c c15304c, C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f109593b = c15304c;
        this.f109594c = c14549x;
        this.f109595d = interfaceC14516g;
    }
}
