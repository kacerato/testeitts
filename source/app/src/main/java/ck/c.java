package Ck;

import Ek.p;
import oh.E;

public class c extends b {
    public c(p pVar) {
        super(pVar);
    }

    public static c z(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(E.G(obj));
        }
        return null;
    }

    public c(E e10) {
        super(e10);
    }
}
