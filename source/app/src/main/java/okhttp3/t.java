package okhttp3;

import android.security.keystore.KeyProperties;
import java.io.IOException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class t {

    public final H f99440a;

    public final C14589i f99441b;

    public final List<Certificate> f99442c;

    public final List<Certificate> f99443d;

    public t(H h10, C14589i c14589i, List<Certificate> list, List<Certificate> list2) {
        this.f99440a = h10;
        this.f99441b = c14589i;
        this.f99442c = list;
        this.f99443d = list2;
    }

    public static t b(SSLSession sSLSession) throws IOException {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        C14589i a10 = C14589i.a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if (KeyProperties.DIGEST_NONE.equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        H a11 = H.a(protocol);
        try {
            certificateArr = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            certificateArr = null;
        }
        List v10 = certificateArr != null ? Gg.c.v(certificateArr) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new t(a11, a10, v10, localCertificates != null ? Gg.c.v(localCertificates) : Collections.emptyList());
    }

    public static t c(H h10, C14589i c14589i, List<Certificate> list, List<Certificate> list2) {
        if (h10 == null) {
            throw new NullPointerException("tlsVersion == null");
        }
        if (c14589i != null) {
            return new t(h10, c14589i, Gg.c.u(list), Gg.c.u(list2));
        }
        throw new NullPointerException("cipherSuite == null");
    }

    public C14589i a() {
        return this.f99441b;
    }

    public List<Certificate> d() {
        return this.f99443d;
    }

    @Nullable
    public Principal e() {
        if (this.f99443d.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.f99443d.get(0)).getSubjectX500Principal();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f99440a.equals(tVar.f99440a) && this.f99441b.equals(tVar.f99441b) && this.f99442c.equals(tVar.f99442c) && this.f99443d.equals(tVar.f99443d);
    }

    public List<Certificate> f() {
        return this.f99442c;
    }

    @Nullable
    public Principal g() {
        if (this.f99442c.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.f99442c.get(0)).getSubjectX500Principal();
    }

    public H h() {
        return this.f99440a;
    }

    public int hashCode() {
        return ((((((527 + this.f99440a.hashCode()) * 31) + this.f99441b.hashCode()) * 31) + this.f99442c.hashCode()) * 31) + this.f99443d.hashCode();
    }
}
