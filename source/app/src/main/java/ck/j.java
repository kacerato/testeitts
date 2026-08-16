package Ck;

import Ek.p;
import oh.E;

public class j extends b {
    public j(p pVar) {
        super(pVar);
    }

    public static j z(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(E.G(obj));
        }
        return null;
    }

    public j(E e10) {
        super(e10);
    }
}
