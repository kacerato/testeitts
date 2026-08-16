package Ak;

public class Q extends Ck.e {
    public Q(Ek.p pVar) {
        super(pVar);
    }

    public static Q A(Object obj) {
        if (obj instanceof Q) {
            return (Q) obj;
        }
        if (obj != null) {
            return new Q(oh.E.G(obj));
        }
        return null;
    }

    public Q(oh.E e10) {
        super(e10);
    }
}
