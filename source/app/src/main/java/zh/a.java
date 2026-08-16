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

public class a extends AbstractC14545v {

    public E f31228b;

    public a(int i10, BigInteger bigInteger) {
        byte[] b10 = org.bouncycastle.util.b.b((i10 + 7) / 8, bigInteger);
        C14518h c14518h = new C14518h(2);
        c14518h.a(new C14539s(1L));
        c14518h.a(new C0(b10));
        this.f31228b = new G0(c14518h);
    }

    public static a u(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f31228b;
    }

    public BigInteger v() {
        return new BigInteger(1, ((AbstractC14551y) this.f31228b.I(1)).H());
    }

    public final AbstractC14545v w(int i10, int i11) {
        Enumeration J10 = this.f31228b.J();
        while (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g = (InterfaceC14516g) J10.nextElement();
            if (interfaceC14516g instanceof M) {
                M m10 = (M) interfaceC14516g;
                if (m10.p(i10)) {
                    return i11 < 0 ? m10.O().r() : m10.M(true, i11);
                }
            }
        }
        return null;
    }

    public B x() {
        return y().r();
    }

    public AbstractC14545v y() {
        return w(0, -1);
    }

    public AbstractC14508c z() {
        return (AbstractC14508c) w(1, 3);
    }

    public a(int i10, BigInteger bigInteger, AbstractC14508c abstractC14508c, InterfaceC14516g interfaceC14516g) {
        byte[] b10 = org.bouncycastle.util.b.b((i10 + 7) / 8, bigInteger);
        C14518h c14518h = new C14518h(4);
        c14518h.a(new C14539s(1L));
        c14518h.a(new C0(b10));
        if (interfaceC14516g != null) {
            c14518h.a(new K0(true, 0, interfaceC14516g));
        }
        if (abstractC14508c != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) abstractC14508c));
        }
        this.f31228b = new G0(c14518h);
    }

    public a(int i10, BigInteger bigInteger, InterfaceC14516g interfaceC14516g) {
        this(i10, bigInteger, null, interfaceC14516g);
    }

    public a(BigInteger bigInteger) {
        this(bigInteger.bitLength(), bigInteger);
    }

    public a(BigInteger bigInteger, AbstractC14508c abstractC14508c, InterfaceC14516g interfaceC14516g) {
        this(bigInteger.bitLength(), bigInteger, abstractC14508c, interfaceC14516g);
    }

    public a(BigInteger bigInteger, InterfaceC14516g interfaceC14516g) {
        this(bigInteger, (AbstractC14508c) null, interfaceC14516g);
    }

    public a(E e10) {
        this.f31228b = e10;
    }
}
