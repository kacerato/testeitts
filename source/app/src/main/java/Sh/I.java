package sh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.M;
import uh.C15624o;

public class I extends AbstractC14545v {

    public final C15302a f109495b;

    public final C15624o f109496c;

    public I(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109495b = C15302a.w(e10.I(0));
        this.f109496c = C15624o.w(e10.I(1));
    }

    public static I w(Object obj) {
        if (obj instanceof I) {
            return (I) obj;
        }
        if (obj != null) {
            return new I(oh.E.G(obj));
        }
        return null;
    }

    public static I x(M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f109495b);
        c14518h.a(this.f109496c);
        return new G0(c14518h);
    }

    public C15302a u() {
        return this.f109495b;
    }

    public C15624o v() {
        return this.f109496c;
    }

    public I(C15302a c15302a, C15624o c15624o) {
        this.f109495b = c15302a;
        this.f109496c = c15624o;
    }
}
