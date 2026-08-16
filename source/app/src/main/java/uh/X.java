package uh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class X extends AbstractC14545v implements InterfaceC14514f {

    public InterfaceC14516g f120628b;

    public X(AbstractC14551y abstractC14551y) {
        this.f120628b = new K0(false, 0, (InterfaceC14516g) abstractC14551y);
    }

    public static X v(Object obj) {
        if (obj == null || (obj instanceof X)) {
            return (X) obj;
        }
        if (obj instanceof C15634z) {
            return new X((C15634z) obj);
        }
        if (obj instanceof AbstractC14551y) {
            return new X((AbstractC14551y) obj);
        }
        if (obj instanceof oh.B) {
            return new X((oh.B) obj);
        }
        throw new IllegalArgumentException("Illegal object in SignerIdentifier: " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        return this.f120628b.r();
    }

    public InterfaceC14516g u() {
        InterfaceC14516g interfaceC14516g = this.f120628b;
        return interfaceC14516g instanceof oh.M ? AbstractC14551y.G((oh.M) interfaceC14516g, false) : interfaceC14516g;
    }

    public boolean x() {
        return this.f120628b instanceof oh.M;
    }

    public X(oh.B b10) {
        this.f120628b = b10;
    }

    public X(C15634z c15634z) {
        this.f120628b = c15634z;
    }
}
