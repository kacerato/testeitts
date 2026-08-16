package Ah;

import java.io.IOException;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.M;
import org.bouncycastle.asn1.ASN1ParsingException;

public class c extends AbstractC14545v {

    public static final int f581f = 1;

    public static final int f582g = 2;

    public final M f583b;

    public d f584c;

    public byte[] f585d = null;

    public byte[] f586e;

    public c(M m10) throws IOException {
        this.f586e = null;
        this.f583b = m10;
        if (!m10.m(64, 7)) {
            A(m10);
            return;
        }
        E G10 = E.G(m10.M(false, 16));
        A(M.S(G10.I(0), 64));
        this.f586e = AbstractC14551y.F(M.R(G10.I(G10.size() - 1)).M(false, 4)).H();
    }

    public static c w(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj == null) {
            return null;
        }
        try {
            return new c(M.S(obj, 64));
        } catch (IOException e10) {
            throw new ASN1ParsingException("unable to parse data: " + e10.getMessage(), e10);
        }
    }

    public final void A(M m10) throws IOException {
        if (!m10.m(64, 33)) {
            throw new IOException("not a CARDHOLDER_CERTIFICATE in request:" + m10.g());
        }
        Enumeration J10 = E.G(m10.M(false, 16)).J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            M S10 = M.S(J10.nextElement(), 64);
            int g10 = S10.g();
            if (g10 == 55) {
                this.f585d = AbstractC14551y.F(S10.M(false, 4)).H();
                i10 |= 2;
            } else {
                if (g10 != 78) {
                    throw new IOException("Invalid tag, not an CV Certificate Request element:" + S10.g());
                }
                this.f584c = d.C(S10);
                i10 |= 1;
            }
        }
        if ((i10 & 3) != 0) {
            return;
        }
        throw new IOException("Invalid CARDHOLDER_CERTIFICATE in request:" + m10.g());
    }

    @Override
    public B r() {
        M m10 = this.f583b;
        if (m10 != null) {
            return m10;
        }
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f584c);
        c14518h.a(i.c(55, this.f585d));
        return i.b(33, new G0(c14518h));
    }

    public d u() {
        return this.f584c;
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f585d);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f586e);
    }

    public n y() {
        return this.f584c.D();
    }

    public boolean z() {
        return this.f586e != null;
    }
}
