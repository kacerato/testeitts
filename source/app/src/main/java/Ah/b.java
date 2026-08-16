package Ah;

import java.io.IOException;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.M;
import oh.r;
import org.bouncycastle.asn1.ASN1ParsingException;

public class b extends AbstractC14545v {

    public static int f576e = 1;

    public static int f577f = 2;

    public d f578b;

    public byte[] f579c;

    public int f580d;

    public b(d dVar, byte[] bArr) throws IOException {
        this.f578b = dVar;
        this.f579c = org.bouncycastle.util.a.p(bArr);
        this.f580d = this.f580d | f576e | f577f;
    }

    public static b E(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj == null) {
            return null;
        }
        try {
            return new b(M.S(obj, 64));
        } catch (IOException e10) {
            throw new ASN1ParsingException("unable to parse data: " + e10.getMessage(), e10);
        }
    }

    public C14549x A() throws IOException {
        return this.f578b.x().x();
    }

    public l B() throws IOException {
        return new l(this.f578b.x().u() & 31);
    }

    public int C() throws IOException {
        return this.f578b.x().u() & 192;
    }

    public f D() throws IOException {
        return this.f578b.y();
    }

    public int F() throws IOException {
        return this.f578b.x().u();
    }

    public byte[] G() {
        return org.bouncycastle.util.a.p(this.f579c);
    }

    public final void H(r rVar) throws IOException {
        while (true) {
            B k10 = rVar.k();
            if (k10 == null) {
                return;
            }
            if (!(k10 instanceof M)) {
                throw new IOException("Invalid Input Stream for creating an Iso7816CertificateStructure");
            }
            I((M) k10);
        }
    }

    public final void I(M m10) throws IOException {
        int i10;
        int i11;
        this.f580d = 0;
        if (!m10.m(64, 33)) {
            throw new IOException("not a CARDHOLDER_CERTIFICATE :" + m10.g());
        }
        Enumeration J10 = E.G(m10.M(false, 16)).J();
        while (J10.hasMoreElements()) {
            Object nextElement = J10.nextElement();
            if (!(nextElement instanceof M)) {
                throw new IOException("Invalid Object, not an Iso7816CertificateStructure");
            }
            M S10 = M.S(nextElement, 64);
            int g10 = S10.g();
            if (g10 == 55) {
                this.f579c = AbstractC14551y.F(S10.M(false, 4)).H();
                i10 = this.f580d;
                i11 = f577f;
            } else {
                if (g10 != 78) {
                    throw new IOException("Invalid tag, not an Iso7816CertificateStructure :" + S10.g());
                }
                this.f578b = d.C(S10);
                i10 = this.f580d;
                i11 = f576e;
            }
            this.f580d = i10 | i11;
        }
        if (this.f580d == (f577f | f576e)) {
            return;
        }
        throw new IOException("invalid CARDHOLDER_CERTIFICATE :" + m10.g());
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f578b);
        c14518h.a(i.c(55, this.f579c));
        return i.b(33, new G0(c14518h));
    }

    public g u() throws IOException {
        return this.f578b.B();
    }

    public d v() {
        return this.f578b;
    }

    public int x() {
        return this.f578b.A();
    }

    public m y() throws IOException {
        return this.f578b.u();
    }

    public m z() throws IOException {
        return this.f578b.v();
    }

    public b(r rVar) throws IOException {
        H(rVar);
    }

    public b(M m10) throws IOException {
        I(m10);
    }
}
