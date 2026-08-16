package th;

import hi.C13479C;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14530n;
import oh.G0;

public class S extends AbstractC14545v {

    public final K f117534b;

    public final wh.c f117535c;

    public final C14530n f117536d;

    public final C14530n f117537e;

    public C13479C f117538f;

    public S(oh.E e10) {
        this.f117534b = K.u(e10.I(0));
        this.f117535c = wh.c.u(e10.I(1));
        this.f117536d = C14530n.J(e10.I(2));
        this.f117537e = C14530n.J(e10.I(3));
        if (e10.size() > 4) {
            this.f117538f = C13479C.C(e10.I(4));
        }
    }

    public static S y(Object obj) {
        if (obj instanceof S) {
            return (S) obj;
        }
        if (obj != null) {
            return new S(oh.E.G(obj));
        }
        return null;
    }

    public C14530n A() {
        return this.f117536d;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f117534b);
        c14518h.a(this.f117535c);
        c14518h.a(this.f117536d);
        c14518h.a(this.f117537e);
        C13479C c13479c = this.f117538f;
        if (c13479c != null) {
            c14518h.a(c13479c);
        }
        return new G0(c14518h);
    }

    public C14530n u() {
        return this.f117537e;
    }

    public wh.c v() {
        return this.f117535c;
    }

    public C13479C x() {
        return this.f117538f;
    }

    public K z() {
        return this.f117534b;
    }

    public S(K k10, wh.c cVar, C14530n c14530n, C14530n c14530n2) {
        this(k10, cVar, c14530n, c14530n2, null);
    }

    public S(K k10, wh.c cVar, C14530n c14530n, C14530n c14530n2, C13479C c13479c) {
        this.f117534b = k10;
        this.f117535c = cVar;
        this.f117536d = c14530n;
        this.f117537e = c14530n2;
        this.f117538f = c13479c;
    }
}
