package Ak;

import Fk.p0;
import Fk.w0;
import oh.C14512e;

public class D extends C2308s {
    public D(Bk.e eVar, p0 p0Var, C14512e c14512e, w0 w0Var, O o10) {
        super(eVar, p0Var, c14512e, w0Var, o10);
    }

    public static D C(Object obj) {
        if (obj instanceof D) {
            return (D) obj;
        }
        if (obj != null) {
            return new D(oh.E.G(obj));
        }
        return null;
    }

    public D(oh.E e10) {
        super(e10);
    }
}
