package Ch;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;

public class v extends AbstractC14545v {

    public C14549x f4370b;

    public n f4371c;

    public u f4372d;

    public v(C14549x c14549x, n nVar) {
        this(c14549x, nVar, null);
    }

    public static v u(Object obj) {
        if (obj instanceof v) {
            return (v) obj;
        }
        if (obj != null) {
            return new v(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f4370b);
        c14518h.a(this.f4371c);
        u uVar = this.f4372d;
        if (uVar != null) {
            c14518h.a(uVar);
        }
        return new G0(c14518h);
    }

    public n v() {
        return this.f4371c;
    }

    public C14549x x() {
        return new C14549x(this.f4370b.J());
    }

    public u y() {
        return this.f4372d;
    }

    public v(C14549x c14549x, n nVar, u uVar) {
        this.f4370b = c14549x;
        this.f4371c = nVar;
        this.f4372d = uVar;
    }

    public v(E e10) {
        if (e10.size() != 2 && e10.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f4370b = C14549x.K(e10.I(0));
        this.f4371c = n.w(e10.I(1));
        if (e10.size() == 3) {
            this.f4372d = u.v(e10.I(2));
        }
    }
}
