package wh;

import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;

public class i extends AbstractC14545v {

    public E f127515b;

    public i(E e10) {
        this.f127515b = e10;
    }

    public static i u(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f127515b;
    }

    public C16003a[] v() {
        int size = this.f127515b.size();
        C16003a[] c16003aArr = new C16003a[size];
        for (int i10 = 0; i10 != size; i10++) {
            c16003aArr[i10] = C16003a.u(this.f127515b.I(i10));
        }
        return c16003aArr;
    }

    public i(C16003a c16003a) {
        this.f127515b = new G0(c16003a);
    }

    public i(C16003a[] c16003aArr) {
        this.f127515b = new G0(c16003aArr);
    }
}
