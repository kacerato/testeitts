package th;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C15433i extends AbstractC14545v implements InterfaceC14514f {

    public C15426b f117602b;

    public wh.l f117603c;

    public C15433i(oh.M m10) {
        if (m10.p(0)) {
            this.f117602b = C15426b.u(m10.O());
        } else {
            if (m10.p(1)) {
                this.f117603c = wh.l.u(m10.O());
                return;
            }
            throw new IllegalArgumentException("unknown tag: " + oh.V.y(m10));
        }
    }

    public static C15433i w(Object obj) {
        if (obj instanceof C15433i) {
            return (C15433i) obj;
        }
        if (obj instanceof oh.M) {
            return new C15433i(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C15426b c15426b = this.f117602b;
        return c15426b != null ? new K0(true, 0, (InterfaceC14516g) c15426b) : new K0(true, 1, (InterfaceC14516g) this.f117603c);
    }

    public C15426b u() {
        return this.f117602b;
    }

    public wh.l v() {
        return this.f117603c;
    }

    public boolean x() {
        return this.f117603c != null;
    }

    public C15433i(C15426b c15426b) {
        if (c15426b == null) {
            throw new IllegalArgumentException("'certificate' cannot be null");
        }
        this.f117602b = c15426b;
    }

    public C15433i(wh.l lVar) {
        if (lVar == null) {
            throw new IllegalArgumentException("'encryptedCert' cannot be null");
        }
        this.f117603c = lVar;
    }

    public C15433i(wh.m mVar) {
        if (mVar == null) {
            throw new IllegalArgumentException("'encryptedCert' cannot be null");
        }
        this.f117603c = new wh.l(mVar);
    }
}
