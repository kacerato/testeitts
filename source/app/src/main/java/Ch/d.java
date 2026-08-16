package Ch;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;

public class d extends AbstractC14545v {

    public E f4324b;

    public d(E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            g.v(J10.nextElement());
        }
        this.f4324b = e10;
    }

    public static d v(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f4324b;
    }

    public g[] u() {
        int size = this.f4324b.size();
        g[] gVarArr = new g[size];
        for (int i10 = 0; i10 < size; i10++) {
            gVarArr[i10] = g.v(this.f4324b.I(i10));
        }
        return gVarArr;
    }

    public d(g[] gVarArr) {
        this.f4324b = new G0(gVarArr);
    }
}
