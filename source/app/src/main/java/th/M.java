package th;

import oh.AbstractC14545v;

public class M extends AbstractC14545v {

    public final oh.E f117526b;

    public M(oh.E e10) {
        this.f117526b = e10;
    }

    public static M u(Object obj) {
        if (obj instanceof M) {
            return (M) obj;
        }
        if (obj != null) {
            return new M(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f117526b;
    }

    public C15439o[] v() {
        int size = this.f117526b.size();
        C15439o[] c15439oArr = new C15439o[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15439oArr[i10] = C15439o.w(this.f117526b.I(i10));
        }
        return c15439oArr;
    }
}
