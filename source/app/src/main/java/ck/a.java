package Ck;

import Ek.C2501l;
import Ek.K;
import Ek.s;
import Fk.j0;
import Fk.w0;
import oh.E;

public class a extends C2501l {
    public a(w0 w0Var, s sVar, K k10, j0 j0Var) {
        super(w0Var, sVar, k10, j0Var);
    }

    public static a D(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(E.G(obj));
        }
        return null;
    }

    public a(E e10) {
        super(e10);
    }
}
