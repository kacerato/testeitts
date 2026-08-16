package wh;

import hi.C13486b;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class m extends AbstractC14545v {

    public C13486b f127522b;

    public C13486b f127523c;

    public AbstractC14508c f127524d;

    public C13486b f127525e;

    public AbstractC14551y f127526f;

    public AbstractC14508c f127527g;

    public m(C13486b c13486b, C13486b c13486b2, AbstractC14508c abstractC14508c, C13486b c13486b3, AbstractC14551y abstractC14551y, AbstractC14508c abstractC14508c2) {
        if (abstractC14508c2 == null) {
            throw new IllegalArgumentException("'encValue' cannot be null");
        }
        this.f127522b = c13486b;
        this.f127523c = c13486b2;
        this.f127524d = abstractC14508c;
        this.f127525e = c13486b3;
        this.f127526f = abstractC14551y;
        this.f127527g = abstractC14508c2;
    }

    private void u(C14518h c14518h, int i10, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(new K0(false, i10, interfaceC14516g));
        }
    }

    public static m y(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(E.G(obj));
        }
        return null;
    }

    public C13486b A() {
        return this.f127525e;
    }

    public C13486b B() {
        return this.f127523c;
    }

    public AbstractC14551y C() {
        return this.f127526f;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(6);
        u(c14518h, 0, this.f127522b);
        u(c14518h, 1, this.f127523c);
        u(c14518h, 2, this.f127524d);
        u(c14518h, 3, this.f127525e);
        u(c14518h, 4, this.f127526f);
        c14518h.a(this.f127527g);
        return new G0(c14518h);
    }

    public AbstractC14508c v() {
        return this.f127524d;
    }

    public AbstractC14508c x() {
        return this.f127527g;
    }

    public C13486b z() {
        return this.f127522b;
    }

    public m(E e10) {
        int i10 = 0;
        while (e10.I(i10) instanceof M) {
            M m10 = (M) e10.I(i10);
            int g10 = m10.g();
            if (g10 == 0) {
                this.f127522b = C13486b.w(m10, false);
            } else if (g10 == 1) {
                this.f127523c = C13486b.w(m10, false);
            } else if (g10 == 2) {
                this.f127524d = AbstractC14508c.I(m10, false);
            } else if (g10 == 3) {
                this.f127525e = C13486b.w(m10, false);
            } else {
                if (g10 != 4) {
                    throw new IllegalArgumentException("Unknown tag encountered: " + m10.g());
                }
                this.f127526f = AbstractC14551y.G(m10, false);
            }
            i10++;
        }
        this.f127527g = AbstractC14508c.H(e10.I(i10));
    }
}
