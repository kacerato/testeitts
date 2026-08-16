package ki;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;

public class f extends AbstractC14545v {

    public C14549x f95242b;

    public AbstractC14551y f95243c;

    public f(C14549x c14549x, AbstractC14551y abstractC14551y) {
        this.f95242b = c14549x;
        this.f95243c = abstractC14551y;
    }

    public static f w(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f95242b);
        c14518h.a(this.f95243c);
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f95242b;
    }

    public AbstractC14551y v() {
        return this.f95243c;
    }

    public f(E e10) {
        Enumeration J10 = e10.J();
        this.f95242b = (C14549x) J10.nextElement();
        this.f95243c = (AbstractC14551y) J10.nextElement();
    }
}
