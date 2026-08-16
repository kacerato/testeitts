package hi;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.G0;

public class m0 extends AbstractC14545v {

    public oh.E f90854b;

    public m0(n0 n0Var) {
        this.f90854b = new G0(n0Var);
    }

    public static m0 u(Object obj) {
        if (obj instanceof m0) {
            return (m0) obj;
        }
        if (obj != null) {
            return new m0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f90854b;
    }

    public n0[] v() {
        n0[] n0VarArr = new n0[this.f90854b.size()];
        Enumeration J10 = this.f90854b.J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            n0VarArr[i10] = n0.u(J10.nextElement());
            i10++;
        }
        return n0VarArr;
    }

    public m0(oh.E e10) {
        this.f90854b = e10;
    }

    public m0(l0[] l0VarArr) {
        this(new n0(l0VarArr));
    }
}
