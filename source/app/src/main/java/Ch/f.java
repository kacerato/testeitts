package Ch;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;

public class f extends AbstractC14545v {

    public E f4328b;

    public f(E e10) {
        E e11 = (E) e10.I(0);
        this.f4328b = e11;
        Enumeration J10 = e11.J();
        while (J10.hasMoreElements()) {
            h.w(J10.nextElement());
        }
    }

    public static f v(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return new G0(this.f4328b);
    }

    public h[] u() {
        int size = this.f4328b.size();
        h[] hVarArr = new h[size];
        for (int i10 = 0; i10 < size; i10++) {
            hVarArr[i10] = h.w(this.f4328b.I(i10));
        }
        return hVarArr;
    }

    public f(h[] hVarArr) {
        this.f4328b = new G0(hVarArr);
    }
}
