package Dk;

import Fk.C2551x;
import oh.C14539s;
import oh.E;

public class d extends c {
    public d(c cVar) {
        super(cVar.x(), cVar.y());
    }

    public static d z(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    public d(C2551x c2551x, C14539s c14539s) {
        super(c2551x, c14539s);
    }

    public d(E e10) {
        super(e10);
    }
}
