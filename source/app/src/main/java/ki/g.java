package ki;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.K0;
import oh.M;

public class g extends AbstractC14545v {

    public f f95244b;

    public AbstractC14551y f95245c;

    public AbstractC14551y f95246d;

    public g(f fVar, AbstractC14551y abstractC14551y, AbstractC14551y abstractC14551y2) {
        this.f95244b = fVar;
        this.f95245c = abstractC14551y;
        this.f95246d = abstractC14551y2;
    }

    public static g u(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f95244b);
        AbstractC14551y abstractC14551y = this.f95245c;
        if (abstractC14551y != null) {
            c14518h.a(new K0(0, abstractC14551y));
        }
        c14518h.a(new K0(2, this.f95246d));
        return new G0(c14518h);
    }

    public f v() {
        return this.f95244b;
    }

    public AbstractC14551y x() {
        return this.f95245c;
    }

    public AbstractC14551y y() {
        return this.f95246d;
    }

    public g(E e10) {
        Enumeration J10 = e10.J();
        this.f95244b = f.w(J10.nextElement());
        while (J10.hasMoreElements()) {
            M m10 = (M) J10.nextElement();
            if (m10.p(0)) {
                this.f95245c = (AbstractC14551y) m10.O();
            } else if (m10.p(2)) {
                this.f95246d = (AbstractC14551y) m10.O();
            }
        }
    }
}
