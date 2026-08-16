package Ck;

import Ek.p;
import Ek.q;
import Fk.w0;
import oh.E;

public class b extends q {
    public b(p pVar) {
        super(new w0(3), pVar);
    }

    public static b y(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(E.G(obj));
        }
        return null;
    }

    public b(w0 w0Var, p pVar) {
        super(w0Var, pVar);
    }

    public b(E e10) {
        super(e10);
    }
}
