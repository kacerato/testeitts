package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.v;
import org.apache.commons.math3.geometry.VectorFormat;
import qe.C15075d;

public final class C14581a {

    public final v f99157a;

    public final q f99158b;

    public final SocketFactory f99159c;

    public final InterfaceC14582b f99160d;

    public final List<A> f99161e;

    public final List<l> f99162f;

    public final ProxySelector f99163g;

    @Nullable
    public final Proxy f99164h;

    @Nullable
    public final SSLSocketFactory f99165i;

    @Nullable
    public final HostnameVerifier f99166j;

    @Nullable
    public final C14587g f99167k;

    public C14581a(String str, int i10, q qVar, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable C14587g c14587g, InterfaceC14582b interfaceC14582b, @Nullable Proxy proxy, List<A> list, List<l> list2, ProxySelector proxySelector) {
        this.f99157a = new v.a().H(sSLSocketFactory != null ? C15075d.f106134a : "http").q(str).x(i10).h();
        if (qVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f99158b = qVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f99159c = socketFactory;
        if (interfaceC14582b == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f99160d = interfaceC14582b;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f99161e = Gg.c.u(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f99162f = Gg.c.u(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f99163g = proxySelector;
        this.f99164h = proxy;
        this.f99165i = sSLSocketFactory;
        this.f99166j = hostnameVerifier;
        this.f99167k = c14587g;
    }

    @Nullable
    public C14587g a() {
        return this.f99167k;
    }

    public List<l> b() {
        return this.f99162f;
    }

    public q c() {
        return this.f99158b;
    }

    public boolean d(C14581a c14581a) {
        return this.f99158b.equals(c14581a.f99158b) && this.f99160d.equals(c14581a.f99160d) && this.f99161e.equals(c14581a.f99161e) && this.f99162f.equals(c14581a.f99162f) && this.f99163g.equals(c14581a.f99163g) && Gg.c.r(this.f99164h, c14581a.f99164h) && Gg.c.r(this.f99165i, c14581a.f99165i) && Gg.c.r(this.f99166j, c14581a.f99166j) && Gg.c.r(this.f99167k, c14581a.f99167k) && l().E() == c14581a.l().E();
    }

    @Nullable
    public HostnameVerifier e() {
        return this.f99166j;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof C14581a) {
            C14581a c14581a = (C14581a) obj;
            if (this.f99157a.equals(c14581a.f99157a) && d(c14581a)) {
                return true;
            }
        }
        return false;
    }

    public List<A> f() {
        return this.f99161e;
    }

    @Nullable
    public Proxy g() {
        return this.f99164h;
    }

    public InterfaceC14582b h() {
        return this.f99160d;
    }

    public int hashCode() {
        int hashCode = (((((((((((527 + this.f99157a.hashCode()) * 31) + this.f99158b.hashCode()) * 31) + this.f99160d.hashCode()) * 31) + this.f99161e.hashCode()) * 31) + this.f99162f.hashCode()) * 31) + this.f99163g.hashCode()) * 31;
        Proxy proxy = this.f99164h;
        int hashCode2 = (hashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f99165i;
        int hashCode3 = (hashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f99166j;
        int hashCode4 = (hashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        C14587g c14587g = this.f99167k;
        return hashCode4 + (c14587g != null ? c14587g.hashCode() : 0);
    }

    public ProxySelector i() {
        return this.f99163g;
    }

    public SocketFactory j() {
        return this.f99159c;
    }

    @Nullable
    public SSLSocketFactory k() {
        return this.f99165i;
    }

    public v l() {
        return this.f99157a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Address{");
        sb2.append(this.f99157a.p());
        sb2.append(b3.s.f32937c);
        sb2.append(this.f99157a.E());
        if (this.f99164h != null) {
            sb2.append(", proxy=");
            sb2.append((Object) this.f99164h);
        } else {
            sb2.append(", proxySelector=");
            sb2.append((Object) this.f99163g);
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }
}
