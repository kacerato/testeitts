package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.IOException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import oh.C0;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.AbstractC14676r0;
import uh.C15634z;

public class JceKTSKeyTransRecipientInfoGenerator extends AbstractC14676r0 {

    public static final byte[] f100846d = em.h.b("0c14416e6f6e796d6f75732053656e64657220202020");

    public JceKTSKeyTransRecipientInfoGenerator(X509Certificate x509Certificate, C13486b c13486b) throws CertificateEncodingException {
        super(new C15634z(new org.bouncycastle.cert.jcajce.i(x509Certificate).x()), new org.bouncycastle.operator.jcajce.f(c13486b, x509Certificate.getPublicKey()));
    }

    public static byte[] b(C15634z c15634z) throws CertificateEncodingException {
        try {
            return c15634z.s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new CertificateEncodingException("Cannot process extracted IssuerAndSerialNumber: " + e10.getMessage()) {
                @Override
                public Throwable getCause() {
                    return e10;
                }
            };
        }
    }

    public static byte[] c(byte[] bArr) {
        try {
            return new C0(bArr).getEncoded();
        } catch (IOException e10) {
            throw new IllegalArgumentException("Cannot process subject key identifier: " + e10.getMessage()) {
                @Override
                public Throwable getCause() {
                    return e10;
                }
            };
        }
    }

    public JceKTSKeyTransRecipientInfoGenerator d(String str) {
        ((org.bouncycastle.operator.jcajce.j) this.f101013a).c(str);
        return this;
    }

    public JceKTSKeyTransRecipientInfoGenerator e(Provider provider) {
        ((org.bouncycastle.operator.jcajce.j) this.f101013a).d(provider);
        return this;
    }

    public JceKTSKeyTransRecipientInfoGenerator(X509Certificate x509Certificate, String str, int i10) throws CertificateEncodingException {
        this(x509Certificate, new C15634z(new org.bouncycastle.cert.jcajce.i(x509Certificate).x()), str, i10);
    }

    public JceKTSKeyTransRecipientInfoGenerator(X509Certificate x509Certificate, C15634z c15634z, String str, int i10) throws CertificateEncodingException {
        super(c15634z, new org.bouncycastle.operator.jcajce.j(x509Certificate, str, i10, f100846d, b(c15634z)));
    }

    public JceKTSKeyTransRecipientInfoGenerator(byte[] bArr, C13486b c13486b, PublicKey publicKey) {
        super(bArr, new org.bouncycastle.operator.jcajce.f(c13486b, publicKey));
    }

    public JceKTSKeyTransRecipientInfoGenerator(byte[] bArr, PublicKey publicKey, String str, int i10) {
        super(bArr, new org.bouncycastle.operator.jcajce.j(publicKey, str, i10, f100846d, c(bArr)));
    }
}
