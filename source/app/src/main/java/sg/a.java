package Sg;

import Sg.c;
import Tg.p;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.A;
import okhttp3.C;
import okhttp3.E;
import okhttp3.I;
import okhttp3.InterfaceC14585e;
import okhttp3.InterfaceC14586f;
import okhttp3.J;
import okhttp3.r;
import okhttp3.z;

public final class a implements I, c.a {

    public static final boolean f23208A = false;

    public static final List<A> f23209x = Collections.singletonList(A.HTTP_1_1);

    public static final long f23210y = 16777216;

    public static final long f23211z = 60000;

    public final C f23212a;

    public final J f23213b;

    public final Random f23214c;

    public final long f23215d;

    public final String f23216e;

    public InterfaceC14585e f23217f;

    public final Runnable f23218g;

    public Sg.c f23219h;

    public Sg.d f23220i;

    public ScheduledExecutorService f23221j;

    public g f23222k;

    public long f23225n;

    public boolean f23226o;

    public ScheduledFuture<?> f23227p;

    public String f23229r;

    public boolean f23230s;

    public int f23231t;

    public int f23232u;

    public int f23233v;

    public boolean f23234w;

    public final ArrayDeque<Tg.f> f23223l = new ArrayDeque<>();

    public final ArrayDeque<Object> f23224m = new ArrayDeque<>();

    public int f23228q = -1;

    public class RunnableC0560a implements Runnable {
        public RunnableC0560a() {
        }

        @Override
        public void run() {
            do {
                try {
                } catch (IOException e10) {
                    a.this.n(e10, null);
                    return;
                }
            } while (a.this.y());
        }
    }

    public class b implements InterfaceC14586f {

        public final C f23236a;

        public b(C c10) {
            this.f23236a = c10;
        }

        @Override
        public void a(InterfaceC14585e interfaceC14585e, IOException iOException) {
            a.this.n(iOException, null);
        }

        @Override
        public void b(InterfaceC14585e interfaceC14585e, E e10) {
            try {
                a.this.k(e10);
                Kg.f o10 = Gg.a.f7796a.o(interfaceC14585e);
                o10.j();
                g s10 = o10.d().s(o10);
                try {
                    a aVar = a.this;
                    aVar.f23213b.f(aVar, e10);
                    a.this.o("OkHttp WebSocket " + this.f23236a.k().N(), s10);
                    o10.d().d().setSoTimeout(0);
                    a.this.p();
                } catch (Exception e11) {
                    a.this.n(e11, null);
                }
            } catch (ProtocolException e12) {
                a.this.n(e12, e10);
                Gg.c.g(e10);
            }
        }
    }

    public final class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            a.this.cancel();
        }
    }

    public static final class d {

        public final int f23239a;

        public final Tg.f f23240b;

        public final long f23241c;

        public d(int i10, Tg.f fVar, long j10) {
            this.f23239a = i10;
            this.f23240b = fVar;
            this.f23241c = j10;
        }
    }

    public static final class e {

        public final int f23242a;

        public final Tg.f f23243b;

        public e(int i10, Tg.f fVar) {
            this.f23242a = i10;
            this.f23243b = fVar;
        }
    }

    public final class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            a.this.z();
        }
    }

    public static abstract class g implements Closeable {

        public final boolean f23245b;

        public final Tg.e f23246c;

        public final Tg.d f23247d;

        public g(boolean z10, Tg.e eVar, Tg.d dVar) {
            this.f23245b = z10;
            this.f23246c = eVar;
            this.f23247d = dVar;
        }
    }

    public a(C c10, J j10, Random random, long j11) {
        if (!FetchCoreUtils.GET_REQUEST_METHOD.equals(c10.g())) {
            throw new IllegalArgumentException("Request must be GET: " + c10.g());
        }
        this.f23212a = c10;
        this.f23213b = j10;
        this.f23214c = random;
        this.f23215d = j11;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        this.f23216e = Tg.f.J(bArr).b();
        this.f23218g = new RunnableC0560a();
    }

    @Override
    public boolean a(Tg.f fVar) {
        if (fVar != null) {
            return v(fVar, 2);
        }
        throw new NullPointerException("bytes == null");
    }

    @Override
    public void b(Tg.f fVar) throws IOException {
        this.f23213b.d(this, fVar);
    }

    @Override
    public C b0() {
        return this.f23212a;
    }

    @Override
    public synchronized long c() {
        return this.f23225n;
    }

    @Override
    public void cancel() {
        this.f23217f.cancel();
    }

    @Override
    public boolean d(int i10, String str) {
        return l(i10, str, 60000L);
    }

    @Override
    public synchronized void e(Tg.f fVar) {
        this.f23233v++;
        this.f23234w = false;
    }

    @Override
    public void f(int i10, String str) {
        g gVar;
        if (i10 == -1) {
            throw new IllegalArgumentException();
        }
        synchronized (this) {
            try {
                if (this.f23228q != -1) {
                    throw new IllegalStateException("already closed");
                }
                this.f23228q = i10;
                this.f23229r = str;
                gVar = null;
                if (this.f23226o && this.f23224m.isEmpty()) {
                    g gVar2 = this.f23222k;
                    this.f23222k = null;
                    ScheduledFuture<?> scheduledFuture = this.f23227p;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.f23221j.shutdown();
                    gVar = gVar2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        try {
            this.f23213b.b(this, i10, str);
            if (gVar != null) {
                this.f23213b.a(this, i10, str);
            }
        } finally {
            Gg.c.g(gVar);
        }
    }

    @Override
    public synchronized void g(Tg.f fVar) {
        try {
            if (!this.f23230s && (!this.f23226o || !this.f23224m.isEmpty())) {
                this.f23223l.add(fVar);
                u();
                this.f23232u++;
            }
        } finally {
        }
    }

    @Override
    public boolean h(String str) {
        if (str != null) {
            return v(Tg.f.m(str), 1);
        }
        throw new NullPointerException("text == null");
    }

    @Override
    public void i(String str) throws IOException {
        this.f23213b.e(this, str);
    }

    public void j(int i10, TimeUnit timeUnit) throws InterruptedException {
        this.f23221j.awaitTermination(i10, timeUnit);
    }

    public void k(E e10) throws ProtocolException {
        if (e10.g() != 101) {
            throw new ProtocolException("Expected HTTP 101 response but was '" + e10.g() + " " + e10.p() + "'");
        }
        String j10 = e10.j(F2.d.f6259o);
        if (!F2.d.f6183N.equalsIgnoreCase(j10)) {
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + j10 + "'");
        }
        String j11 = e10.j(F2.d.f6183N);
        if (!"websocket".equalsIgnoreCase(j11)) {
            throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + j11 + "'");
        }
        String j12 = e10.j(F2.d.f6191P1);
        String b10 = Tg.f.m(this.f23216e + Sg.b.f23248a).P().b();
        if (b10.equals(j12)) {
            return;
        }
        throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + b10 + "' but was '" + j12 + "'");
    }

    public synchronized boolean l(int i10, String str, long j10) {
        Tg.f fVar;
        try {
            Sg.b.d(i10);
            if (str != null) {
                fVar = Tg.f.m(str);
                if (fVar.S() > 123) {
                    throw new IllegalArgumentException("reason.size() > 123: " + str);
                }
            } else {
                fVar = null;
            }
            if (!this.f23230s && !this.f23226o) {
                this.f23226o = true;
                this.f23224m.add(new d(i10, fVar, j10));
                u();
                return true;
            }
            return false;
        } finally {
        }
    }

    public void m(z zVar) {
        z d10 = zVar.t().p(r.f99432a).y(f23209x).d();
        C b10 = this.f23212a.h().h(F2.d.f6183N, "websocket").h(F2.d.f6259o, F2.d.f6183N).h(F2.d.f6197R1, this.f23216e).h(F2.d.f6203T1, "13").b();
        InterfaceC14585e k10 = Gg.a.f7796a.k(d10, b10);
        this.f23217f = k10;
        k10.a0().b();
        this.f23217f.V4(new b(b10));
    }

    public void n(Exception exc, @Nullable E e10) {
        synchronized (this) {
            try {
                if (this.f23230s) {
                    return;
                }
                this.f23230s = true;
                g gVar = this.f23222k;
                this.f23222k = null;
                ScheduledFuture<?> scheduledFuture = this.f23227p;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                ScheduledExecutorService scheduledExecutorService = this.f23221j;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdown();
                }
                try {
                    this.f23213b.c(this, exc, e10);
                } finally {
                    Gg.c.g(gVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void o(String str, g gVar) throws IOException {
        synchronized (this) {
            try {
                this.f23222k = gVar;
                this.f23220i = new Sg.d(gVar.f23245b, gVar.f23247d, this.f23214c);
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, Gg.c.H(str, false));
                this.f23221j = scheduledThreadPoolExecutor;
                if (this.f23215d != 0) {
                    f fVar = new f();
                    long j10 = this.f23215d;
                    scheduledThreadPoolExecutor.scheduleAtFixedRate(fVar, j10, j10, TimeUnit.MILLISECONDS);
                }
                if (!this.f23224m.isEmpty()) {
                    u();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f23219h = new Sg.c(gVar.f23245b, gVar.f23246c, this);
    }

    public void p() throws IOException {
        while (this.f23228q == -1) {
            this.f23219h.a();
        }
    }

    public synchronized boolean q(Tg.f fVar) {
        try {
            if (!this.f23230s && (!this.f23226o || !this.f23224m.isEmpty())) {
                this.f23223l.add(fVar);
                u();
                return true;
            }
            return false;
        } finally {
        }
    }

    public boolean r() throws IOException {
        try {
            this.f23219h.a();
            return this.f23228q == -1;
        } catch (Exception e10) {
            n(e10, null);
            return false;
        }
    }

    public synchronized int s() {
        return this.f23232u;
    }

    public synchronized int t() {
        return this.f23233v;
    }

    public final void u() {
        ScheduledExecutorService scheduledExecutorService = this.f23221j;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.execute(this.f23218g);
        }
    }

    public final synchronized boolean v(Tg.f fVar, int i10) {
        if (!this.f23230s && !this.f23226o) {
            if (this.f23225n + fVar.S() > 16777216) {
                d(1001, null);
                return false;
            }
            this.f23225n += fVar.S();
            this.f23224m.add(new e(i10, fVar));
            u();
            return true;
        }
        return false;
    }

    public synchronized int w() {
        return this.f23231t;
    }

    public void x() throws InterruptedException {
        ScheduledFuture<?> scheduledFuture = this.f23227p;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f23221j.shutdown();
        this.f23221j.awaitTermination(10L, TimeUnit.SECONDS);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v6 */
    public boolean y() throws IOException {
        String str;
        int i10;
        g gVar;
        synchronized (this) {
            try {
                if (this.f23230s) {
                    return false;
                }
                Sg.d dVar = this.f23220i;
                Tg.f poll = this.f23223l.poll();
                e eVar = 0;
                if (poll == null) {
                    Object poll2 = this.f23224m.poll();
                    if (poll2 instanceof d) {
                        i10 = this.f23228q;
                        str = this.f23229r;
                        if (i10 != -1) {
                            gVar = this.f23222k;
                            this.f23222k = null;
                            this.f23221j.shutdown();
                        } else {
                            this.f23227p = this.f23221j.schedule(new c(), ((d) poll2).f23241c, TimeUnit.MILLISECONDS);
                            gVar = null;
                        }
                    } else {
                        if (poll2 == null) {
                            return false;
                        }
                        str = null;
                        i10 = -1;
                        gVar = null;
                    }
                    eVar = poll2;
                } else {
                    str = null;
                    i10 = -1;
                    gVar = null;
                }
                try {
                    if (poll != null) {
                        dVar.f(poll);
                    } else if (eVar instanceof e) {
                        Tg.f fVar = eVar.f23243b;
                        Tg.d c10 = p.c(dVar.a(eVar.f23242a, fVar.S()));
                        c10.D(fVar);
                        c10.close();
                        synchronized (this) {
                            this.f23225n -= fVar.S();
                        }
                    } else {
                        if (!(eVar instanceof d)) {
                            throw new AssertionError();
                        }
                        d dVar2 = (d) eVar;
                        dVar.b(dVar2.f23239a, dVar2.f23240b);
                        if (gVar != null) {
                            this.f23213b.a(this, i10, str);
                        }
                    }
                    Gg.c.g(gVar);
                    return true;
                } catch (Throwable th2) {
                    Gg.c.g(gVar);
                    throw th2;
                }
            } finally {
            }
        }
    }

    public void z() {
        synchronized (this) {
            try {
                if (this.f23230s) {
                    return;
                }
                Sg.d dVar = this.f23220i;
                int i10 = this.f23234w ? this.f23231t : -1;
                this.f23231t++;
                this.f23234w = true;
                if (i10 == -1) {
                    try {
                        dVar.e(Tg.f.f24997g);
                        return;
                    } catch (IOException e10) {
                        n(e10, null);
                        return;
                    }
                }
                n(new SocketTimeoutException("sent ping but didn't receive pong within " + this.f23215d + "ms (after " + (i10 - 1) + " successful ping/pongs)"), null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
