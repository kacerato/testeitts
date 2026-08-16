package th;

import oh.AbstractC14545v;

public class C15432h extends AbstractC14545v {

    public final oh.E f117601b;

    public C15432h(oh.E e10) {
        this.f117601b = e10;
    }

    public static C15432h u(Object obj) {
        if (obj instanceof C15432h) {
            return (C15432h) obj;
        }
        if (obj != null) {
            return new C15432h(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f117601b;
    }

    public C15437m[] v() {
        int size = this.f117601b.size();
        C15437m[] c15437mArr = new C15437m[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15437mArr[i10] = C15437m.y(this.f117601b.I(i10));
        }
        return c15437mArr;
    }
}
