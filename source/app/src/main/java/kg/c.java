package Kg;

import Ng.f;
import Ng.h;
import Sg.a;
import Tg.p;
import Tg.y;
import b3.s;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import okhttp3.A;
import okhttp3.C;
import okhttp3.C14581a;
import okhttp3.C14587g;
import okhttp3.C14591k;
import okhttp3.E;
import okhttp3.G;
import okhttp3.InterfaceC14585e;
import okhttp3.InterfaceC14590j;
import okhttp3.internal.connection.RouteException;
import okhttp3.l;
import okhttp3.r;
import okhttp3.t;
import okhttp3.v;
import okhttp3.w;
import okhttp3.z;
import org.eclipse.jdt.internal.core.JavaElement;

public final class c extends f.h implements InterfaceC14590j {

    public static final String f11334p = "throw with null exception";

    public static final int f11335q = 21;

    public final C14591k f11336b;

    public final G f11337c;

    public Socket f11338d;

    public Socket f11339e;

    public t f11340f;

    public A f11341g;

    public Ng.f f11342h;

    public Tg.e f11343i;

    public Tg.d f11344j;

    public boolean f11345k;

    public int f11346l;

    public int f11347m = 1;

    public final List<Reference<f>> f11348n = new ArrayList();

    public long f11349o = Long.MAX_VALUE;

    public class a extends a.g {

        public final f f11350e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z10, Tg.e eVar, Tg.d dVar, f fVar) {
            super(z10, eVar, dVar);
            this.f11350e = fVar;
        }

        @Override
        public void close() throws IOException {
            f fVar = this.f11350e;
            fVar.r(true, fVar.c(), -1L, null);
        }
    }

    public c(C14591k c14591k, G g10) {
        this.f11336b = c14591k;
        this.f11337c = g10;
    }

    public static c v(C14591k c14591k, G g10, Socket socket, long j10) {
        c cVar = new c(c14591k, g10);
        cVar.f11339e = socket;
        cVar.f11349o = j10;
        return cVar;
    }

    @Override
    public A a() {
        return this.f11341g;
    }

    @Override
    public G b() {
        return this.f11337c;
    }

    @Override
    public t c() {
        return this.f11340f;
    }

    @Override
    public Socket d() {
        return this.f11339e;
    }

    @Override
    public void e(Ng.f fVar) {
        synchronized (this.f11336b) {
            this.f11347m = fVar.l();
        }
    }

    @Override
    public void f(h hVar) throws IOException {
        hVar.f(Ng.a.REFUSED_STREAM);
    }

    public void g() {
        Gg.c.i(this.f11338d);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fd A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void h(int i10, int i11, int i12, int i13, boolean z10, InterfaceC14585e interfaceC14585e, r rVar) {
        if (this.f11341g != null) {
            throw new IllegalStateException("already connected");
        }
        List<l> b10 = this.f11337c.a().b();
        b bVar = new b(b10);
        if (this.f11337c.a().k() == null) {
            if (!b10.contains(l.f99391j)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String p10 = this.f11337c.a().l().p();
            if (!Pg.f.k().p(p10)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication to " + p10 + " not permitted by network security policy"));
            }
        } else if (this.f11337c.a().f().contains(A.H2_PRIOR_KNOWLEDGE)) {
            throw new RouteException(new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"));
        }
        RouteException routeException = null;
        do {
            try {
                try {
                    if (this.f11337c.c()) {
                        k(i10, i11, i12, interfaceC14585e, rVar);
                        if (this.f11338d == null) {
                            if (!this.f11337c.c() && this.f11338d == null) {
                                throw new RouteException(new ProtocolException("Too many tunnel connections attempted: 21"));
                            }
                            if (this.f11342h == null) {
                                synchronized (this.f11336b) {
                                    this.f11347m = this.f11342h.l();
                                }
                                return;
                            }
                            return;
                        }
                    } else {
                        try {
                            i(i10, i11, interfaceC14585e, rVar);
                        } catch (IOException e10) {
                            e = e10;
                            Gg.c.i(this.f11339e);
                            Gg.c.i(this.f11338d);
                            this.f11339e = null;
                            this.f11338d = null;
                            this.f11343i = null;
                            this.f11344j = null;
                            this.f11340f = null;
                            this.f11341g = null;
                            this.f11342h = null;
                            rVar.e(interfaceC14585e, this.f11337c.d(), this.f11337c.b(), null, e);
                            if (routeException != null) {
                                routeException = new RouteException(e);
                            } else {
                                routeException.addConnectException(e);
                            }
                            if (z10) {
                                throw routeException;
                            }
                        }
                    }
                    n(bVar, i13, interfaceC14585e, rVar);
                    rVar.d(interfaceC14585e, this.f11337c.d(), this.f11337c.b(), this.f11341g);
                    if (!this.f11337c.c()) {
                    }
                    if (this.f11342h == null) {
                    }
                } catch (IOException e11) {
                    e = e11;
                    Gg.c.i(this.f11339e);
                    Gg.c.i(this.f11338d);
                    this.f11339e = null;
                    this.f11338d = null;
                    this.f11343i = null;
                    this.f11344j = null;
                    this.f11340f = null;
                    this.f11341g = null;
                    this.f11342h = null;
                    rVar.e(interfaceC14585e, this.f11337c.d(), this.f11337c.b(), null, e);
                    if (routeException != null) {
                    }
                    if (z10) {
                    }
                }
            } catch (IOException e12) {
                e = e12;
            }
        } while (bVar.b(e));
        throw routeException;
    }

    public final void i(int i10, int i11, InterfaceC14585e interfaceC14585e, r rVar) throws IOException {
        Proxy b10 = this.f11337c.b();
        this.f11338d = (b10.type() == Proxy.Type.DIRECT || b10.type() == Proxy.Type.HTTP) ? this.f11337c.a().j().createSocket() : new Socket(b10);
        rVar.f(interfaceC14585e, this.f11337c.d(), b10);
        this.f11338d.setSoTimeout(i11);
        try {
            Pg.f.k().i(this.f11338d, this.f11337c.d(), i10);
            try {
                this.f11343i = p.d(p.n(this.f11338d));
                this.f11344j = p.c(p.i(this.f11338d));
            } catch (NullPointerException e10) {
                if (f11334p.equals(e10.getMessage())) {
                    throw new IOException(e10);
                }
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException("Failed to connect to " + ((Object) this.f11337c.d()));
            connectException.initCause(e11);
            throw connectException;
        }
    }

    public final void j(b bVar) throws IOException {
        SSLSocket sSLSocket;
        C14581a a10 = this.f11337c.a();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) a10.k().createSocket(this.f11338d, a10.l().p(), a10.l().E(), true);
            } catch (AssertionError e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            l a11 = bVar.a(sSLSocket);
            if (a11.f()) {
                Pg.f.k().h(sSLSocket, a10.l().p(), a10.f());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            t b10 = t.b(session);
            if (a10.e().verify(a10.l().p(), session)) {
                a10.a().a(a10.l().p(), b10.f());
                String n10 = a11.f() ? Pg.f.k().n(sSLSocket) : null;
                this.f11339e = sSLSocket;
                this.f11343i = p.d(p.n(sSLSocket));
                this.f11344j = p.c(p.i(this.f11339e));
                this.f11340f = b10;
                this.f11341g = n10 != null ? A.a(n10) : A.HTTP_1_1;
                Pg.f.k().a(sSLSocket);
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) b10.f().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + a10.l().p() + " not verified:\n    certificate: " + C14587g.d(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + ((Object) Rg.e.a(x509Certificate)));
        } catch (AssertionError e11) {
            e = e11;
            if (!Gg.c.B(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th3) {
            th = th3;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                Pg.f.k().a(sSLSocket2);
            }
            Gg.c.i(sSLSocket2);
            throw th;
        }
    }

    public final void k(int i10, int i11, int i12, InterfaceC14585e interfaceC14585e, r rVar) throws IOException {
        C m10 = m();
        v k10 = m10.k();
        for (int i13 = 0; i13 < 21; i13++) {
            i(i10, i11, interfaceC14585e, rVar);
            m10 = l(i11, i12, m10, k10);
            if (m10 == null) {
                return;
            }
            Gg.c.i(this.f11338d);
            this.f11338d = null;
            this.f11344j = null;
            this.f11343i = null;
            rVar.d(interfaceC14585e, this.f11337c.d(), this.f11337c.b(), null);
        }
    }

    public final C l(int i10, int i11, C c10, v vVar) throws IOException {
        String str = "CONNECT " + Gg.c.t(vVar, true) + " HTTP/1.1";
        while (true) {
            Mg.a aVar = new Mg.a(null, null, this.f11343i, this.f11344j);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f11343i.a0().h(i10, timeUnit);
            this.f11344j.a0().h(i11, timeUnit);
            aVar.p(c10.e(), str);
            aVar.c();
            E c11 = aVar.f(false).q(c10).c();
            long b10 = Lg.e.b(c11);
            if (b10 == -1) {
                b10 = 0;
            }
            y l10 = aVar.l(b10);
            Gg.c.E(l10, Integer.MAX_VALUE, timeUnit);
            l10.close();
            int g10 = c11.g();
            if (g10 == 200) {
                if (this.f11343i.C().b2() && this.f11344j.C().b2()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (g10 != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + c11.g());
            }
            C a10 = this.f11337c.a().h().a(this.f11337c, c11);
            if (a10 == null) {
                throw new IOException("Failed to authenticate with proxy");
            }
            if ("close".equalsIgnoreCase(c11.j(F2.d.f6259o))) {
                return a10;
            }
            c10 = a10;
        }
    }

    public final C m() throws IOException {
        C b10 = new C.a().s(this.f11337c.a().l()).j("CONNECT", null).h(F2.d.f6283w, Gg.c.t(this.f11337c.a().l(), true)).h("Proxy-Connection", F2.d.f6278u0).h("User-Agent", Gg.d.a()).b();
        C a10 = this.f11337c.a().h().a(this.f11337c, new E.a().q(b10).n(A.HTTP_1_1).g(HttpURLConnection.HTTP_PROXY_AUTH).k("Preemptive Authenticate").b(Gg.c.f7800c).r(-1L).o(-1L).i(F2.d.f6287x0, "OkHttp-Preemptive").c());
        return a10 != null ? a10 : b10;
    }

    public final void n(b bVar, int i10, InterfaceC14585e interfaceC14585e, r rVar) throws IOException {
        if (this.f11337c.a().k() != null) {
            rVar.u(interfaceC14585e);
            j(bVar);
            rVar.t(interfaceC14585e, this.f11340f);
            if (this.f11341g == A.HTTP_2) {
                t(i10);
                return;
            }
            return;
        }
        List<A> f10 = this.f11337c.a().f();
        A a10 = A.H2_PRIOR_KNOWLEDGE;
        if (!f10.contains(a10)) {
            this.f11339e = this.f11338d;
            this.f11341g = A.HTTP_1_1;
        } else {
            this.f11339e = this.f11338d;
            this.f11341g = a10;
            t(i10);
        }
    }

    public boolean o(C14581a c14581a, @Nullable G g10) {
        if (this.f11348n.size() >= this.f11347m || this.f11345k || !Gg.a.f7796a.g(this.f11337c.a(), c14581a)) {
            return false;
        }
        if (c14581a.l().p().equals(b().a().l().p())) {
            return true;
        }
        if (this.f11342h == null || g10 == null) {
            return false;
        }
        Proxy.Type type = g10.b().type();
        Proxy.Type type2 = Proxy.Type.DIRECT;
        if (type != type2 || this.f11337c.b().type() != type2 || !this.f11337c.d().equals(g10.d()) || g10.a().e() != Rg.e.f22793a || !u(c14581a.l())) {
            return false;
        }
        try {
            c14581a.a().a(c14581a.l().p(), c().f());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean p(boolean z10) {
        if (this.f11339e.isClosed() || this.f11339e.isInputShutdown() || this.f11339e.isOutputShutdown()) {
            return false;
        }
        if (this.f11342h != null) {
            return !r0.isShutdown();
        }
        if (z10) {
            try {
                int soTimeout = this.f11339e.getSoTimeout();
                try {
                    this.f11339e.setSoTimeout(1);
                    return !this.f11343i.b2();
                } finally {
                    this.f11339e.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public boolean q() {
        return this.f11342h != null;
    }

    public Lg.c r(z zVar, w.a aVar, f fVar) throws SocketException {
        if (this.f11342h != null) {
            return new Ng.e(zVar, aVar, fVar, this.f11342h);
        }
        this.f11339e.setSoTimeout(aVar.a());
        Tg.z a02 = this.f11343i.a0();
        long a10 = aVar.a();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        a02.h(a10, timeUnit);
        this.f11344j.a0().h(aVar.g(), timeUnit);
        return new Mg.a(zVar, fVar, this.f11343i, this.f11344j);
    }

    public a.g s(f fVar) {
        return new a(true, this.f11343i, this.f11344j, fVar);
    }

    public final void t(int i10) throws IOException {
        this.f11339e.setSoTimeout(0);
        Ng.f a10 = new f.g(true).f(this.f11339e, this.f11337c.a().l().p(), this.f11343i, this.f11344j).b(this).c(i10).a();
        this.f11342h = a10;
        a10.start();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.f11337c.a().l().p());
        sb2.append(s.f32937c);
        sb2.append(this.f11337c.a().l().E());
        sb2.append(", proxy=");
        sb2.append((Object) this.f11337c.b());
        sb2.append(" hostAddress=");
        sb2.append((Object) this.f11337c.d());
        sb2.append(" cipherSuite=");
        t tVar = this.f11340f;
        sb2.append(tVar != null ? tVar.a() : "none");
        sb2.append(" protocol=");
        sb2.append((Object) this.f11341g);
        sb2.append(JavaElement.JEM_ANNOTATION);
        return sb2.toString();
    }

    public boolean u(v vVar) {
        if (vVar.E() != this.f11337c.a().l().E()) {
            return false;
        }
        if (vVar.p().equals(this.f11337c.a().l().p())) {
            return true;
        }
        return this.f11340f != null && Rg.e.f22793a.c(vVar.p(), (X509Certificate) this.f11340f.f().get(0));
    }
}
