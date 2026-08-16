package org.bouncycastle.cert.jcajce;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.cert.CRLException;
import java.security.cert.CertificateException;
import java.security.cert.X509CRL;
import li.C14145g;

public class JcaX509CRLConverter {

    public a f100435a;

    public static class ExCRLException extends CRLException {
        private Throwable cause;

        public ExCRLException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public JcaX509CRLConverter() {
        this.f100435a = new b();
        this.f100435a = new b();
    }

    public X509CRL a(C14145g c14145g) throws CRLException {
        try {
            return (X509CRL) this.f100435a.b("X.509").generateCRL(new ByteArrayInputStream(c14145g.getEncoded()));
        } catch (IOException e10) {
            throw new ExCRLException("exception parsing certificate: " + e10.getMessage(), e10);
        } catch (NoSuchProviderException e11) {
            throw new ExCRLException("cannot find required provider:" + e11.getMessage(), e11);
        } catch (CertificateException e12) {
            throw new ExCRLException("cannot create factory: " + e12.getMessage(), e12);
        }
    }

    public JcaX509CRLConverter b(String str) {
        this.f100435a = new o(str);
        return this;
    }

    public JcaX509CRLConverter c(Provider provider) {
        this.f100435a = new p(provider);
        return this;
    }
}
