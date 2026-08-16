package Xh;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.M;

public class z extends AbstractC14545v {

    public int f29180b;

    public BigInteger f29181c;

    public BigInteger f29182d;

    public BigInteger f29183e;

    public BigInteger f29184f;

    public BigInteger f29185g;

    public BigInteger f29186h;

    public BigInteger f29187i;

    public BigInteger f29188j;

    public oh.E f29189k;

    public z(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        this.f29189k = null;
        this.f29180b = 0;
        this.f29181c = bigInteger;
        this.f29182d = bigInteger2;
        this.f29183e = bigInteger3;
        this.f29184f = bigInteger4;
        this.f29185g = bigInteger5;
        this.f29186h = bigInteger6;
        this.f29187i = bigInteger7;
        this.f29188j = bigInteger8;
    }

    public static z y(Object obj) {
        if (obj instanceof z) {
            return (z) obj;
        }
        if (obj instanceof oh.E) {
            return new z((oh.E) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static z z(M m10, boolean z10) {
        return y(oh.E.H(m10, z10));
    }

    public BigInteger A() {
        return this.f29181c;
    }

    public BigInteger B() {
        return this.f29184f;
    }

    public BigInteger C() {
        return this.f29185g;
    }

    public BigInteger D() {
        return this.f29183e;
    }

    public BigInteger E() {
        return this.f29182d;
    }

    public int F() {
        return this.f29180b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(10);
        c14518h.a(new C14539s(this.f29180b));
        c14518h.a(new C14539s(A()));
        c14518h.a(new C14539s(E()));
        c14518h.a(new C14539s(D()));
        c14518h.a(new C14539s(B()));
        c14518h.a(new C14539s(C()));
        c14518h.a(new C14539s(v()));
        c14518h.a(new C14539s(x()));
        c14518h.a(new C14539s(u()));
        oh.E e10 = this.f29189k;
        if (e10 != null) {
            c14518h.a(e10);
        }
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f29188j;
    }

    public BigInteger v() {
        return this.f29186h;
    }

    public BigInteger x() {
        return this.f29187i;
    }

    public z(oh.E e10) {
        this.f29189k = null;
        Enumeration J10 = e10.J();
        int O10 = ((C14539s) J10.nextElement()).O();
        if (O10 < 0 || O10 > 1) {
            throw new IllegalArgumentException("wrong version for RSA private key");
        }
        this.f29180b = O10;
        this.f29181c = ((C14539s) J10.nextElement()).I();
        this.f29182d = ((C14539s) J10.nextElement()).I();
        this.f29183e = ((C14539s) J10.nextElement()).I();
        this.f29184f = ((C14539s) J10.nextElement()).I();
        this.f29185g = ((C14539s) J10.nextElement()).I();
        this.f29186h = ((C14539s) J10.nextElement()).I();
        this.f29187i = ((C14539s) J10.nextElement()).I();
        this.f29188j = ((C14539s) J10.nextElement()).I();
        if (J10.hasMoreElements()) {
            this.f29189k = (oh.E) J10.nextElement();
        }
    }
}
