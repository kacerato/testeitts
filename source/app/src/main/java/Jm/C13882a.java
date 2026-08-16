package jm;

import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13499k;
import hi.h0;
import hi.y0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.PublicKey;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import oh.AbstractC14551y;
import oh.E;
import org.bouncycastle.jce.g;

public class C13882a extends C13499k {
    public C13882a(C13478B c13478b) {
        super((E) c13478b.A());
    }

    public static E B(X509Certificate x509Certificate) throws CertificateParsingException {
        try {
            if (x509Certificate.getVersion() != 3) {
                return (E) new C13499k(h0.w(x509Certificate.getPublicKey().getEncoded()), new C13482F(new C13481E(g.b(x509Certificate))), x509Certificate.getSerialNumber()).r();
            }
            C13481E c13481e = new C13481E(g.b(x509Certificate));
            byte[] extensionValue = x509Certificate.getExtensionValue(C13478B.f90530f.J());
            return extensionValue != null ? (E) new C13499k(((AbstractC14551y) C13883b.a(extensionValue)).H(), new C13482F(c13481e), x509Certificate.getSerialNumber()).r() : (E) new C13499k(h0.w(x509Certificate.getPublicKey().getEncoded()), new C13482F(c13481e), x509Certificate.getSerialNumber()).r();
        } catch (Exception e10) {
            throw new CertificateParsingException("Exception extracting certificate details: " + e10.toString());
        }
    }

    public static E C(PublicKey publicKey) throws InvalidKeyException {
        try {
            return (E) new C13499k(h0.w(publicKey.getEncoded())).r();
        } catch (Exception e10) {
            throw new InvalidKeyException("can't process key: " + ((Object) e10));
        }
    }

    public C13882a(y0 y0Var) {
        super((E) y0Var.b());
    }

    public C13882a(PublicKey publicKey) throws InvalidKeyException {
        super(C(publicKey));
    }

    public C13882a(X509Certificate x509Certificate) throws CertificateParsingException {
        super(B(x509Certificate));
    }

    public C13882a(byte[] bArr) throws IOException {
        super((E) C13883b.a(bArr));
    }
}
