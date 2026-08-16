package Ak;

public class H extends Ck.e {
    public H(Ek.p pVar) {
        super(pVar);
    }

    public static H A(Object obj) {
        if (obj instanceof H) {
            return (H) obj;
        }
        if (obj != null) {
            return new H(oh.E.G(obj));
        }
        return null;
    }

    public H(oh.E e10) {
        super(e10);
    }
}
