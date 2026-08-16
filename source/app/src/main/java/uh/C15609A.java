package uh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14530n;
import oh.G0;
import oh.InterfaceC14516g;

public class C15609A extends AbstractC14545v {

    public AbstractC14551y f120552b;

    public C14530n f120553c;

    public K f120554d;

    public C15609A(oh.E e10) {
        InterfaceC14516g I10;
        this.f120552b = (AbstractC14551y) e10.I(0);
        int size = e10.size();
        if (size != 1) {
            if (size == 2) {
                boolean z10 = e10.I(1) instanceof C14530n;
                I10 = e10.I(1);
                if (z10) {
                    this.f120553c = (C14530n) I10;
                    return;
                }
            } else {
                if (size != 3) {
                    throw new IllegalArgumentException("Invalid KEKIdentifier");
                }
                this.f120553c = (C14530n) e10.I(1);
                I10 = e10.I(2);
            }
            this.f120554d = K.u(I10);
        }
    }

    public static C15609A v(Object obj) {
        if (obj == null || (obj instanceof C15609A)) {
            return (C15609A) obj;
        }
        if (obj instanceof oh.E) {
            return new C15609A((oh.E) obj);
        }
        throw new IllegalArgumentException("Invalid KEKIdentifier: " + obj.getClass().getName());
    }

    public static C15609A w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f120552b);
        C14530n c14530n = this.f120553c;
        if (c14530n != null) {
            c14518h.a(c14530n);
        }
        K k10 = this.f120554d;
        if (k10 != null) {
            c14518h.a(k10);
        }
        return new G0(c14518h);
    }

    public C14530n u() {
        return this.f120553c;
    }

    public AbstractC14551y x() {
        return this.f120552b;
    }

    public K y() {
        return this.f120554d;
    }

    public C15609A(byte[] bArr, C14530n c14530n, K k10) {
        this.f120552b = new C0(bArr);
        this.f120553c = c14530n;
        this.f120554d = k10;
    }
}
