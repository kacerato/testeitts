package Ak;

import Ek.C2502m;
import Fk.p0;

public class W extends V {
    public W(V v10) {
        super(v10.x(), v10.v());
    }

    public static W z(Object obj) {
        if (obj instanceof W) {
            return (W) obj;
        }
        if (obj instanceof V) {
            return new W((V) obj);
        }
        if (obj != null) {
            return new W(oh.E.G(obj));
        }
        return null;
    }

    public W(p0 p0Var, C2502m c2502m) {
        super(p0Var, c2502m);
    }

    public W(oh.E e10) {
        super(e10);
    }
}
