package jj;

import hi.C13477A;
import hi.M;
import hi.N;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CRL;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertStore;
import java.security.cert.CertificateException;
import java.security.cert.CollectionCertStoreParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.X509TrustManager;
import li.C14146h;
import org.bouncycastle.jce.provider.C14720a;

public class C13868f {

    public class a implements X509TrustManager {
        @Override
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            throw new IllegalStateException("attempt to authenticate client connection");
        }

        @Override
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    public class b implements X509TrustManager {

        public final Set f93804a;

        public final CRL[] f93805b;

        public final X509Certificate[] f93806c;

        public b(Set set, CRL[] crlArr, X509Certificate[] x509CertificateArr) {
            this.f93804a = set;
            this.f93805b = crlArr;
            this.f93806c = x509CertificateArr;
        }

        @Override
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            throw new IllegalStateException("attempt to authenticate client connection");
        }

        @Override
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            try {
                CertStore certStore = CertStore.getInstance("Collection", new CollectionCertStoreParameters(Arrays.asList(x509CertificateArr)), C14720a.f101701e);
                CertPathBuilder certPathBuilder = CertPathBuilder.getInstance("PKIX", C14720a.f101701e);
                X509CertSelector x509CertSelector = new X509CertSelector();
                x509CertSelector.setCertificate(x509CertificateArr[0]);
                PKIXBuilderParameters pKIXBuilderParameters = new PKIXBuilderParameters((Set<TrustAnchor>) this.f93804a, x509CertSelector);
                pKIXBuilderParameters.addCertStore(certStore);
                if (this.f93805b != null) {
                    pKIXBuilderParameters.setRevocationEnabled(true);
                    pKIXBuilderParameters.addCertStore(CertStore.getInstance("Collection", new CollectionCertStoreParameters(Arrays.asList(this.f93805b))));
                } else {
                    pKIXBuilderParameters.setRevocationEnabled(false);
                }
                C13868f.d(x509CertificateArr[0]);
            } catch (CertificateException e10) {
                throw e10;
            } catch (GeneralSecurityException e11) {
                throw new CertificateException("unable to process certificates: " + e11.getMessage(), e11);
            }
        }

        @Override
        public X509Certificate[] getAcceptedIssuers() {
            X509Certificate[] x509CertificateArr = this.f93806c;
            int length = x509CertificateArr.length;
            X509Certificate[] x509CertificateArr2 = new X509Certificate[length];
            System.arraycopy(x509CertificateArr, 0, x509CertificateArr2, 0, length);
            return x509CertificateArr2;
        }
    }

    public static KeyManagerFactory a(String str, String str2, KeyStore keyStore, char[] cArr) throws UnrecoverableKeyException, NoSuchAlgorithmException, KeyStoreException, NoSuchProviderException {
        KeyManagerFactory keyManagerFactory;
        if (str == null && str2 == null) {
            str = KeyManagerFactory.getDefaultAlgorithm();
        } else if (str2 != null) {
            keyManagerFactory = KeyManagerFactory.getInstance(str, str2);
            keyManagerFactory.init(keyStore, cArr);
            return keyManagerFactory;
        }
        keyManagerFactory = KeyManagerFactory.getInstance(str);
        keyManagerFactory.init(keyStore, cArr);
        return keyManagerFactory;
    }

    public static X509TrustManager[] b(Set<TrustAnchor> set, CRL[] crlArr) {
        X509Certificate[] x509CertificateArr = new X509Certificate[set.size()];
        Iterator<TrustAnchor> it = set.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            x509CertificateArr[i10] = it.next().getTrustedCert();
            i10++;
        }
        return new X509TrustManager[]{new b(set, crlArr, x509CertificateArr)};
    }

    public static X509TrustManager c() {
        return new a();
    }

    public static void d(X509Certificate x509Certificate) throws CertificateException {
        try {
            C14146h c14146h = new C14146h(x509Certificate.getEncoded());
            N u10 = N.u(c14146h.d());
            if (u10 != null) {
                if (u10.x(4)) {
                    throw new CertificateException("Key usage must not contain keyCertSign");
                }
                if (!u10.x(128) && !u10.x(32)) {
                    throw new CertificateException("Key usage must be none, digitalSignature or keyEncipherment");
                }
            }
            C13477A u11 = C13477A.u(c14146h.d());
            if (u11 != null && !u11.y(M.f90685e) && !u11.y(M.f90681C) && !u11.y(M.f90682D)) {
                throw new CertificateException("Certificate extended key usage must include serverAuth, msSGC or nsSGC");
            }
        } catch (CertificateException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new CertificateException(e11.getMessage(), e11);
        }
    }
}
