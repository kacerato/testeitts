package Ak;

import Ek.C2502m;
import Fk.p0;

public class X extends V {
    public X(V v10) {
        super(v10.x(), v10.v());
    }

    public static X z(Object obj) {
        if (obj instanceof X) {
            return (X) obj;
        }
        if (obj instanceof V) {
            return new X((V) obj);
        }
        if (obj != null) {
            return new X(oh.E.G(obj));
        }
        return null;
    }

    public X(p0 p0Var, C2502m c2502m) {
        super(p0Var, c2502m);
    }

    public X(oh.E e10) {
        super(e10);
    }
}
