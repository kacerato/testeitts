package sh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.M;

public class H extends AbstractC14545v {

    public final C15302a f109493b;

    public final n f109494c;

    public H(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109493b = C15302a.w(e10.I(0));
        this.f109494c = n.w(e10.I(1));
    }

    public static H w(Object obj) {
        if (obj instanceof H) {
            return (H) obj;
        }
        if (obj != null) {
            return new H(oh.E.G(obj));
        }
        return null;
    }

    public static H x(M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f109493b);
        c14518h.a(this.f109494c);
        return new G0(c14518h);
    }

    public C15302a u() {
        return this.f109493b;
    }

    public n v() {
        return this.f109494c;
    }

    public H(C15302a c15302a, n nVar) {
        this.f109493b = c15302a;
        this.f109494c = nVar;
    }
}
