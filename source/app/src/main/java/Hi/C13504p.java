package hi;

import oh.AbstractC14545v;
import oh.C14549x;

public class C13504p extends AbstractC14545v {

    public C14549x f90881b;

    public C13504p(C14549x c14549x) {
        this.f90881b = c14549x;
    }

    public static C13504p v(Object obj) {
        if (obj instanceof C13504p) {
            return (C13504p) obj;
        }
        if (obj != null) {
            return new C13504p(C14549x.K(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f90881b;
    }

    public String u() {
        return this.f90881b.J();
    }
}
