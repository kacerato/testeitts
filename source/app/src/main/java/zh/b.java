package Zh;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class b extends AbstractC14545v {

    public E f31229b;

    public b(BigInteger bigInteger) {
        byte[] c10 = org.bouncycastle.util.b.c(bigInteger);
        C14518h c14518h = new C14518h(2);
        c14518h.a(new C14539s(1L));
        c14518h.a(new C0(c10));
        this.f31229b = new G0(c14518h);
    }

    @Override
    public B r() {
        return this.f31229b;
    }

    public BigInteger u() {
        return new BigInteger(1, ((AbstractC14551y) this.f31229b.I(1)).H());
    }

    public final B v(int i10) {
        Enumeration J10 = this.f31229b.J();
        while (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g = (InterfaceC14516g) J10.nextElement();
            if (interfaceC14516g instanceof M) {
                M m10 = (M) interfaceC14516g;
                if (m10.g() == i10) {
                    return m10.O().r();
                }
            }
        }
        return null;
    }

    public B x() {
        return v(0);
    }

    public AbstractC14508c y() {
        return (AbstractC14508c) v(1);
    }

    public b(BigInteger bigInteger, AbstractC14508c abstractC14508c, InterfaceC14516g interfaceC14516g) {
        byte[] c10 = org.bouncycastle.util.b.c(bigInteger);
        C14518h c14518h = new C14518h(4);
        c14518h.a(new C14539s(1L));
        c14518h.a(new C0(c10));
        if (interfaceC14516g != null) {
            c14518h.a(new K0(true, 0, interfaceC14516g));
        }
        if (abstractC14508c != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) abstractC14508c));
        }
        this.f31229b = new G0(c14518h);
    }

    public b(BigInteger bigInteger, InterfaceC14516g interfaceC14516g) {
        this(bigInteger, null, interfaceC14516g);
    }

    public b(E e10) {
        this.f31229b = e10;
    }
}
