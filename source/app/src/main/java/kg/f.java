package Kg;

import Kg.e;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
import okhttp3.C14581a;
import okhttp3.C14591k;
import okhttp3.G;
import okhttp3.InterfaceC14585e;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.r;
import okhttp3.w;
import okhttp3.z;

public final class f {

    public static final boolean f11363o = false;

    public final C14581a f11364a;

    public e.a f11365b;

    public G f11366c;

    public final C14591k f11367d;

    public final InterfaceC14585e f11368e;

    public final r f11369f;

    public final Object f11370g;

    public final e f11371h;

    public int f11372i;

    public c f11373j;

    public boolean f11374k;

    public boolean f11375l;

    public boolean f11376m;

    public Lg.c f11377n;

    public static final class a extends WeakReference<f> {

        public final Object f11378a;

        public a(f fVar, Object obj) {
            super(fVar);
            this.f11378a = obj;
        }
    }

    public f(C14591k c14591k, C14581a c14581a, InterfaceC14585e interfaceC14585e, r rVar, Object obj) {
        this.f11367d = c14591k;
        this.f11364a = c14581a;
        this.f11368e = interfaceC14585e;
        this.f11369f = rVar;
        this.f11371h = new e(c14581a, p(), interfaceC14585e, rVar);
        this.f11370g = obj;
    }

    public void a(c cVar, boolean z10) {
        if (this.f11373j != null) {
            throw new IllegalStateException();
        }
        this.f11373j = cVar;
        this.f11374k = z10;
        cVar.f11348n.add(new a(this, this.f11370g));
    }

    public void b() {
        Lg.c cVar;
        c cVar2;
        synchronized (this.f11367d) {
            this.f11376m = true;
            cVar = this.f11377n;
            cVar2 = this.f11373j;
        }
        if (cVar != null) {
            cVar.cancel();
        } else if (cVar2 != null) {
            cVar2.g();
        }
    }

    public Lg.c c() {
        Lg.c cVar;
        synchronized (this.f11367d) {
            cVar = this.f11377n;
        }
        return cVar;
    }

    public synchronized c d() {
        return this.f11373j;
    }

    public final Socket e(boolean z10, boolean z11, boolean z12) {
        Socket socket;
        if (z12) {
            this.f11377n = null;
        }
        if (z11) {
            this.f11375l = true;
        }
        c cVar = this.f11373j;
        if (cVar == null) {
            return null;
        }
        if (z10) {
            cVar.f11345k = true;
        }
        if (this.f11377n != null) {
            return null;
        }
        if (!this.f11375l && !cVar.f11345k) {
            return null;
        }
        l(cVar);
        if (this.f11373j.f11348n.isEmpty()) {
            this.f11373j.f11349o = System.nanoTime();
            if (Gg.a.f7796a.e(this.f11367d, this.f11373j)) {
                socket = this.f11373j.d();
                this.f11373j = null;
                return socket;
            }
        }
        socket = null;
        this.f11373j = null;
        return socket;
    }

    public final c f(int i10, int i11, int i12, int i13, boolean z10) throws IOException {
        c cVar;
        Socket n10;
        c cVar2;
        Socket socket;
        G g10;
        boolean z11;
        boolean z12;
        e.a aVar;
        synchronized (this.f11367d) {
            try {
                if (this.f11375l) {
                    throw new IllegalStateException("released");
                }
                if (this.f11377n != null) {
                    throw new IllegalStateException("codec != null");
                }
                if (this.f11376m) {
                    throw new IOException("Canceled");
                }
                cVar = this.f11373j;
                n10 = n();
                cVar2 = this.f11373j;
                socket = null;
                if (cVar2 != null) {
                    cVar = null;
                } else {
                    cVar2 = null;
                }
                if (!this.f11374k) {
                    cVar = null;
                }
                if (cVar2 == null) {
                    Gg.a.f7796a.h(this.f11367d, this.f11364a, this, null);
                    c cVar3 = this.f11373j;
                    if (cVar3 != null) {
                        z11 = true;
                        cVar2 = cVar3;
                        g10 = null;
                    } else {
                        g10 = this.f11366c;
                    }
                } else {
                    g10 = null;
                }
                z11 = false;
            } finally {
            }
        }
        Gg.c.i(n10);
        if (cVar != null) {
            this.f11369f.h(this.f11368e, cVar);
        }
        if (z11) {
            this.f11369f.g(this.f11368e, cVar2);
        }
        if (cVar2 != null) {
            return cVar2;
        }
        if (g10 != null || ((aVar = this.f11365b) != null && aVar.b())) {
            z12 = false;
        } else {
            this.f11365b = this.f11371h.e();
            z12 = true;
        }
        synchronized (this.f11367d) {
            try {
                if (this.f11376m) {
                    throw new IOException("Canceled");
                }
                if (z12) {
                    List<G> a10 = this.f11365b.a();
                    int size = a10.size();
                    int i14 = 0;
                    while (true) {
                        if (i14 >= size) {
                            break;
                        }
                        G g11 = a10.get(i14);
                        Gg.a.f7796a.h(this.f11367d, this.f11364a, this, g11);
                        c cVar4 = this.f11373j;
                        if (cVar4 != null) {
                            this.f11366c = g11;
                            z11 = true;
                            cVar2 = cVar4;
                            break;
                        }
                        i14++;
                    }
                }
                if (!z11) {
                    if (g10 == null) {
                        g10 = this.f11365b.c();
                    }
                    this.f11366c = g10;
                    this.f11372i = 0;
                    cVar2 = new c(this.f11367d, g10);
                    a(cVar2, false);
                }
            } finally {
            }
        }
        if (z11) {
            this.f11369f.g(this.f11368e, cVar2);
            return cVar2;
        }
        cVar2.h(i10, i11, i12, i13, z10, this.f11368e, this.f11369f);
        p().a(cVar2.b());
        synchronized (this.f11367d) {
            try {
                this.f11374k = true;
                Gg.a.f7796a.l(this.f11367d, cVar2);
                if (cVar2.q()) {
                    socket = Gg.a.f7796a.f(this.f11367d, this.f11364a, this);
                    cVar2 = this.f11373j;
                }
            } finally {
            }
        }
        Gg.c.i(socket);
        this.f11369f.g(this.f11368e, cVar2);
        return cVar2;
    }

    public final c g(int i10, int i11, int i12, int i13, boolean z10, boolean z11) throws IOException {
        while (true) {
            c f10 = f(i10, i11, i12, i13, z10);
            synchronized (this.f11367d) {
                try {
                    if (f10.f11346l == 0) {
                        return f10;
                    }
                    if (f10.p(z11)) {
                        return f10;
                    }
                    j();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public boolean h() {
        e.a aVar;
        return this.f11366c != null || ((aVar = this.f11365b) != null && aVar.b()) || this.f11371h.c();
    }

    public Lg.c i(z zVar, w.a aVar, boolean z10) {
        try {
            Lg.c r10 = g(aVar.h(), aVar.a(), aVar.g(), zVar.v(), zVar.B(), z10).r(zVar, aVar, this);
            synchronized (this.f11367d) {
                this.f11377n = r10;
            }
            return r10;
        } catch (IOException e10) {
            throw new RouteException(e10);
        }
    }

    public void j() {
        c cVar;
        Socket e10;
        synchronized (this.f11367d) {
            cVar = this.f11373j;
            e10 = e(true, false, false);
            if (this.f11373j != null) {
                cVar = null;
            }
        }
        Gg.c.i(e10);
        if (cVar != null) {
            this.f11369f.h(this.f11368e, cVar);
        }
    }

    public void k() {
        c cVar;
        Socket e10;
        synchronized (this.f11367d) {
            cVar = this.f11373j;
            e10 = e(false, true, false);
            if (this.f11373j != null) {
                cVar = null;
            }
        }
        Gg.c.i(e10);
        if (cVar != null) {
            Gg.a.f7796a.p(this.f11368e, null);
            this.f11369f.h(this.f11368e, cVar);
            this.f11369f.a(this.f11368e);
        }
    }

    public final void l(c cVar) {
        int size = cVar.f11348n.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (cVar.f11348n.get(i10).get() == this) {
                cVar.f11348n.remove(i10);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public Socket m(c cVar) {
        if (this.f11377n != null || this.f11373j.f11348n.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<f> reference = this.f11373j.f11348n.get(0);
        Socket e10 = e(true, false, false);
        this.f11373j = cVar;
        cVar.f11348n.add(reference);
        return e10;
    }

    public final Socket n() {
        c cVar = this.f11373j;
        if (cVar == null || !cVar.f11345k) {
            return null;
        }
        return e(false, false, true);
    }

    public G o() {
        return this.f11366c;
    }

    public final d p() {
        return Gg.a.f7796a.m(this.f11367d);
    }

    public void q(IOException iOException) {
        c cVar;
        boolean z10;
        Socket e10;
        synchronized (this.f11367d) {
            try {
                cVar = null;
                if (iOException instanceof StreamResetException) {
                    Ng.a aVar = ((StreamResetException) iOException).errorCode;
                    if (aVar == Ng.a.REFUSED_STREAM) {
                        int i10 = this.f11372i + 1;
                        this.f11372i = i10;
                        if (i10 > 1) {
                            this.f11366c = null;
                            z10 = true;
                        }
                        z10 = false;
                    } else {
                        if (aVar != Ng.a.CANCEL) {
                            this.f11366c = null;
                            z10 = true;
                        }
                        z10 = false;
                    }
                } else {
                    c cVar2 = this.f11373j;
                    if (cVar2 != null && (!cVar2.q() || (iOException instanceof ConnectionShutdownException))) {
                        if (this.f11373j.f11346l == 0) {
                            G g10 = this.f11366c;
                            if (g10 != null && iOException != null) {
                                this.f11371h.a(g10, iOException);
                            }
                            this.f11366c = null;
                        }
                        z10 = true;
                    }
                    z10 = false;
                }
                c cVar3 = this.f11373j;
                e10 = e(z10, false, true);
                if (this.f11373j == null && this.f11374k) {
                    cVar = cVar3;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Gg.c.i(e10);
        if (cVar != null) {
            this.f11369f.h(this.f11368e, cVar);
        }
    }

    public void r(boolean z10, Lg.c cVar, long j10, IOException iOException) {
        c cVar2;
        Socket e10;
        boolean z11;
        this.f11369f.p(this.f11368e, j10);
        synchronized (this.f11367d) {
            if (cVar != null) {
                try {
                    if (cVar == this.f11377n) {
                        if (!z10) {
                            this.f11373j.f11346l++;
                        }
                        cVar2 = this.f11373j;
                        e10 = e(z10, false, true);
                        if (this.f11373j != null) {
                            cVar2 = null;
                        }
                        z11 = this.f11375l;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            throw new IllegalStateException("expected " + ((Object) this.f11377n) + " but was " + ((Object) cVar));
        }
        Gg.c.i(e10);
        if (cVar2 != null) {
            this.f11369f.h(this.f11368e, cVar2);
        }
        if (iOException != null) {
            this.f11369f.b(this.f11368e, Gg.a.f7796a.p(this.f11368e, iOException));
        } else if (z11) {
            Gg.a.f7796a.p(this.f11368e, null);
            this.f11369f.a(this.f11368e);
        }
    }

    public String toString() {
        c d10 = d();
        return d10 != null ? d10.toString() : this.f11364a.toString();
    }
}
