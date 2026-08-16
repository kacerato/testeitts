package Ch;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14530n;
import oh.E;
import oh.G0;

public class j extends AbstractC14545v {

    public Vh.j f4348b;

    public C14530n f4349c;

    public j(Vh.j jVar, C14530n c14530n) {
        this.f4348b = jVar;
        this.f4349c = c14530n;
    }

    public static j u(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f4348b);
        c14518h.a(this.f4349c);
        return new G0(c14518h);
    }

    public Vh.j v() {
        return this.f4348b;
    }

    public C14530n x() {
        return this.f4349c;
    }

    public j(E e10) {
        if (e10.size() == 2) {
            this.f4348b = Vh.j.u(e10.I(0));
            this.f4349c = (C14530n) e10.I(1);
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
