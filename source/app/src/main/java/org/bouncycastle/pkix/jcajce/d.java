package org.bouncycastle.pkix.jcajce;

import Xh.v;
import java.security.PrivateKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import li.C14146h;

public class d extends Vk.b {

    public final PrivateKey f102011c;

    public final X509Certificate[] f102012d;

    public d(PrivateKey privateKey, X509Certificate x509Certificate) {
        this(privateKey, new X509Certificate[]{x509Certificate});
    }

    public static C14146h[] f(X509Certificate[] x509CertificateArr) {
        int length = x509CertificateArr.length;
        C14146h[] c14146hArr = new C14146h[length];
        for (int i10 = 0; i10 != length; i10++) {
            try {
                c14146hArr[i10] = new org.bouncycastle.cert.jcajce.i(x509CertificateArr[i10]);
            } catch (CertificateEncodingException e10) {
                throw new IllegalArgumentException("Unable to process certificates: " + e10.getMessage());
            }
        }
        return c14146hArr;
    }

    public static v h(PrivateKey privateKey) {
        try {
            return v.v(privateKey.getEncoded());
        } catch (Exception unused) {
            return null;
        }
    }

    public PrivateKey g() {
        return this.f102011c;
    }

    public X509Certificate i() {
        return this.f102012d[0];
    }

    public X509Certificate[] j() {
        X509Certificate[] x509CertificateArr = this.f102012d;
        int length = x509CertificateArr.length;
        X509Certificate[] x509CertificateArr2 = new X509Certificate[length];
        System.arraycopy(x509CertificateArr, 0, x509CertificateArr2, 0, length);
        return x509CertificateArr2;
    }

    public d(PrivateKey privateKey, X509Certificate[] x509CertificateArr) {
        super(h(privateKey), f(x509CertificateArr));
        this.f102011c = privateKey;
        X509Certificate[] x509CertificateArr2 = new X509Certificate[x509CertificateArr.length];
        this.f102012d = x509CertificateArr2;
        System.arraycopy(x509CertificateArr, 0, x509CertificateArr2, 0, x509CertificateArr.length);
    }
}
