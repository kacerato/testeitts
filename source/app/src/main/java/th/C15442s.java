package th;

import oh.AbstractC14545v;
import oh.G0;

public class C15442s extends AbstractC14545v {

    public final oh.E f117630b;

    public C15442s(oh.E e10) {
        this.f117630b = e10;
    }

    public static C15442s u(Object obj) {
        if (obj instanceof C15442s) {
            return (C15442s) obj;
        }
        if (obj != null) {
            return new C15442s(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f117630b;
    }

    public C15443t[] v() {
        int size = this.f117630b.size();
        C15443t[] c15443tArr = new C15443t[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15443tArr[i10] = C15443t.w(this.f117630b.I(i10));
        }
        return c15443tArr;
    }

    public C15442s(C15443t c15443t) {
        this.f117630b = new G0(c15443t);
    }

    public C15442s(C15443t[] c15443tArr) {
        this.f117630b = new G0(c15443tArr);
    }
}
