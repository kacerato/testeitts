package th;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class C15435k extends AbstractC14545v {

    public final wh.g f117606b;

    public final oh.E f117607c;

    public C15435k(oh.E e10) {
        if (e10.size() != 1 && e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 1 or 2");
        }
        this.f117606b = wh.g.v(e10.I(0));
        this.f117607c = e10.size() > 1 ? oh.E.G(e10.I(1)) : null;
    }

    public static C15435k v(Object obj) {
        if (obj instanceof C15435k) {
            return (C15435k) obj;
        }
        if (obj != null) {
            return new C15435k(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f117606b);
        oh.E e10 = this.f117607c;
        if (e10 != null) {
            c14518h.a(e10);
        }
        return new G0(c14518h);
    }

    public wh.g u() {
        return this.f117606b;
    }

    public oh.E x() {
        return this.f117607c;
    }

    public C15435k(wh.g gVar, oh.E e10) {
        this.f117606b = gVar;
        this.f117607c = e10;
    }
}
