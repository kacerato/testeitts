package uh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class P extends AbstractC14545v implements InterfaceC14514f {

    public InterfaceC14516g f120600b;

    public P(AbstractC14551y abstractC14551y) {
        this.f120600b = new K0(false, 0, (InterfaceC14516g) abstractC14551y);
    }

    public static P v(Object obj) {
        if (obj == null || (obj instanceof P)) {
            return (P) obj;
        }
        if (obj instanceof C15634z) {
            return new P((C15634z) obj);
        }
        if (obj instanceof AbstractC14551y) {
            return new P((AbstractC14551y) obj);
        }
        if (obj instanceof oh.B) {
            return new P((oh.B) obj);
        }
        throw new IllegalArgumentException("Illegal object in RecipientIdentifier: " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        return this.f120600b.r();
    }

    public InterfaceC14516g u() {
        InterfaceC14516g interfaceC14516g = this.f120600b;
        return interfaceC14516g instanceof oh.M ? AbstractC14551y.G((oh.M) interfaceC14516g, false) : C15634z.u(interfaceC14516g);
    }

    public boolean x() {
        return this.f120600b instanceof oh.M;
    }

    public P(oh.B b10) {
        this.f120600b = b10;
    }

    public P(C15634z c15634z) {
        this.f120600b = c15634z;
    }
}
