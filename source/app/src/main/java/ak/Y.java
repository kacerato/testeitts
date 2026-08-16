package Ak;

import Fk.p0;
import Fk.w0;
import oh.C14512e;

public class Y extends C2308s {
    public Y(Bk.e eVar, p0 p0Var, C14512e c14512e, w0 w0Var, O o10) {
        super(eVar, p0Var, c14512e, w0Var, o10);
    }

    public static Y C(Object obj) {
        if (obj instanceof Y) {
            return (Y) obj;
        }
        if (obj != null) {
            return new Y(oh.E.G(obj));
        }
        return null;
    }

    public Y(oh.E e10) {
        super(e10);
    }
}
