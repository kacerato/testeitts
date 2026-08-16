package ti;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import oh.B;
import oh.r;
import org.bouncycastle.asn1.ASN1Exception;
import org.bouncycastle.cert.CertIOException;
import org.bouncycastle.cert.ocsp.OCSPException;

public class C15454g {

    public static final int f117672b = 0;

    public static final int f117673c = 1;

    public static final int f117674d = 2;

    public static final int f117675e = 3;

    public static final int f117676f = 5;

    public static final int f117677g = 6;

    public Vh.g f117678a;

    public C15454g(Vh.g gVar) {
        this.f117678a = gVar;
    }

    public byte[] a() throws IOException {
        return this.f117678a.getEncoded();
    }

    public Object b() throws OCSPException {
        Vh.k x10 = this.f117678a.x();
        if (x10 == null) {
            return null;
        }
        if (!x10.y().A(Vh.e.f27027b)) {
            return x10.x();
        }
        try {
            return new C15448a(Vh.a.v(B.B(x10.x().H())));
        } catch (Exception e10) {
            throw new OCSPException("problem decoding object: " + ((Object) e10), e10);
        }
    }

    public int c() {
        return this.f117678a.y().v();
    }

    public Vh.g d() {
        return this.f117678a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C15454g) {
            return this.f117678a.equals(((C15454g) obj).f117678a);
        }
        return false;
    }

    public int hashCode() {
        return this.f117678a.hashCode();
    }

    public C15454g(InputStream inputStream) throws IOException {
        this(new r(inputStream));
    }

    public C15454g(r rVar) throws IOException {
        try {
            Vh.g u10 = Vh.g.u(rVar.k());
            this.f117678a = u10;
            if (u10 == null) {
                throw new CertIOException("malformed response: no response data found");
            }
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed response: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed response: " + e11.getMessage(), e11);
        } catch (ASN1Exception e12) {
            throw new CertIOException("malformed response: " + e12.getMessage(), e12);
        }
    }

    public C15454g(byte[] bArr) throws IOException {
        this(new ByteArrayInputStream(bArr));
    }
}
