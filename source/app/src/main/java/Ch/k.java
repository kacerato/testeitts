package Ch;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;

public class k extends AbstractC14545v {

    public E f4350b;

    public k(E e10) {
        if (e10.size() != 1) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        E e11 = (E) e10.I(0);
        this.f4350b = e11;
        Enumeration J10 = e11.J();
        while (J10.hasMoreElements()) {
            l.u(J10.nextElement());
        }
    }

    public static k u(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj != null) {
            return new k(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return new G0(this.f4350b);
    }

    public l[] v() {
        int size = this.f4350b.size();
        l[] lVarArr = new l[size];
        for (int i10 = 0; i10 < size; i10++) {
            lVarArr[i10] = l.u(this.f4350b.I(i10));
        }
        return lVarArr;
    }

    public k(l[] lVarArr) {
        this.f4350b = new G0(lVarArr);
    }
}
