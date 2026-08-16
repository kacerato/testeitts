package org.bouncycastle.x509;

import dk.C12947c;
import dk.InterfaceC12950f;
import hi.A0;
import hi.B0;
import hi.C13479C;
import hi.C13486b;
import hi.i0;
import hi.o0;
import hi.t0;
import hi.z0;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oh.C14518h;
import oh.C14530n;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.jce.provider.U;

public class X509V2CRLGenerator {

    public C14549x f102343c;

    public C13486b f102344d;

    public String f102345e;

    public final InterfaceC12950f f102341a = new C12947c();

    public t0 f102342b = new t0();

    public A0 f102346f = new A0();

    public static class ExtCRLException extends CRLException {
        Throwable cause;

        public ExtCRLException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public void a(X509CRL x509crl) throws CRLException {
        Set<? extends X509CRLEntry> revokedCertificates = x509crl.getRevokedCertificates();
        if (revokedCertificates != null) {
            Iterator<? extends X509CRLEntry> it = revokedCertificates.iterator();
            while (it.hasNext()) {
                try {
                    this.f102342b.e(E.G(new oh.r(it.next().getEncoded()).k()));
                } catch (IOException e10) {
                    throw new CRLException("exception processing encoding of CRL: " + e10.toString());
                }
            }
        }
    }

    public void b(BigInteger bigInteger, Date date, int i10) {
        this.f102342b.a(new C14539s(bigInteger), new o0(date), i10);
    }

    public void c(BigInteger bigInteger, Date date, int i10, Date date2) {
        this.f102342b.b(new C14539s(bigInteger), new o0(date), i10, new C14530n(date2));
    }

    public void d(BigInteger bigInteger, Date date, z0 z0Var) {
        this.f102342b.c(new C14539s(bigInteger), new o0(date), C13479C.C(z0Var));
    }

    public void e(String str, boolean z10, InterfaceC14516g interfaceC14516g) {
        g(new C14549x(str), z10, interfaceC14516g);
    }

    public void f(String str, boolean z10, byte[] bArr) {
        h(new C14549x(str), z10, bArr);
    }

    public void g(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) {
        this.f102346f.a(new C14549x(c14549x.J()), z10, interfaceC14516g);
    }

    public void h(C14549x c14549x, boolean z10, byte[] bArr) {
        this.f102346f.b(new C14549x(c14549x.J()), z10, bArr);
    }

    public X509CRL i(PrivateKey privateKey) throws CRLException, IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        return l(privateKey, null);
    }

    public X509CRL j(PrivateKey privateKey, String str) throws CRLException, IllegalStateException, NoSuchProviderException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        return k(privateKey, str, null);
    }

    public X509CRL k(PrivateKey privateKey, String str, SecureRandom secureRandom) throws CRLException, IllegalStateException, NoSuchProviderException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        i0 m10 = m();
        try {
            return n(m10, w.a(this.f102343c, this.f102345e, str, privateKey, secureRandom, m10));
        } catch (IOException e10) {
            throw new ExtCRLException("cannot generate CRL encoding", e10);
        }
    }

    public X509CRL l(PrivateKey privateKey, SecureRandom secureRandom) throws CRLException, IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        i0 m10 = m();
        try {
            return n(m10, w.b(this.f102343c, this.f102345e, privateKey, secureRandom, m10));
        } catch (IOException e10) {
            throw new ExtCRLException("cannot generate CRL encoding", e10);
        }
    }

    public final i0 m() {
        if (!this.f102346f.d()) {
            this.f102342b.m(this.f102346f.c());
        }
        return this.f102342b.i();
    }

    public final X509CRL n(i0 i0Var, byte[] bArr) throws CRLException {
        C14518h c14518h = new C14518h();
        c14518h.a(i0Var);
        c14518h.a(this.f102344d);
        c14518h.a(new C14538r0(bArr));
        return new U(hi.r.u(new G0(c14518h)));
    }

    public X509CRL o(PrivateKey privateKey) throws SecurityException, SignatureException, InvalidKeyException {
        try {
            return q(privateKey, C14720a.f101701e, null);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    public X509CRL p(PrivateKey privateKey, String str) throws NoSuchProviderException, SecurityException, SignatureException, InvalidKeyException {
        return q(privateKey, str, null);
    }

    public X509CRL q(PrivateKey privateKey, String str, SecureRandom secureRandom) throws NoSuchProviderException, SecurityException, SignatureException, InvalidKeyException {
        try {
            return k(privateKey, str, secureRandom);
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

    public X509CRL r(PrivateKey privateKey, SecureRandom secureRandom) throws SecurityException, SignatureException, InvalidKeyException {
        try {
            return q(privateKey, C14720a.f101701e, secureRandom);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    public Iterator s() {
        return w.e();
    }

    public void t() {
        this.f102342b = new t0();
        this.f102346f.e();
    }

    public void u(B0 b02) {
        this.f102342b.o(b02);
    }

    public void v(X500Principal x500Principal) {
        try {
            this.f102342b.o(new org.bouncycastle.jce.j(x500Principal.getEncoded()));
        } catch (IOException e10) {
            throw new IllegalArgumentException("can't process principal: " + ((Object) e10));
        }
    }

    public void w(Date date) {
        this.f102342b.p(new o0(date));
    }

    public void x(String str) {
        this.f102345e = str;
        try {
            C14549x f10 = w.f(str);
            this.f102343c = f10;
            C13486b j10 = w.j(f10, str);
            this.f102344d = j10;
            this.f102342b.r(j10);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unknown signature type requested");
        }
    }

    public void y(Date date) {
        this.f102342b.s(new o0(date));
    }
}
