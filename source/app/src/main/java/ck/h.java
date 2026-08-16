package Ck;

import Ek.p;
import oh.E;

public class h extends b {
    public h(p pVar) {
        super(pVar);
    }

    public static h z(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(E.G(obj));
        }
        return null;
    }

    public h(E e10) {
        super(e10);
    }
}
