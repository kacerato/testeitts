package uh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14530n;
import oh.G0;

public class S extends AbstractC14545v {

    public AbstractC14551y f120602b;

    public C14530n f120603c;

    public K f120604d;

    public S(AbstractC14551y abstractC14551y, C14530n c14530n, K k10) {
        this.f120602b = abstractC14551y;
        this.f120603c = c14530n;
        this.f120604d = k10;
    }

    public static S v(Object obj) {
        if (obj instanceof S) {
            return (S) obj;
        }
        if (obj != null) {
            return new S(oh.E.G(obj));
        }
        return null;
    }

    public static S w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f120602b);
        C14530n c14530n = this.f120603c;
        if (c14530n != null) {
            c14518h.a(c14530n);
        }
        K k10 = this.f120604d;
        if (k10 != null) {
            c14518h.a(k10);
        }
        return new G0(c14518h);
    }

    public C14530n u() {
        return this.f120603c;
    }

    public K x() {
        return this.f120604d;
    }

    public AbstractC14551y y() {
        return this.f120602b;
    }

    public S(oh.E e10) {
        this.f120602b = AbstractC14551y.F(e10.I(0));
        int size = e10.size();
        if (size != 1) {
            if (size != 2) {
                if (size != 3) {
                    throw new IllegalArgumentException("Invalid RecipientKeyIdentifier");
                }
                this.f120603c = C14530n.J(e10.I(1));
            } else if (e10.I(1) instanceof C14530n) {
                this.f120603c = C14530n.J(e10.I(1));
                return;
            }
            this.f120604d = K.u(e10.I(2));
        }
    }

    public S(byte[] bArr) {
        this(bArr, (C14530n) null, (K) null);
    }

    public S(byte[] bArr, C14530n c14530n, K k10) {
        this.f120602b = new C0(bArr);
        this.f120603c = c14530n;
        this.f120604d = k10;
    }
}
