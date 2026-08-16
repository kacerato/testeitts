package Ck;

import Ek.p;
import oh.E;

public class e extends b {
    public e(p pVar) {
        super(pVar);
    }

    public static e z(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(E.G(obj));
        }
        return null;
    }

    public e(E e10) {
        super(e10);
    }
}
