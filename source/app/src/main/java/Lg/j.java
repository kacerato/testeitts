package Lg;

import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.C;
import okhttp3.C14581a;
import okhttp3.C14587g;
import okhttp3.E;
import okhttp3.G;
import okhttp3.InterfaceC14585e;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.r;
import okhttp3.v;
import okhttp3.w;
import okhttp3.z;

public final class j implements w {

    public static final int f13442f = 20;

    public final z f13443a;

    public final boolean f13444b;

    public volatile Kg.f f13445c;

    public Object f13446d;

    public volatile boolean f13447e;

    public j(z zVar, boolean z10) {
        this.f13443a = zVar;
        this.f13444b = z10;
    }

    @Override
    public E a(w.a aVar) throws IOException {
        E k10;
        C d10;
        C b02 = aVar.b0();
        g gVar = (g) aVar;
        InterfaceC14585e call = gVar.call();
        r i10 = gVar.i();
        Kg.f fVar = new Kg.f(this.f13443a.h(), c(b02.k()), call, i10, this.f13446d);
        this.f13445c = fVar;
        int i11 = 0;
        E e10 = null;
        while (!this.f13447e) {
            try {
                try {
                    k10 = gVar.k(b02, fVar, null, null);
                    if (e10 != null) {
                        k10 = k10.r().m(e10.r().b(null).c()).c();
                    }
                    try {
                        d10 = d(k10, fVar.o());
                    } catch (IOException e11) {
                        fVar.k();
                        throw e11;
                    }
                } catch (IOException e12) {
                    if (!g(e12, fVar, !(e12 instanceof ConnectionShutdownException), b02)) {
                        throw e12;
                    }
                } catch (RouteException e13) {
                    if (!g(e13.getLastConnectException(), fVar, false, b02)) {
                        throw e13.getFirstConnectException();
                    }
                }
                if (d10 == null) {
                    fVar.k();
                    return k10;
                }
                Gg.c.g(k10.c());
                int i12 = i11 + 1;
                if (i12 > 20) {
                    fVar.k();
                    throw new ProtocolException("Too many follow-up requests: " + i12);
                }
                if (d10.a() instanceof l) {
                    fVar.k();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", k10.g());
                }
                if (!i(k10, d10.k())) {
                    fVar.k();
                    fVar = new Kg.f(this.f13443a.h(), c(d10.k()), call, i10, this.f13446d);
                    this.f13445c = fVar;
                } else if (fVar.c() != null) {
                    throw new IllegalStateException("Closing the body of " + ((Object) k10) + " didn't close its backing stream. Bad interceptor?");
                }
                e10 = k10;
                b02 = d10;
                i11 = i12;
            } catch (Throwable th2) {
                fVar.q(null);
                fVar.k();
                throw th2;
            }
        }
        fVar.k();
        throw new IOException("Canceled");
    }

    public void b() {
        this.f13447e = true;
        Kg.f fVar = this.f13445c;
        if (fVar != null) {
            fVar.b();
        }
    }

    public final C14581a c(v vVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        C14587g c14587g;
        if (vVar.q()) {
            sSLSocketFactory = this.f13443a.D();
            hostnameVerifier = this.f13443a.p();
            c14587g = this.f13443a.f();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            c14587g = null;
        }
        return new C14581a(vVar.p(), vVar.E(), this.f13443a.l(), this.f13443a.C(), sSLSocketFactory, hostnameVerifier, c14587g, this.f13443a.y(), this.f13443a.x(), this.f13443a.w(), this.f13443a.i(), this.f13443a.z());
    }

    public final C d(E e10, G g10) throws IOException {
        String j10;
        v O10;
        if (e10 == null) {
            throw new IllegalStateException();
        }
        int g11 = e10.g();
        String g12 = e10.w().g();
        if (g11 == 307 || g11 == 308) {
            if (!g12.equals(FetchCoreUtils.GET_REQUEST_METHOD) && !g12.equals(FetchCoreUtils.HEAD_REQUEST_METHOD)) {
                return null;
            }
        } else {
            if (g11 == 401) {
                return this.f13443a.c().a(g10, e10);
            }
            if (g11 == 503) {
                if ((e10.t() == null || e10.t().g() != 503) && h(e10, Integer.MAX_VALUE) == 0) {
                    return e10.w();
                }
                return null;
            }
            if (g11 == 407) {
                if ((g10 != null ? g10.b() : this.f13443a.x()).type() == Proxy.Type.HTTP) {
                    return this.f13443a.y().a(g10, e10);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (g11 == 408) {
                if (!this.f13443a.B() || (e10.w().a() instanceof l)) {
                    return null;
                }
                if ((e10.t() == null || e10.t().g() != 408) && h(e10, 0) <= 0) {
                    return e10.w();
                }
                return null;
            }
            switch (g11) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        if (!this.f13443a.n() || (j10 = e10.j(F2.d.f6275t0)) == null || (O10 = e10.w().k().O(j10)) == null) {
            return null;
        }
        if (!O10.P().equals(e10.w().k().P()) && !this.f13443a.o()) {
            return null;
        }
        C.a h10 = e10.w().h();
        if (f.b(g12)) {
            boolean d10 = f.d(g12);
            if (f.c(g12)) {
                h10.j(FetchCoreUtils.GET_REQUEST_METHOD, null);
            } else {
                h10.j(g12, d10 ? e10.w().a() : null);
            }
            if (!d10) {
                h10.n("Transfer-Encoding");
                h10.n("Content-Length");
                h10.n("Content-Type");
            }
        }
        if (!i(e10, O10)) {
            h10.n("Authorization");
        }
        return h10.s(O10).b();
    }

    public boolean e() {
        return this.f13447e;
    }

    public final boolean f(IOException iOException, boolean z10) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z10 : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    public final boolean g(IOException iOException, Kg.f fVar, boolean z10, C c10) {
        fVar.q(iOException);
        if (this.f13443a.B()) {
            return !(z10 && (c10.a() instanceof l)) && f(iOException, z10) && fVar.h();
        }
        return false;
    }

    public final int h(E e10, int i10) {
        String j10 = e10.j(F2.d.f6145A0);
        if (j10 == null) {
            return i10;
        }
        if (j10.matches("\\d+")) {
            return Integer.valueOf(j10).intValue();
        }
        return Integer.MAX_VALUE;
    }

    public final boolean i(E e10, v vVar) {
        v k10 = e10.w().k();
        return k10.p().equals(vVar.p()) && k10.E() == vVar.E() && k10.P().equals(vVar.P());
    }

    public void j(Object obj) {
        this.f13446d = obj;
    }

    public Kg.f k() {
        return this.f13445c;
    }
}
