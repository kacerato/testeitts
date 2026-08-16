package Vh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.M;

public class k extends AbstractC14545v {

    public C14549x f27050b;

    public AbstractC14551y f27051c;

    public k(C14549x c14549x, AbstractC14551y abstractC14551y) {
        this.f27050b = c14549x;
        this.f27051c = abstractC14551y;
    }

    public static k u(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj != null) {
            return new k(E.G(obj));
        }
        return null;
    }

    public static k v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f27050b);
        c14518h.a(this.f27051c);
        return new G0(c14518h);
    }

    public AbstractC14551y x() {
        return this.f27051c;
    }

    public C14549x y() {
        return this.f27050b;
    }

    public k(E e10) {
        this.f27050b = (C14549x) e10.I(0);
        this.f27051c = (AbstractC14551y) e10.I(1);
    }
}
