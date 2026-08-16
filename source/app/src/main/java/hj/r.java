package Hj;

import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.X509Certificate;
import java.util.Date;

public class r {

    public final v f8539a;

    public final Date f8540b;

    public final CertPath f8541c;

    public final int f8542d;

    public final X509Certificate f8543e;

    public final PublicKey f8544f;

    public r(v vVar, Date date, CertPath certPath, int i10, X509Certificate x509Certificate, PublicKey publicKey) {
        this.f8539a = vVar;
        this.f8540b = date;
        this.f8541c = certPath;
        this.f8542d = i10;
        this.f8543e = x509Certificate;
        this.f8544f = publicKey;
    }

    public CertPath a() {
        return this.f8541c;
    }

    public int b() {
        return this.f8542d;
    }

    public v c() {
        return this.f8539a;
    }

    public X509Certificate d() {
        return this.f8543e;
    }

    public Date e() {
        return new Date(this.f8540b.getTime());
    }

    public PublicKey f() {
        return this.f8544f;
    }
}
