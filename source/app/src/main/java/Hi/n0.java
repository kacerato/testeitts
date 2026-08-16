package hi;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.G0;

public class n0 extends AbstractC14545v {

    public oh.E f90856b;

    public n0(oh.E e10) {
        this.f90856b = e10;
    }

    public static n0 u(Object obj) {
        if (obj instanceof n0) {
            return (n0) obj;
        }
        if (obj != null) {
            return new n0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f90856b;
    }

    public l0[] v() {
        l0[] l0VarArr = new l0[this.f90856b.size()];
        Enumeration J10 = this.f90856b.J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            l0VarArr[i10] = l0.u(J10.nextElement());
            i10++;
        }
        return l0VarArr;
    }

    public n0(l0[] l0VarArr) {
        this.f90856b = new G0(l0VarArr);
    }
}
