package jj;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class l {

    public String f93821a = SSLSocketFactory.TLS;

    public Provider f93822b;

    public KeyManager[] f93823c;

    public X509TrustManager[] f93824d;

    public SecureRandom f93825e;

    public class a implements k {
        public a() {
        }

        @Override
        public boolean a() {
            int i10 = 0;
            while (true) {
                X509TrustManager[] x509TrustManagerArr = l.this.f93824d;
                if (i10 == x509TrustManagerArr.length) {
                    return false;
                }
                if (x509TrustManagerArr[i10].getAcceptedIssuers().length > 0) {
                    return true;
                }
                i10++;
            }
        }

        @Override
        public javax.net.ssl.SSLSocketFactory b() throws NoSuchAlgorithmException, NoSuchProviderException, KeyManagementException {
            l lVar = l.this;
            Provider provider = lVar.f93822b;
            String str = lVar.f93821a;
            SSLContext sSLContext = provider != null ? SSLContext.getInstance(str, provider) : SSLContext.getInstance(str);
            l lVar2 = l.this;
            sSLContext.init(lVar2.f93823c, lVar2.f93824d, lVar2.f93825e);
            return sSLContext.getSocketFactory();
        }
    }

    public l(X509TrustManager x509TrustManager) {
        if (x509TrustManager == null) {
            throw new NullPointerException("Trust managers can not be null");
        }
        this.f93824d = new X509TrustManager[]{x509TrustManager};
    }

    public k a() {
        return new a();
    }

    public l b(KeyManager keyManager) {
        if (keyManager == null) {
            this.f93823c = null;
        } else {
            this.f93823c = new KeyManager[]{keyManager};
        }
        return this;
    }

    public l c(KeyManager[] keyManagerArr) {
        this.f93823c = keyManagerArr;
        return this;
    }

    public l d(String str) throws NoSuchProviderException {
        Provider provider = Security.getProvider(str);
        this.f93822b = provider;
        if (provider != null) {
            return this;
        }
        throw new NoSuchProviderException("JSSE provider not found: " + str);
    }

    public l e(Provider provider) {
        this.f93822b = provider;
        return this;
    }

    public l f(SecureRandom secureRandom) {
        this.f93825e = secureRandom;
        return this;
    }

    public l g(String str) {
        this.f93821a = str;
        return this;
    }

    public l(X509TrustManager[] x509TrustManagerArr) {
        if (x509TrustManagerArr == null) {
            throw new NullPointerException("Trust managers can not be null");
        }
        this.f93824d = x509TrustManagerArr;
    }
}
