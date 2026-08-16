package org.bouncycastle.x509;

import dk.C12947c;
import dk.InterfaceC12950f;
import hi.B0;
import hi.C13486b;
import hi.h0;
import hi.j0;
import hi.o0;
import hi.q0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Iterator;
import javax.security.auth.x500.X500Principal;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.asymmetric.x509.CertificateFactory;
import org.bouncycastle.jce.provider.C14720a;

public class x {

    public final InterfaceC12950f f102436a = new C12947c();

    public final CertificateFactory f102437b = new CertificateFactory();

    public q0 f102438c = new q0();

    public C14549x f102439d;

    public C13486b f102440e;

    public String f102441f;

    public X509Certificate a(PrivateKey privateKey) throws CertificateEncodingException, IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        return d(privateKey, null);
    }

    public X509Certificate b(PrivateKey privateKey, String str) throws CertificateEncodingException, IllegalStateException, NoSuchProviderException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        return c(privateKey, str, null);
    }

    public X509Certificate c(PrivateKey privateKey, String str, SecureRandom secureRandom) throws CertificateEncodingException, IllegalStateException, NoSuchProviderException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        j0 a10 = this.f102438c.a();
        try {
            return e(a10, w.a(this.f102439d, this.f102441f, str, privateKey, secureRandom, a10));
        } catch (IOException e10) {
            throw new ExtCertificateEncodingException("exception encoding TBS cert", e10);
        }
    }

    public X509Certificate d(PrivateKey privateKey, SecureRandom secureRandom) throws CertificateEncodingException, IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        j0 a10 = this.f102438c.a();
        try {
            return e(a10, w.b(this.f102439d, this.f102441f, privateKey, secureRandom, a10));
        } catch (IOException e10) {
            throw new ExtCertificateEncodingException("exception encoding TBS cert", e10);
        }
    }

    public final X509Certificate e(j0 j0Var, byte[] bArr) throws CertificateEncodingException {
        C14518h c14518h = new C14518h();
        c14518h.a(j0Var);
        c14518h.a(this.f102440e);
        c14518h.a(new C14538r0(bArr));
        try {
            return (X509Certificate) this.f102437b.engineGenerateCertificate(new ByteArrayInputStream(new G0(c14518h).s(InterfaceC14520i.f98892a)));
        } catch (Exception e10) {
            throw new ExtCertificateEncodingException("exception producing certificate object", e10);
        }
    }

    public X509Certificate f(PrivateKey privateKey) throws SecurityException, SignatureException, InvalidKeyException {
        try {
            return h(privateKey, C14720a.f101701e, null);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    public X509Certificate g(PrivateKey privateKey, String str) throws NoSuchProviderException, SecurityException, SignatureException, InvalidKeyException {
        return h(privateKey, str, null);
    }

    public X509Certificate h(PrivateKey privateKey, String str, SecureRandom secureRandom) throws NoSuchProviderException, SecurityException, SignatureException, InvalidKeyException {
        try {
            return c(privateKey, str, secureRandom);
        } catch (InvalidKeyException e10) {
            throw e10;
        } catch (NoSuchProviderException e11) {
            throw e11;
        } catch (SignatureException e12) {
            throw e12;
        } catch (GeneralSecurityException e13) {
            throw new SecurityException("exception: " + ((Object) e13));
        }
    }

    public X509Certificate i(PrivateKey privateKey, SecureRandom secureRandom) throws SecurityException, SignatureException, InvalidKeyException {
        try {
            return h(privateKey, C14720a.f101701e, secureRandom);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    public Iterator j() {
        return w.e();
    }

    public void k() {
        this.f102438c = new q0();
    }

    public void l(B0 b02) {
        this.f102438c.e(b02);
    }

    public void m(X500Principal x500Principal) {
        try {
            this.f102438c.e(new org.bouncycastle.jce.j(x500Principal.getEncoded()));
        } catch (IOException e10) {
            throw new IllegalArgumentException("can't process principal: " + ((Object) e10));
        }
    }

    public void n(Date date) {
        this.f102438c.b(new o0(date));
    }

    public void o(Date date) {
        this.f102438c.h(new o0(date));
    }

    public void p(PublicKey publicKey) {
        try {
            this.f102438c.l(h0.w(publicKey.getEncoded()));
        } catch (Exception e10) {
            throw new IllegalArgumentException("unable to process key - " + e10.toString());
        }
    }

    public void q(BigInteger bigInteger) {
        if (bigInteger.compareTo(BigInteger.ZERO) <= 0) {
            throw new IllegalArgumentException("serial number must be a positive integer");
        }
        this.f102438c.f(new C14539s(bigInteger));
    }

    public void r(String str) {
        this.f102441f = str;
        try {
            C14549x f10 = w.f(str);
            this.f102439d = f10;
            C13486b j10 = w.j(f10, str);
            this.f102440e = j10;
            this.f102438c.g(j10);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unknown signature type requested");
        }
    }

    public void s(B0 b02) {
        this.f102438c.k(b02);
    }

    public void t(X500Principal x500Principal) {
        try {
            this.f102438c.k(new org.bouncycastle.jce.j(x500Principal.getEncoded()));
        } catch (IOException e10) {
            throw new IllegalArgumentException("can't process principal: " + ((Object) e10));
        }
    }
}
