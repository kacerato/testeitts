package Ak;

public class T extends Ck.e {
    public T(Ek.p pVar) {
        super(pVar);
    }

    public static T A(Object obj) {
        if (obj instanceof T) {
            return (T) obj;
        }
        if (obj != null) {
            return new T(oh.E.G(obj));
        }
        return null;
    }

    public T(oh.E e10) {
        super(e10);
    }
}
