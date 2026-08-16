package Ek;

import Fk.j0;
import Fk.w0;

public class r extends C2492c {
    public r(C2492c c2492c) {
        this(c2492c.B(), c2492c.x(), c2492c.z(), c2492c.y());
    }

    public static r C(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(oh.E.G(obj));
        }
        return null;
    }

    public r(w0 w0Var, s sVar, K k10, j0 j0Var) {
        super(w0Var, C2494e.f5959g, sVar, k10, j0Var);
    }

    public r(oh.E e10) {
        super(e10);
        if (!A().A(C2494e.f5959g)) {
            throw new IllegalArgumentException("object was certificate base but the type was not implicit");
        }
    }
}
