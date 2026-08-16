package Ck;

import Ek.p;
import oh.E;

public class d extends b {
    public d(p pVar) {
        super(pVar);
    }

    public static d z(Object obj) {
        if (obj instanceof c) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    public d(E e10) {
        super(e10);
    }
}
