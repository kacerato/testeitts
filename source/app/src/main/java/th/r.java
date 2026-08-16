package th;

import oh.AbstractC14545v;
import oh.G0;

public class r extends AbstractC14545v {

    public final oh.E f117629b;

    public r(oh.E e10) {
        this.f117629b = e10;
    }

    public static r u(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f117629b;
    }

    public C15443t[] v() {
        int size = this.f117629b.size();
        C15443t[] c15443tArr = new C15443t[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15443tArr[i10] = C15443t.w(this.f117629b.I(i10));
        }
        return c15443tArr;
    }

    public r(C15443t c15443t) {
        this.f117629b = new G0(c15443t);
    }

    public r(C15443t[] c15443tArr) {
        this.f117629b = new G0(c15443tArr);
    }
}
