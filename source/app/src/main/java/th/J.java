package th;

import oh.AbstractC14545v;
import oh.G0;

public class J extends AbstractC14545v {

    public final oh.E f117507b;

    public J(oh.E e10) {
        this.f117507b = e10;
    }

    public static J u(Object obj) {
        if (obj instanceof J) {
            return (J) obj;
        }
        if (obj != null) {
            return new J(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f117507b;
    }

    public I[] v() {
        int size = this.f117507b.size();
        I[] iArr = new I[size];
        for (int i10 = 0; i10 != size; i10++) {
            iArr[i10] = I.z(this.f117507b.I(i10));
        }
        return iArr;
    }

    public J(I i10) {
        this.f117507b = new G0(i10);
    }

    public J(I[] iArr) {
        this.f117507b = new G0(iArr);
    }
}
