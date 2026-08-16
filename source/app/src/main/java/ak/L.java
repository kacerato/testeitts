package Ak;

public class L extends Ck.e {
    public L(Ek.p pVar) {
        super(pVar);
    }

    public static L A(Object obj) {
        if (obj instanceof L) {
            return (L) obj;
        }
        if (obj != null) {
            return new L(oh.E.G(obj));
        }
        return null;
    }

    public L(oh.E e10) {
        super(e10);
    }
}
