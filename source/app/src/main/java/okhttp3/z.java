package okhttp3;

import com.tonyodev.fetch2core.FetchErrorStrings;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.E;
import okhttp3.I;
import okhttp3.InterfaceC14585e;
import okhttp3.r;
import okhttp3.u;
import okhttp3.v;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public class z implements Cloneable, InterfaceC14585e.a, I.a {

    public static final List<A> f99502D = Gg.c.v(A.HTTP_2, A.HTTP_1_1);

    public static final List<l> f99503E = Gg.c.v(l.f99389h, l.f99391j);

    public final int f99504A;

    public final int f99505B;

    public final int f99506C;

    public final p f99507b;

    @Nullable
    public final Proxy f99508c;

    public final List<A> f99509d;

    public final List<l> f99510e;

    public final List<w> f99511f;

    public final List<w> f99512g;

    public final r.c f99513h;

    public final ProxySelector f99514i;

    public final n f99515j;

    @Nullable
    public final C14583c f99516k;

    @Nullable
    public final Ig.f f99517l;

    public final SocketFactory f99518m;

    public final SSLSocketFactory f99519n;

    public final Rg.c f99520o;

    public final HostnameVerifier f99521p;

    public final C14587g f99522q;

    public final InterfaceC14582b f99523r;

    public final InterfaceC14582b f99524s;

    public final C14591k f99525t;

    public final q f99526u;

    public final boolean f99527v;

    public final boolean f99528w;

    public final boolean f99529x;

    public final int f99530y;

    public final int f99531z;

    public class a extends Gg.a {
        @Override
        public void a(u.a aVar, String str) {
            aVar.e(str);
        }

        @Override
        public void b(u.a aVar, String str, String str2) {
            aVar.f(str, str2);
        }

        @Override
        public void c(l lVar, SSLSocket sSLSocket, boolean z10) {
            lVar.a(sSLSocket, z10);
        }

        @Override
        public int d(E.a aVar) {
            return aVar.f99136c;
        }

        @Override
        public boolean e(C14591k c14591k, Kg.c cVar) {
            return c14591k.b(cVar);
        }

        @Override
        public Socket f(C14591k c14591k, C14581a c14581a, Kg.f fVar) {
            return c14591k.d(c14581a, fVar);
        }

        @Override
        public boolean g(C14581a c14581a, C14581a c14581a2) {
            return c14581a.d(c14581a2);
        }

        @Override
        public Kg.c h(C14591k c14591k, C14581a c14581a, Kg.f fVar, G g10) {
            return c14591k.f(c14581a, fVar, g10);
        }

        @Override
        public boolean j(IllegalArgumentException illegalArgumentException) {
            return illegalArgumentException.getMessage().startsWith(v.a.f99467i);
        }

        @Override
        public InterfaceC14585e k(z zVar, C c10) {
            return B.e(zVar, c10, true);
        }

        @Override
        public void l(C14591k c14591k, Kg.c cVar) {
            c14591k.i(cVar);
        }

        @Override
        public Kg.d m(C14591k c14591k) {
            return c14591k.f99383e;
        }

        @Override
        public void n(b bVar, Ig.f fVar) {
            bVar.F(fVar);
        }

        @Override
        public Kg.f o(InterfaceC14585e interfaceC14585e) {
            return ((B) interfaceC14585e).g();
        }

        @Override
        @Nullable
        public IOException p(InterfaceC14585e interfaceC14585e, @Nullable IOException iOException) {
            return ((B) interfaceC14585e).h(iOException);
        }
    }

    static {
        Gg.a.f7796a = new a();
    }

    public z() {
        this(new b());
    }

    public static SSLSocketFactory u(X509TrustManager x509TrustManager) {
        try {
            SSLContext m10 = Pg.f.k().m();
            m10.init(null, new TrustManager[]{x509TrustManager}, null);
            return m10.getSocketFactory();
        } catch (GeneralSecurityException e10) {
            throw Gg.c.b("No System TLS", e10);
        }
    }

    public int A() {
        return this.f99504A;
    }

    public boolean B() {
        return this.f99529x;
    }

    public SocketFactory C() {
        return this.f99518m;
    }

    public SSLSocketFactory D() {
        return this.f99519n;
    }

    public int E() {
        return this.f99505B;
    }

    @Override
    public InterfaceC14585e a(C c10) {
        return B.e(this, c10, false);
    }

    @Override
    public I b(C c10, J j10) {
        Sg.a aVar = new Sg.a(c10, j10, new Random(), this.f99506C);
        aVar.m(this);
        return aVar;
    }

    public InterfaceC14582b c() {
        return this.f99524s;
    }

    @Nullable
    public C14583c d() {
        return this.f99516k;
    }

    public int e() {
        return this.f99530y;
    }

    public C14587g f() {
        return this.f99522q;
    }

    public int g() {
        return this.f99531z;
    }

    public C14591k h() {
        return this.f99525t;
    }

    public List<l> i() {
        return this.f99510e;
    }

    public n j() {
        return this.f99515j;
    }

    public p k() {
        return this.f99507b;
    }

    public q l() {
        return this.f99526u;
    }

    public r.c m() {
        return this.f99513h;
    }

    public boolean n() {
        return this.f99528w;
    }

    public boolean o() {
        return this.f99527v;
    }

    public HostnameVerifier p() {
        return this.f99521p;
    }

    public List<w> q() {
        return this.f99511f;
    }

    public Ig.f r() {
        C14583c c14583c = this.f99516k;
        return c14583c != null ? c14583c.f99173b : this.f99517l;
    }

    public List<w> s() {
        return this.f99512g;
    }

    public b t() {
        return new b(this);
    }

    public int v() {
        return this.f99506C;
    }

    public List<A> w() {
        return this.f99509d;
    }

    @Nullable
    public Proxy x() {
        return this.f99508c;
    }

    public InterfaceC14582b y() {
        return this.f99523r;
    }

    public ProxySelector z() {
        return this.f99514i;
    }

    public z(b bVar) {
        boolean z10;
        this.f99507b = bVar.f99534a;
        this.f99508c = bVar.f99535b;
        this.f99509d = bVar.f99536c;
        List<l> list = bVar.f99537d;
        this.f99510e = list;
        this.f99511f = Gg.c.u(bVar.f99538e);
        this.f99512g = Gg.c.u(bVar.f99539f);
        this.f99513h = bVar.f99540g;
        this.f99514i = bVar.f99541h;
        this.f99515j = bVar.f99542i;
        this.f99516k = bVar.f99543j;
        this.f99517l = bVar.f99544k;
        this.f99518m = bVar.f99545l;
        Iterator<l> it = list.iterator();
        loop0: while (true) {
            z10 = false;
            while (it.hasNext()) {
                z10 = (z10 || it.next().d()) ? true : z10;
            }
        }
        SSLSocketFactory sSLSocketFactory = bVar.f99546m;
        if (sSLSocketFactory == null && z10) {
            X509TrustManager D10 = Gg.c.D();
            this.f99519n = u(D10);
            this.f99520o = Rg.c.b(D10);
        } else {
            this.f99519n = sSLSocketFactory;
            this.f99520o = bVar.f99547n;
        }
        if (this.f99519n != null) {
            Pg.f.k().g(this.f99519n);
        }
        this.f99521p = bVar.f99548o;
        this.f99522q = bVar.f99549p.g(this.f99520o);
        this.f99523r = bVar.f99550q;
        this.f99524s = bVar.f99551r;
        this.f99525t = bVar.f99552s;
        this.f99526u = bVar.f99553t;
        this.f99527v = bVar.f99554u;
        this.f99528w = bVar.f99555v;
        this.f99529x = bVar.f99556w;
        this.f99530y = bVar.f99557x;
        this.f99531z = bVar.f99558y;
        this.f99504A = bVar.f99559z;
        this.f99505B = bVar.f99532A;
        this.f99506C = bVar.f99533B;
        if (!this.f99511f.contains(null)) {
            if (this.f99512g.contains(null)) {
                throw new IllegalStateException("Null network interceptor: " + ((Object) this.f99512g));
            }
            return;
        }
        throw new IllegalStateException("Null interceptor: " + ((Object) this.f99511f));
    }

    public static final class b {

        public int f99532A;

        public int f99533B;

        public p f99534a;

        @Nullable
        public Proxy f99535b;

        public List<A> f99536c;

        public List<l> f99537d;

        public final List<w> f99538e;

        public final List<w> f99539f;

        public r.c f99540g;

        public ProxySelector f99541h;

        public n f99542i;

        @Nullable
        public C14583c f99543j;

        @Nullable
        public Ig.f f99544k;

        public SocketFactory f99545l;

        @Nullable
        public SSLSocketFactory f99546m;

        @Nullable
        public Rg.c f99547n;

        public HostnameVerifier f99548o;

        public C14587g f99549p;

        public InterfaceC14582b f99550q;

        public InterfaceC14582b f99551r;

        public C14591k f99552s;

        public q f99553t;

        public boolean f99554u;

        public boolean f99555v;

        public boolean f99556w;

        public int f99557x;

        public int f99558y;

        public int f99559z;

        public b() {
            this.f99538e = new ArrayList();
            this.f99539f = new ArrayList();
            this.f99534a = new p();
            this.f99536c = z.f99502D;
            this.f99537d = z.f99503E;
            this.f99540g = r.k(r.f99432a);
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f99541h = proxySelector;
            if (proxySelector == null) {
                this.f99541h = new Qg.a();
            }
            this.f99542i = n.f99422a;
            this.f99545l = SocketFactory.getDefault();
            this.f99548o = Rg.e.f22793a;
            this.f99549p = C14587g.f99234c;
            InterfaceC14582b interfaceC14582b = InterfaceC14582b.f99168a;
            this.f99550q = interfaceC14582b;
            this.f99551r = interfaceC14582b;
            this.f99552s = new C14591k();
            this.f99553t = q.f99431a;
            this.f99554u = true;
            this.f99555v = true;
            this.f99556w = true;
            this.f99557x = 0;
            this.f99558y = 10000;
            this.f99559z = 10000;
            this.f99532A = 10000;
            this.f99533B = 0;
        }

        public b A(InterfaceC14582b interfaceC14582b) {
            if (interfaceC14582b == null) {
                throw new NullPointerException("proxyAuthenticator == null");
            }
            this.f99550q = interfaceC14582b;
            return this;
        }

        public b B(ProxySelector proxySelector) {
            if (proxySelector == null) {
                throw new NullPointerException("proxySelector == null");
            }
            this.f99541h = proxySelector;
            return this;
        }

        public b C(long j10, TimeUnit timeUnit) {
            this.f99559z = Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, j10, timeUnit);
            return this;
        }

        @IgnoreJRERequirement
        public b D(Duration duration) {
            this.f99559z = Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        public b E(boolean z10) {
            this.f99556w = z10;
            return this;
        }

        public void F(@Nullable Ig.f fVar) {
            this.f99544k = fVar;
            this.f99543j = null;
        }

        public b G(SocketFactory socketFactory) {
            if (socketFactory == null) {
                throw new NullPointerException("socketFactory == null");
            }
            this.f99545l = socketFactory;
            return this;
        }

        public b H(SSLSocketFactory sSLSocketFactory) {
            if (sSLSocketFactory == null) {
                throw new NullPointerException("sslSocketFactory == null");
            }
            this.f99546m = sSLSocketFactory;
            this.f99547n = Pg.f.k().c(sSLSocketFactory);
            return this;
        }

        public b I(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            if (sSLSocketFactory == null) {
                throw new NullPointerException("sslSocketFactory == null");
            }
            if (x509TrustManager == null) {
                throw new NullPointerException("trustManager == null");
            }
            this.f99546m = sSLSocketFactory;
            this.f99547n = Rg.c.b(x509TrustManager);
            return this;
        }

        public b J(long j10, TimeUnit timeUnit) {
            this.f99532A = Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, j10, timeUnit);
            return this;
        }

        @IgnoreJRERequirement
        public b K(Duration duration) {
            this.f99532A = Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        public b a(w wVar) {
            if (wVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.f99538e.add(wVar);
            return this;
        }

        public b b(w wVar) {
            if (wVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.f99539f.add(wVar);
            return this;
        }

        public b c(InterfaceC14582b interfaceC14582b) {
            if (interfaceC14582b == null) {
                throw new NullPointerException("authenticator == null");
            }
            this.f99551r = interfaceC14582b;
            return this;
        }

        public z d() {
            return new z(this);
        }

        public b e(@Nullable C14583c c14583c) {
            this.f99543j = c14583c;
            this.f99544k = null;
            return this;
        }

        public b f(long j10, TimeUnit timeUnit) {
            this.f99557x = Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, j10, timeUnit);
            return this;
        }

        @IgnoreJRERequirement
        public b g(Duration duration) {
            this.f99557x = Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        public b h(C14587g c14587g) {
            if (c14587g == null) {
                throw new NullPointerException("certificatePinner == null");
            }
            this.f99549p = c14587g;
            return this;
        }

        public b i(long j10, TimeUnit timeUnit) {
            this.f99558y = Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, j10, timeUnit);
            return this;
        }

        @IgnoreJRERequirement
        public b j(Duration duration) {
            this.f99558y = Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        public b k(C14591k c14591k) {
            if (c14591k == null) {
                throw new NullPointerException("connectionPool == null");
            }
            this.f99552s = c14591k;
            return this;
        }

        public b l(List<l> list) {
            this.f99537d = Gg.c.u(list);
            return this;
        }

        public b m(n nVar) {
            if (nVar == null) {
                throw new NullPointerException("cookieJar == null");
            }
            this.f99542i = nVar;
            return this;
        }

        public b n(p pVar) {
            if (pVar == null) {
                throw new IllegalArgumentException("dispatcher == null");
            }
            this.f99534a = pVar;
            return this;
        }

        public b o(q qVar) {
            if (qVar == null) {
                throw new NullPointerException("dns == null");
            }
            this.f99553t = qVar;
            return this;
        }

        public b p(r rVar) {
            if (rVar == null) {
                throw new NullPointerException("eventListener == null");
            }
            this.f99540g = r.k(rVar);
            return this;
        }

        public b q(r.c cVar) {
            if (cVar == null) {
                throw new NullPointerException("eventListenerFactory == null");
            }
            this.f99540g = cVar;
            return this;
        }

        public b r(boolean z10) {
            this.f99555v = z10;
            return this;
        }

        public b s(boolean z10) {
            this.f99554u = z10;
            return this;
        }

        public b t(HostnameVerifier hostnameVerifier) {
            if (hostnameVerifier == null) {
                throw new NullPointerException("hostnameVerifier == null");
            }
            this.f99548o = hostnameVerifier;
            return this;
        }

        public List<w> u() {
            return this.f99538e;
        }

        public List<w> v() {
            return this.f99539f;
        }

        public b w(long j10, TimeUnit timeUnit) {
            this.f99533B = Gg.c.e("interval", j10, timeUnit);
            return this;
        }

        @IgnoreJRERequirement
        public b x(Duration duration) {
            this.f99533B = Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        public b y(List<A> list) {
            ArrayList arrayList = new ArrayList(list);
            A a10 = A.H2_PRIOR_KNOWLEDGE;
            if (!arrayList.contains(a10) && !arrayList.contains(A.HTTP_1_1)) {
                throw new IllegalArgumentException("protocols must contain h2_prior_knowledge or http/1.1: " + ((Object) arrayList));
            }
            if (arrayList.contains(a10) && arrayList.size() > 1) {
                throw new IllegalArgumentException("protocols containing h2_prior_knowledge cannot use other protocols: " + ((Object) arrayList));
            }
            if (arrayList.contains(A.HTTP_1_0)) {
                throw new IllegalArgumentException("protocols must not contain http/1.0: " + ((Object) arrayList));
            }
            if (arrayList.contains(null)) {
                throw new IllegalArgumentException("protocols must not contain null");
            }
            arrayList.remove(A.SPDY_3);
            this.f99536c = Collections.unmodifiableList(arrayList);
            return this;
        }

        public b z(@Nullable Proxy proxy) {
            this.f99535b = proxy;
            return this;
        }

        public b(z zVar) {
            ArrayList arrayList = new ArrayList();
            this.f99538e = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f99539f = arrayList2;
            this.f99534a = zVar.f99507b;
            this.f99535b = zVar.f99508c;
            this.f99536c = zVar.f99509d;
            this.f99537d = zVar.f99510e;
            arrayList.addAll(zVar.f99511f);
            arrayList2.addAll(zVar.f99512g);
            this.f99540g = zVar.f99513h;
            this.f99541h = zVar.f99514i;
            this.f99542i = zVar.f99515j;
            this.f99544k = zVar.f99517l;
            this.f99543j = zVar.f99516k;
            this.f99545l = zVar.f99518m;
            this.f99546m = zVar.f99519n;
            this.f99547n = zVar.f99520o;
            this.f99548o = zVar.f99521p;
            this.f99549p = zVar.f99522q;
            this.f99550q = zVar.f99523r;
            this.f99551r = zVar.f99524s;
            this.f99552s = zVar.f99525t;
            this.f99553t = zVar.f99526u;
            this.f99554u = zVar.f99527v;
            this.f99555v = zVar.f99528w;
            this.f99556w = zVar.f99529x;
            this.f99557x = zVar.f99530y;
            this.f99558y = zVar.f99531z;
            this.f99559z = zVar.f99504A;
            this.f99532A = zVar.f99505B;
            this.f99533B = zVar.f99506C;
        }
    }
}
