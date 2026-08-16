package Ck;

import Ek.p;
import oh.E;

public class g extends b {
    public g(p pVar) {
        super(pVar);
    }

    public static g z(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(E.G(obj));
        }
        return null;
    }

    public g(E e10) {
        super(e10);
    }
}
