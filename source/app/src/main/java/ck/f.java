package Ck;

import Ek.p;
import oh.E;

public class f extends b {
    public f(p pVar) {
        super(pVar);
    }

    public static f z(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    public f(E e10) {
        super(e10);
    }
}
