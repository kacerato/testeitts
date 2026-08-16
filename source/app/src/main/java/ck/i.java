package Ck;

import Ek.p;
import oh.E;

public class i extends b {
    public i(p pVar) {
        super(pVar);
    }

    public static i z(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(E.G(obj));
        }
        return null;
    }

    public i(E e10) {
        super(e10);
    }
}
