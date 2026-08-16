package org.bouncycastle.x509;

import dk.C12947c;
import dk.InterfaceC12950f;
import hi.A0;
import hi.B0;
import hi.C13486b;
import hi.h0;
import hi.j0;
import hi.o0;
import hi.u0;
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
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Iterator;
import javax.security.auth.x500.X500Principal;
import jm.C13883b;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.asymmetric.x509.CertificateFactory;
import org.bouncycastle.jce.provider.C14720a;

public class z {

    public C14549x f102448d;

    public C13486b f102449e;

    public String f102450f;

    public final InterfaceC12950f f102445a = new C12947c();

    public final CertificateFactory f102446b = new CertificateFactory();

    public u0 f102447c = new u0();

    public A0 f102451g = new A0();

    public void A(String str) {
        this.f102450f = str;
        try {
            C14549x f10 = w.f(str);
            this.f102448d = f10;
            C13486b j10 = w.j(f10, str);
            this.f102449e = j10;
            this.f102447c.l(j10);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unknown signature type requested: " + str);
        }
    }

    public void B(B0 b02) {
        this.f102447c.p(b02);
    }

    public void C(X500Principal x500Principal) {
        try {
            this.f102447c.p(new org.bouncycastle.jce.j(x500Principal.getEncoded()));
        } catch (IOException e10) {
            throw new IllegalArgumentException("can't process principal: " + ((Object) e10));
        }
    }

    public void D(boolean[] zArr) {
        this.f102447c.r(e(zArr));
    }

    public void a(String str, boolean z10, InterfaceC14516g interfaceC14516g) {
        c(new C14549x(str), z10, interfaceC14516g);
    }

    public void b(String str, boolean z10, byte[] bArr) {
        d(new C14549x(str), z10, bArr);
    }

    public void c(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) {
        this.f102451g.a(new C14549x(c14549x.J()), z10, interfaceC14516g);
    }

    public void d(C14549x c14549x, boolean z10, byte[] bArr) {
        this.f102451g.b(new C14549x(c14549x.J()), z10, bArr);
    }

    public final C14538r0 e(boolean[] zArr) {
        byte[] bArr = new byte[(zArr.length + 7) / 8];
        for (int i10 = 0; i10 != zArr.length; i10++) {
            int i11 = i10 / 8;
            bArr[i11] = (byte) (bArr[i11] | (zArr[i10] ? 1 << (7 - (i10 % 8)) : 0));
        }
        int length = zArr.length % 8;
        return length == 0 ? new C14538r0(bArr) : new C14538r0(bArr, 8 - length);
    }

    public void f(String str, boolean z10, X509Certificate x509Certificate) throws CertificateParsingException {
        byte[] extensionValue = x509Certificate.getExtensionValue(str);
        if (extensionValue != null) {
            try {
                a(str, z10, C13883b.a(extensionValue));
            } catch (IOException e10) {
                throw new CertificateParsingException(e10.toString());
            }
        } else {
            throw new CertificateParsingException("extension " + str + " not present");
        }
    }

    public void g(C14549x c14549x, boolean z10, X509Certificate x509Certificate) throws CertificateParsingException {
        f(c14549x.J(), z10, x509Certificate);
    }

    public X509Certificate h(PrivateKey privateKey) throws CertificateEncodingException, IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        return k(privateKey, null);
    }

    public X509Certificate i(PrivateKey privateKey, String str) throws CertificateEncodingException, IllegalStateException, NoSuchProviderException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        return j(privateKey, str, null);
    }

    public X509Certificate j(PrivateKey privateKey, String str, SecureRandom secureRandom) throws CertificateEncodingException, IllegalStateException, NoSuchProviderException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        j0 m10 = m();
        try {
            try {
                return l(m10, w.a(this.f102448d, this.f102450f, str, privateKey, secureRandom, m10));
            } catch (Exception e10) {
                throw new ExtCertificateEncodingException("exception producing certificate object", e10);
            }
        } catch (IOException e11) {
            throw new ExtCertificateEncodingException("exception encoding TBS cert", e11);
        }
    }

    public X509Certificate k(PrivateKey privateKey, SecureRandom secureRandom) throws CertificateEncodingException, IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        j0 m10 = m();
        try {
            try {
                return l(m10, w.b(this.f102448d, this.f102450f, privateKey, secureRandom, m10));
            } catch (Exception e10) {
                throw new ExtCertificateEncodingException("exception producing certificate object", e10);
            }
        } catch (IOException e11) {
            throw new ExtCertificateEncodingException("exception encoding TBS cert", e11);
        }
    }

    public final X509Certificate l(j0 j0Var, byte[] bArr) throws Exception {
        C14518h c14518h = new C14518h();
        c14518h.a(j0Var);
        c14518h.a(this.f102449e);
        c14518h.a(new C14538r0(bArr));
        return (X509Certificate) this.f102446b.engineGenerateCertificate(new ByteArrayInputStream(new G0(c14518h).s(InterfaceC14520i.f98892a)));
    }

    public final j0 m() {
        if (!this.f102451g.d()) {
            this.f102447c.g(this.f102451g.c());
        }
        return this.f102447c.b();
    }

    public X509Certificate n(PrivateKey privateKey) throws SecurityException, SignatureException, InvalidKeyException {
        try {
            return p(privateKey, C14720a.f101701e, null);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    public X509Certificate o(PrivateKey privateKey, String str) throws NoSuchProviderException, SecurityException, SignatureException, InvalidKeyException {
        return p(privateKey, str, null);
    }

    public X509Certificate p(PrivateKey privateKey, String str, SecureRandom secureRandom) throws NoSuchProviderException, SecurityException, SignatureException, InvalidKeyException {
        try {
            return j(privateKey, str, secureRandom);
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

    public X509Certificate q(PrivateKey privateKey, SecureRandom secureRandom) throws SecurityException, SignatureException, InvalidKeyException {
        try {
            return p(privateKey, C14720a.f101701e, secureRandom);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    public Iterator r() {
        return w.e();
    }

    public void s() {
        this.f102447c = new u0();
        this.f102451g.e();
    }

    public void t(B0 b02) {
        this.f102447c.i(b02);
    }

    public void u(X500Principal x500Principal) {
        try {
            this.f102447c.i(new org.bouncycastle.jce.j(x500Principal.getEncoded()));
        } catch (IOException e10) {
            throw new IllegalArgumentException("can't process principal: " + ((Object) e10));
        }
    }

    public void v(boolean[] zArr) {
        this.f102447c.j(e(zArr));
    }

    public void w(Date date) {
        this.f102447c.d(new o0(date));
    }

    public void x(Date date) {
        this.f102447c.m(new o0(date));
    }

    public void y(PublicKey publicKey) throws IllegalArgumentException {
        try {
            this.f102447c.q(h0.w(new oh.r(publicKey.getEncoded()).k()));
        } catch (Exception e10) {
            throw new IllegalArgumentException("unable to process key - " + e10.toString());
        }
    }

    public void z(BigInteger bigInteger) {
        if (bigInteger.compareTo(BigInteger.ZERO) <= 0) {
            throw new IllegalArgumentException("serial number must be a positive integer");
        }
        this.f102447c.k(new C14539s(bigInteger));
    }
}
