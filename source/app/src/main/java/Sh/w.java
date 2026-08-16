package sh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class w extends AbstractC14545v {

    public final C15302a f109625b;

    public final oh.E f109626c;

    public w(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109625b = C15302a.w(e10.I(0));
        this.f109626c = oh.E.G(e10.I(1));
    }

    public static w v(Object obj) {
        if (obj instanceof w) {
            return (w) obj;
        }
        if (obj != null) {
            return new w(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f109625b);
        c14518h.a(this.f109626c);
        return new G0(c14518h);
    }

    public C15302a[] u() {
        C15302a[] c15302aArr = new C15302a[this.f109626c.size()];
        for (int i10 = 0; i10 != this.f109626c.size(); i10++) {
            c15302aArr[i10] = C15302a.w(this.f109626c.I(i10));
        }
        return c15302aArr;
    }

    public C15302a x() {
        return this.f109625b;
    }

    public w(C15302a c15302a, oh.E e10) {
        this.f109625b = c15302a;
        this.f109626c = e10;
    }
}
