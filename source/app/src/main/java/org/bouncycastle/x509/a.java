package org.bouncycastle.x509;

import hi.C13481E;
import hi.C13482F;
import hi.C13486b;
import hi.I;
import hi.K;
import hi.S;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.Principal;
import java.security.cert.CertSelector;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.security.auth.x500.X500Principal;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import org.bouncycastle.jce.provider.C14720a;

public class a implements CertSelector, org.bouncycastle.util.r {

    public final I f102347b;

    public a(int i10, String str, String str2, byte[] bArr) {
        this.f102347b = new I(new S(i10, new C14549x(str2), new C13486b(new C14549x(str)), org.bouncycastle.util.a.p(bArr)));
    }

    @Override
    public boolean Z2(Object obj) {
        if (obj instanceof X509Certificate) {
            return match((Certificate) obj);
        }
        return false;
    }

    public final C13482F a(org.bouncycastle.jce.j jVar) {
        return C13482F.w(new G0(new C13481E(jVar)));
    }

    public String b() {
        if (this.f102347b.x() != null) {
            return this.f102347b.x().u().u().J();
        }
        return null;
    }

    public int c() {
        if (this.f102347b.x() != null) {
            return this.f102347b.x().v().L();
        }
        return -1;
    }

    @Override
    public Object clone() {
        return new a((E) this.f102347b.r());
    }

    public Principal[] d() {
        if (this.f102347b.v() != null) {
            return i(this.f102347b.v());
        }
        return null;
    }

    public Principal[] e() {
        if (this.f102347b.u() != null) {
            return i(this.f102347b.u().x());
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            return this.f102347b.equals(((a) obj).f102347b);
        }
        return false;
    }

    public final Object[] f(C13481E[] c13481eArr) {
        ArrayList arrayList = new ArrayList(c13481eArr.length);
        for (int i10 = 0; i10 != c13481eArr.length; i10++) {
            if (c13481eArr[i10].g() == 4) {
                try {
                    arrayList.add(new X500Principal(c13481eArr[i10].x().r().getEncoded()));
                } catch (IOException unused) {
                    throw new RuntimeException("badly formed Name object");
                }
            }
        }
        return arrayList.toArray(new Object[arrayList.size()]);
    }

    public byte[] g() {
        if (this.f102347b.x() != null) {
            return this.f102347b.x().y().F();
        }
        return null;
    }

    public String h() {
        if (this.f102347b.x() == null) {
            return null;
        }
        this.f102347b.x().z().J();
        return null;
    }

    public int hashCode() {
        return this.f102347b.hashCode();
    }

    public final Principal[] i(C13482F c13482f) {
        Object[] f10 = f(c13482f.y());
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 != f10.length; i10++) {
            Object obj = f10[i10];
            if (obj instanceof Principal) {
                arrayList.add(obj);
            }
        }
        return (Principal[]) arrayList.toArray(new Principal[arrayList.size()]);
    }

    public BigInteger j() {
        if (this.f102347b.u() != null) {
            return this.f102347b.u().z().I();
        }
        return null;
    }

    public final boolean k(org.bouncycastle.jce.j jVar, C13482F c13482f) {
        C13481E[] y10 = c13482f.y();
        for (int i10 = 0; i10 != y10.length; i10++) {
            C13481E c13481e = y10[i10];
            if (c13481e.g() == 4) {
                try {
                    if (new org.bouncycastle.jce.j(c13481e.x().r().getEncoded()).equals(jVar)) {
                        return true;
                    }
                } catch (IOException unused) {
                    continue;
                }
            }
        }
        return false;
    }

    @Override
    public boolean match(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            return false;
        }
        X509Certificate x509Certificate = (X509Certificate) certificate;
        if (this.f102347b.u() != null) {
            return this.f102347b.u().z().L(x509Certificate.getSerialNumber()) && k(org.bouncycastle.jce.g.b(x509Certificate), this.f102347b.u().x());
        }
        if (this.f102347b.v() != null && k(org.bouncycastle.jce.g.c(x509Certificate), this.f102347b.v())) {
            return true;
        }
        if (this.f102347b.x() != null) {
            MessageDigest messageDigest = MessageDigest.getInstance(b(), C14720a.f101701e);
            int c10 = c();
            if (c10 == 0) {
                messageDigest.update(certificate.getPublicKey().getEncoded());
            } else if (c10 == 1) {
                messageDigest.update(certificate.getEncoded());
            }
            org.bouncycastle.util.a.g(messageDigest.digest(), g());
        }
        return false;
    }

    public a(X509Certificate x509Certificate) throws CertificateParsingException {
        try {
            this.f102347b = new I(new K(a(org.bouncycastle.jce.g.b(x509Certificate)), new C14539s(x509Certificate.getSerialNumber())));
        } catch (Exception e10) {
            throw new CertificateParsingException(e10.getMessage());
        }
    }

    public a(X500Principal x500Principal) {
        this(w.c(x500Principal));
    }

    public a(X500Principal x500Principal, BigInteger bigInteger) {
        this(w.c(x500Principal), bigInteger);
    }

    public a(E e10) {
        this.f102347b = I.w(e10);
    }

    public a(org.bouncycastle.jce.j jVar) {
        this.f102347b = new I(a(jVar));
    }

    public a(org.bouncycastle.jce.j jVar, BigInteger bigInteger) {
        this.f102347b = new I(new K(C13482F.w(new G0(new C13481E(jVar))), new C14539s(bigInteger)));
    }
}
