package Ek;

import Fk.j0;
import Fk.w0;

public class C2501l extends C2492c {
    public C2501l(C2492c c2492c) {
        this(c2492c.B(), c2492c.x(), c2492c.z(), c2492c.y());
    }

    public static C2501l C(Object obj) {
        if (obj instanceof C2501l) {
            return (C2501l) obj;
        }
        if (obj != null) {
            return new C2501l(oh.E.G(obj));
        }
        return null;
    }

    public C2501l(w0 w0Var, s sVar, K k10, j0 j0Var) {
        super(w0Var, C2494e.f5958f, sVar, k10, j0Var);
    }

    public C2501l(oh.E e10) {
        super(e10);
        if (!A().A(C2494e.f5958f)) {
            throw new IllegalArgumentException("object was certificate base but the type was not explicit");
        }
    }
}
