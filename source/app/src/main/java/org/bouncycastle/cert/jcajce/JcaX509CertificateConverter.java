package org.bouncycastle.cert.jcajce;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.cert.CertificateException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import li.C14146h;

public class JcaX509CertificateConverter {

    public a f100436a;

    public static class ExCertificateException extends CertificateException {
        private Throwable cause;

        public ExCertificateException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public static class ExCertificateParsingException extends CertificateParsingException {
        private Throwable cause;

        public ExCertificateParsingException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public JcaX509CertificateConverter() {
        this.f100436a = new b();
        this.f100436a = new b();
    }

    public X509Certificate a(C14146h c14146h) throws CertificateException {
        try {
            return (X509Certificate) this.f100436a.b("X.509").generateCertificate(new ByteArrayInputStream(c14146h.getEncoded()));
        } catch (IOException e10) {
            throw new ExCertificateParsingException("exception parsing certificate: " + e10.getMessage(), e10);
        } catch (NoSuchProviderException e11) {
            throw new ExCertificateException("cannot find required provider:" + e11.getMessage(), e11);
        }
    }

    public JcaX509CertificateConverter b(String str) {
        this.f100436a = new o(str);
        return this;
    }

    public JcaX509CertificateConverter c(Provider provider) {
        this.f100436a = new p(provider);
        return this;
    }
}
