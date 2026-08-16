package Xh;

import fi.C13228d;
import hi.B0;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class l extends AbstractC14545v {

    public C13228d f28980b;

    public C14539s f28981c;

    public l(C13228d c13228d, BigInteger bigInteger) {
        this.f28980b = c13228d;
        this.f28981c = new C14539s(bigInteger);
    }

    public static l v(Object obj) {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj != null) {
            return new l(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28980b);
        c14518h.a(this.f28981c);
        return new G0(c14518h);
    }

    public C14539s u() {
        return this.f28981c;
    }

    public C13228d x() {
        return this.f28980b;
    }

    public l(B0 b02, BigInteger bigInteger) {
        this.f28980b = C13228d.x(b02.r());
        this.f28981c = new C14539s(bigInteger);
    }

    public l(B0 b02, C14539s c14539s) {
        this.f28980b = C13228d.x(b02.r());
        this.f28981c = c14539s;
    }

    public l(oh.E e10) {
        this.f28980b = C13228d.x(e10.I(0));
        this.f28981c = (C14539s) e10.I(1);
    }
}
