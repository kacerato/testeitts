package Pg;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.A;
import org.conscrypt.Conscrypt;

public class b extends f {
    public static b v() {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (Conscrypt.isAvailable()) {
                return new b();
            }
            return null;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    @Override
    public void g(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }

    @Override
    public void h(SSLSocket sSLSocket, String str, List<A> list) {
        if (!Conscrypt.isConscrypt(sSLSocket)) {
            super.h(sSLSocket, str, list);
            return;
        }
        if (str != null) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            Conscrypt.setHostname(sSLSocket, str);
        }
        Conscrypt.setApplicationProtocols(sSLSocket, (String[]) f.b(list).toArray(new String[0]));
    }

    @Override
    public SSLContext m() {
        try {
            return SSLContext.getInstance("TLSv1.3", w());
        } catch (NoSuchAlgorithmException e10) {
            try {
                return SSLContext.getInstance(org.apache.http.conn.ssl.SSLSocketFactory.TLS, w());
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("No TLS provider", e10);
            }
        }
    }

    @Override
    @Nullable
    public String n(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket) ? Conscrypt.getApplicationProtocol(sSLSocket) : super.n(sSLSocket);
    }

    @Override
    @Nullable
    public X509TrustManager u(SSLSocketFactory sSLSocketFactory) {
        if (!Conscrypt.isConscrypt(sSLSocketFactory)) {
            return super.u(sSLSocketFactory);
        }
        try {
            Object t10 = f.t(sSLSocketFactory, Object.class, "sslParameters");
            if (t10 != null) {
                return (X509TrustManager) f.t(t10, X509TrustManager.class, "x509TrustManager");
            }
            return null;
        } catch (Exception e10) {
            throw new UnsupportedOperationException("clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on Conscrypt", e10);
        }
    }

    public final Provider w() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }
}
