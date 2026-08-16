package sh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.M;

public class y extends AbstractC14545v {

    public final C15302a f109631b;

    public final C14549x f109632c;

    public final InterfaceC14516g f109633d;

    public y(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109631b = C15302a.w(e10.I(0));
        this.f109632c = C14549x.K(e10.I(1));
        this.f109633d = e10.I(2);
    }

    public static y v(Object obj) {
        if (obj instanceof y) {
            return (y) obj;
        }
        if (obj != null) {
            return new y(oh.E.G(obj));
        }
        return null;
    }

    public static y w(M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f109631b);
        c14518h.a(this.f109632c);
        c14518h.a(this.f109633d);
        return new G0(c14518h);
    }

    public C15302a u() {
        return this.f109631b;
    }

    public C14549x x() {
        return this.f109632c;
    }

    public InterfaceC14516g y() {
        return this.f109633d;
    }

    public y(C15302a c15302a, C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f109631b = c15302a;
        this.f109632c = c14549x;
        this.f109633d = interfaceC14516g;
    }
}
