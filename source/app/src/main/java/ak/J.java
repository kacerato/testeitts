package Ak;

public class J extends Ck.e {
    public J(Ek.p pVar) {
        super(pVar);
    }

    public static J A(Object obj) {
        if (obj instanceof J) {
            return (J) obj;
        }
        if (obj != null) {
            return new J(oh.E.G(obj));
        }
        return null;
    }

    public J(oh.E e10) {
        super(e10);
    }
}
