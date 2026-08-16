package Ah;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;

public class o extends n {

    public static int f777f = 1;

    public static int f778g = 2;

    public C14549x f779b;

    public BigInteger f780c;

    public BigInteger f781d;

    public int f782e = 0;

    public o(C14549x c14549x, BigInteger bigInteger, BigInteger bigInteger2) {
        this.f779b = c14549x;
        this.f780c = bigInteger;
        this.f781d = bigInteger2;
    }

    public final void A(p pVar) {
        int i10 = this.f782e;
        int i11 = f777f;
        if ((i10 & i11) != 0) {
            throw new IllegalArgumentException("Modulus already set");
        }
        this.f782e = i10 | i11;
        this.f780c = pVar.x();
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f779b);
        c14518h.a(new p(1, x()));
        c14518h.a(new p(2, y()));
        return new G0(c14518h);
    }

    @Override
    public C14549x v() {
        return this.f779b;
    }

    public BigInteger x() {
        return this.f780c;
    }

    public BigInteger y() {
        return this.f781d;
    }

    public final void z(p pVar) {
        int i10 = this.f782e;
        int i11 = f778g;
        if ((i10 & i11) != 0) {
            throw new IllegalArgumentException("Exponent already set");
        }
        this.f782e = i10 | i11;
        this.f781d = pVar.x();
    }

    public o(E e10) {
        Enumeration J10 = e10.J();
        this.f779b = C14549x.K(J10.nextElement());
        while (J10.hasMoreElements()) {
            p v10 = p.v(J10.nextElement());
            int g10 = v10.g();
            if (g10 == 1) {
                A(v10);
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("Unknown DERTaggedObject :" + v10.g() + "-> not an Iso7816RSAPublicKeyStructure");
                }
                z(v10);
            }
        }
        if (this.f782e != 3) {
            throw new IllegalArgumentException("missing argument -> not an Iso7816RSAPublicKeyStructure");
        }
    }
}
