package Xk;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class s extends AbstractC14545v {

    public final C14539s f29614b;

    public final C13486b f29615c;

    public s(C13486b c13486b) {
        this.f29614b = new C14539s(0L);
        this.f29615c = c13486b;
    }

    public static final s u(Object obj) {
        if (obj instanceof s) {
            return (s) obj;
        }
        if (obj != null) {
            return new s(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f29614b);
        c14518h.a(this.f29615c);
        return new G0(c14518h);
    }

    public C13486b v() {
        return this.f29615c;
    }

    public s(E e10) {
        this.f29614b = C14539s.F(e10.I(0));
        this.f29615c = C13486b.v(e10.I(1));
    }
}
