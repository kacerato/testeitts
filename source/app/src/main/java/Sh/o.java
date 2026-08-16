package sh;

import oh.AbstractC14545v;
import oh.G0;

public class o extends AbstractC14545v {

    public final oh.E f109604b;

    public o(oh.E e10) {
        if (e10.size() != 1) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109604b = oh.E.G(e10.I(0));
    }

    public static o v(Object obj) {
        if (obj instanceof o) {
            return (o) obj;
        }
        if (obj != null) {
            return new o(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(this.f109604b);
    }

    public C15305d[] u() {
        C15305d[] c15305dArr = new C15305d[this.f109604b.size()];
        for (int i10 = 0; i10 != this.f109604b.size(); i10++) {
            c15305dArr[i10] = C15305d.w(this.f109604b.I(i10));
        }
        return c15305dArr;
    }

    public o(C15305d c15305d) {
        this.f109604b = new G0(c15305d);
    }

    public o(C15305d[] c15305dArr) {
        this.f109604b = new G0(c15305dArr);
    }
}
