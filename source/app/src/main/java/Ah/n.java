package Ah;

import oh.AbstractC14545v;
import oh.C14549x;
import oh.E;

public abstract class n extends AbstractC14545v {
    public static n u(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj == null) {
            return null;
        }
        E G10 = E.G(obj);
        return C14549x.K(G10.I(0)).O(h.f641r) ? new k(G10) : new o(G10);
    }

    public abstract C14549x v();
}
