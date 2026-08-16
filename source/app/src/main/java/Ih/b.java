package Ih;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class b extends AbstractC14545v {

    public C14539s f9431b;

    public AbstractC14551y f9432c;

    public b(int i10, AbstractC14551y abstractC14551y) {
        this.f9431b = new C14539s(i10);
        this.f9432c = abstractC14551y;
    }

    public static b w(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f9431b);
        c14518h.a(this.f9432c);
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f9432c;
    }

    public int v() {
        return this.f9431b.O();
    }

    public b(E e10) {
        Enumeration J10 = e10.J();
        this.f9431b = C14539s.F(J10.nextElement());
        this.f9432c = AbstractC14551y.F(J10.nextElement());
    }
}
