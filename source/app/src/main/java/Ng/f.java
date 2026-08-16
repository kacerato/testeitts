package Ng;

import Ng.g;
import Tg.C3089c;
import Tg.p;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.A;
import okhttp3.internal.http2.ConnectionShutdownException;

public final class f implements Closeable {

    public static final int f16245v = 16777216;

    public static final ExecutorService f16246w = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Gg.c.H("OkHttp Http2Connection", true));

    public static final boolean f16247x = false;

    public final boolean f16248b;

    public final h f16249c;

    public final String f16251e;

    public int f16252f;

    public int f16253g;

    public boolean f16254h;

    public final ScheduledExecutorService f16255i;

    public final ExecutorService f16256j;

    public final k f16257k;

    public boolean f16258l;

    public long f16260n;

    public final l f16262p;

    public boolean f16263q;

    public final Socket f16264r;

    public final Ng.i f16265s;

    public final j f16266t;

    public final Set<Integer> f16267u;

    public final Map<Integer, Ng.h> f16250d = new LinkedHashMap();

    public long f16259m = 0;

    public l f16261o = new l();

    public class a extends Gg.b {

        public final int f16268c;

        public final Ng.a f16269d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Object[] objArr, int i10, Ng.a aVar) {
            super(str, objArr);
            this.f16268c = i10;
            this.f16269d = aVar;
        }

        @Override
        public void m() {
            try {
                f.this.Q(this.f16268c, this.f16269d);
            } catch (IOException unused) {
                f.this.h();
            }
        }
    }

    public class b extends Gg.b {

        public final int f16271c;

        public final long f16272d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, Object[] objArr, int i10, long j10) {
            super(str, objArr);
            this.f16271c = i10;
            this.f16272d = j10;
        }

        @Override
        public void m() {
            try {
                f.this.f16265s.r(this.f16271c, this.f16272d);
            } catch (IOException unused) {
                f.this.h();
            }
        }
    }

    public class c extends Gg.b {

        public final int f16274c;

        public final List f16275d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, Object[] objArr, int i10, List list) {
            super(str, objArr);
            this.f16274c = i10;
            this.f16275d = list;
        }

        @Override
        public void m() {
            if (f.this.f16257k.a(this.f16274c, this.f16275d)) {
                try {
                    f.this.f16265s.n(this.f16274c, Ng.a.CANCEL);
                    synchronized (f.this) {
                        f.this.f16267u.remove(Integer.valueOf(this.f16274c));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    public class d extends Gg.b {

        public final int f16277c;

        public final List f16278d;

        public final boolean f16279e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, Object[] objArr, int i10, List list, boolean z10) {
            super(str, objArr);
            this.f16277c = i10;
            this.f16278d = list;
            this.f16279e = z10;
        }

        @Override
        public void m() {
            boolean b10 = f.this.f16257k.b(this.f16277c, this.f16278d, this.f16279e);
            if (b10) {
                try {
                    f.this.f16265s.n(this.f16277c, Ng.a.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (b10 || this.f16279e) {
                synchronized (f.this) {
                    f.this.f16267u.remove(Integer.valueOf(this.f16277c));
                }
            }
        }
    }

    public class e extends Gg.b {

        public final int f16281c;

        public final C3089c f16282d;

        public final int f16283e;

        public final boolean f16284f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, Object[] objArr, int i10, C3089c c3089c, int i11, boolean z10) {
            super(str, objArr);
            this.f16281c = i10;
            this.f16282d = c3089c;
            this.f16283e = i11;
            this.f16284f = z10;
        }

        @Override
        public void m() {
            try {
                boolean c10 = f.this.f16257k.c(this.f16281c, this.f16282d, this.f16283e, this.f16284f);
                if (c10) {
                    f.this.f16265s.n(this.f16281c, Ng.a.CANCEL);
                }
                if (c10 || this.f16284f) {
                    synchronized (f.this) {
                        f.this.f16267u.remove(Integer.valueOf(this.f16281c));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    public class C0458f extends Gg.b {

        public final int f16286c;

        public final Ng.a f16287d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0458f(String str, Object[] objArr, int i10, Ng.a aVar) {
            super(str, objArr);
            this.f16286c = i10;
            this.f16287d = aVar;
        }

        @Override
        public void m() {
            f.this.f16257k.d(this.f16286c, this.f16287d);
            synchronized (f.this) {
                f.this.f16267u.remove(Integer.valueOf(this.f16286c));
            }
        }
    }

    public static class g {

        public Socket f16289a;

        public String f16290b;

        public Tg.e f16291c;

        public Tg.d f16292d;

        public h f16293e = h.f16297a;

        public k f16294f = k.f16361a;

        public boolean f16295g;

        public int f16296h;

        public g(boolean z10) {
            this.f16295g = z10;
        }

        public f a() {
            return new f(this);
        }

        public g b(h hVar) {
            this.f16293e = hVar;
            return this;
        }

        public g c(int i10) {
            this.f16296h = i10;
            return this;
        }

        public g d(k kVar) {
            this.f16294f = kVar;
            return this;
        }

        public g e(Socket socket) throws IOException {
            return f(socket, ((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), p.d(p.n(socket)), p.c(p.i(socket)));
        }

        public g f(Socket socket, String str, Tg.e eVar, Tg.d dVar) {
            this.f16289a = socket;
            this.f16290b = str;
            this.f16291c = eVar;
            this.f16292d = dVar;
            return this;
        }
    }

    public static abstract class h {

        public static final h f16297a = new a();

        public class a extends h {
            @Override
            public void f(Ng.h hVar) throws IOException {
                hVar.f(Ng.a.REFUSED_STREAM);
            }
        }

        public void e(f fVar) {
        }

        public abstract void f(Ng.h hVar) throws IOException;
    }

    public final class i extends Gg.b {

        public final boolean f16298c;

        public final int f16299d;

        public final int f16300e;

        public i(boolean z10, int i10, int i11) {
            super("OkHttp %s ping %08x%08x", f.this.f16251e, Integer.valueOf(i10), Integer.valueOf(i11));
            this.f16298c = z10;
            this.f16299d = i10;
            this.f16300e = i11;
        }

        @Override
        public void m() {
            f.this.G(this.f16298c, this.f16299d, this.f16300e);
        }
    }

    public class j extends Gg.b implements g.b {

        public final Ng.g f16302c;

        public class a extends Gg.b {

            public final Ng.h f16304c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, Object[] objArr, Ng.h hVar) {
                super(str, objArr);
                this.f16304c = hVar;
            }

            @Override
            public void m() {
                try {
                    f.this.f16249c.f(this.f16304c);
                } catch (IOException e10) {
                    Pg.f.k().r(4, "Http2Connection.Listener failure for " + f.this.f16251e, e10);
                    try {
                        this.f16304c.f(Ng.a.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        public class b extends Gg.b {
            public b(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override
            public void m() {
                f fVar = f.this;
                fVar.f16249c.e(fVar);
            }
        }

        public class c extends Gg.b {

            public final l f16307c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(String str, Object[] objArr, l lVar) {
                super(str, objArr);
                this.f16307c = lVar;
            }

            @Override
            public void m() {
                try {
                    f.this.f16265s.a(this.f16307c);
                } catch (IOException unused) {
                    f.this.h();
                }
            }
        }

        public j(Ng.g gVar) {
            super("OkHttp %s", f.this.f16251e);
            this.f16302c = gVar;
        }

        @Override
        public void a(boolean z10, l lVar) {
            Ng.h[] hVarArr;
            long j10;
            synchronized (f.this) {
                try {
                    int e10 = f.this.f16262p.e();
                    if (z10) {
                        f.this.f16262p.a();
                    }
                    f.this.f16262p.j(lVar);
                    n(lVar);
                    int e11 = f.this.f16262p.e();
                    hVarArr = null;
                    if (e11 == -1 || e11 == e10) {
                        j10 = 0;
                    } else {
                        j10 = e11 - e10;
                        f fVar = f.this;
                        if (!fVar.f16263q) {
                            fVar.f16263q = true;
                        }
                        if (!fVar.f16250d.isEmpty()) {
                            hVarArr = (Ng.h[]) f.this.f16250d.values().toArray(new Ng.h[f.this.f16250d.size()]);
                        }
                    }
                    f.f16246w.execute(new b("OkHttp %s settings", f.this.f16251e));
                } finally {
                }
            }
            if (hVarArr == null || j10 == 0) {
                return;
            }
            for (Ng.h hVar : hVarArr) {
                synchronized (hVar) {
                    hVar.c(j10);
                }
            }
        }

        @Override
        public void b(int i10, int i11, List<Ng.b> list) {
            f.this.s(i11, list);
        }

        @Override
        public void c(int i10, Ng.a aVar, Tg.f fVar) {
            Ng.h[] hVarArr;
            fVar.S();
            synchronized (f.this) {
                hVarArr = (Ng.h[]) f.this.f16250d.values().toArray(new Ng.h[f.this.f16250d.size()]);
                f.this.f16254h = true;
            }
            for (Ng.h hVar : hVarArr) {
                if (hVar.k() > i10 && hVar.n()) {
                    hVar.t(Ng.a.REFUSED_STREAM);
                    f.this.w(hVar.k());
                }
            }
        }

        @Override
        public void d(int i10, Ng.a aVar) {
            if (f.this.v(i10)) {
                f.this.t(i10, aVar);
                return;
            }
            Ng.h w10 = f.this.w(i10);
            if (w10 != null) {
                w10.t(aVar);
            }
        }

        @Override
        public void e(boolean z10, int i10, int i11) {
            if (!z10) {
                try {
                    f.this.f16255i.execute(new i(true, i10, i11));
                } catch (RejectedExecutionException unused) {
                }
            } else {
                synchronized (f.this) {
                    f.this.f16258l = false;
                    f.this.notifyAll();
                }
            }
        }

        @Override
        public void f(boolean z10, int i10, int i11, List<Ng.b> list) {
            if (f.this.v(i10)) {
                f.this.r(i10, list, z10);
                return;
            }
            synchronized (f.this) {
                try {
                    Ng.h k10 = f.this.k(i10);
                    if (k10 != null) {
                        k10.s(list);
                        if (z10) {
                            k10.r();
                            return;
                        }
                        return;
                    }
                    f fVar = f.this;
                    if (fVar.f16254h) {
                        return;
                    }
                    if (i10 <= fVar.f16252f) {
                        return;
                    }
                    if (i10 % 2 == fVar.f16253g % 2) {
                        return;
                    }
                    Ng.h hVar = new Ng.h(i10, f.this, false, z10, Gg.c.I(list));
                    f fVar2 = f.this;
                    fVar2.f16252f = i10;
                    fVar2.f16250d.put(Integer.valueOf(i10), hVar);
                    f.f16246w.execute(new a("OkHttp %s stream %d", new Object[]{f.this.f16251e, Integer.valueOf(i10)}, hVar));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void h(int i10, long j10) {
            if (i10 == 0) {
                synchronized (f.this) {
                    f fVar = f.this;
                    fVar.f16260n += j10;
                    fVar.notifyAll();
                }
                return;
            }
            Ng.h k10 = f.this.k(i10);
            if (k10 != null) {
                synchronized (k10) {
                    k10.c(j10);
                }
            }
        }

        @Override
        public void i(boolean z10, int i10, Tg.e eVar, int i11) throws IOException {
            if (f.this.v(i10)) {
                f.this.p(i10, eVar, i11, z10);
                return;
            }
            Ng.h k10 = f.this.k(i10);
            if (k10 == null) {
                f.this.R(i10, Ng.a.PROTOCOL_ERROR);
                long j10 = i11;
                f.this.A(j10);
                eVar.skip(j10);
                return;
            }
            k10.q(eVar, i11);
            if (z10) {
                k10.r();
            }
        }

        @Override
        public void j(int i10, String str, Tg.f fVar, String str2, int i11, long j10) {
        }

        @Override
        public void k() {
        }

        @Override
        public void l(int i10, int i11, int i12, boolean z10) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void m() {
            Ng.a aVar;
            Ng.a aVar2 = Ng.a.INTERNAL_ERROR;
            try {
                try {
                    try {
                        this.f16302c.c(this);
                        do {
                        } while (this.f16302c.b(false, this));
                        Ng.a aVar3 = Ng.a.NO_ERROR;
                        try {
                            aVar2 = Ng.a.CANCEL;
                            f.this.g(aVar3, aVar2);
                            aVar = aVar3;
                        } catch (IOException unused) {
                            aVar2 = Ng.a.PROTOCOL_ERROR;
                            f fVar = f.this;
                            fVar.g(aVar2, aVar2);
                            aVar = fVar;
                            Gg.c.g(this.f16302c);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            f.this.g(aVar, aVar2);
                        } catch (IOException unused2) {
                        }
                        Gg.c.g(this.f16302c);
                        throw th;
                    }
                } catch (IOException unused3) {
                } catch (Throwable th3) {
                    th = th3;
                    aVar = aVar2;
                    f.this.g(aVar, aVar2);
                    Gg.c.g(this.f16302c);
                    throw th;
                }
            } catch (IOException unused4) {
            }
            Gg.c.g(this.f16302c);
        }

        public final void n(l lVar) {
            try {
                f.this.f16255i.execute(new c("OkHttp %s ACK Settings", new Object[]{f.this.f16251e}, lVar));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    public f(g gVar) {
        l lVar = new l();
        this.f16262p = lVar;
        this.f16263q = false;
        this.f16267u = new LinkedHashSet();
        this.f16257k = gVar.f16294f;
        boolean z10 = gVar.f16295g;
        this.f16248b = z10;
        this.f16249c = gVar.f16293e;
        int i10 = z10 ? 1 : 2;
        this.f16253g = i10;
        if (z10) {
            this.f16253g = i10 + 2;
        }
        if (z10) {
            this.f16261o.k(7, 16777216);
        }
        String str = gVar.f16290b;
        this.f16251e = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, Gg.c.H(Gg.c.s("OkHttp %s Writer", str), false));
        this.f16255i = scheduledThreadPoolExecutor;
        if (gVar.f16296h != 0) {
            i iVar = new i(false, 0, 0);
            int i11 = gVar.f16296h;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(iVar, i11, i11, TimeUnit.MILLISECONDS);
        }
        this.f16256j = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Gg.c.H(Gg.c.s("OkHttp %s Push Observer", str), true));
        lVar.k(7, 65535);
        lVar.k(5, 16384);
        this.f16260n = lVar.e();
        this.f16264r = gVar.f16289a;
        this.f16265s = new Ng.i(gVar.f16292d, z10);
        this.f16266t = new j(new Ng.g(gVar.f16291c, z10));
    }

    public synchronized void A(long j10) {
        long j11 = this.f16259m + j10;
        this.f16259m = j11;
        if (j11 >= this.f16261o.e() / 2) {
            S(0, this.f16259m);
            this.f16259m = 0L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
    
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r4), r8.f16265s.k());
        r6 = r2;
        r8.f16260n -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void B(int i10, boolean z10, C3089c c3089c, long j10) throws IOException {
        int min;
        long j11;
        if (j10 == 0) {
            this.f16265s.d(z10, i10, c3089c, 0);
            return;
        }
        loop0: while (j10 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            long j12 = this.f16260n;
                            if (j12 > 0) {
                                break;
                            } else if (!this.f16250d.containsKey(Integer.valueOf(i10))) {
                                break loop0;
                            } else {
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            j10 -= j11;
            this.f16265s.d(z10 && j10 == 0, i10, c3089c, min);
        }
    }

    public void G(boolean z10, int i10, int i11) {
        boolean z11;
        if (!z10) {
            synchronized (this) {
                z11 = this.f16258l;
                this.f16258l = true;
            }
            if (z11) {
                h();
                return;
            }
        }
        try {
            this.f16265s.l(z10, i10, i11);
        } catch (IOException unused) {
            h();
        }
    }

    public void L() throws InterruptedException {
        G(false, 1330343787, -257978967);
        f();
    }

    public void N(int i10, boolean z10, List<Ng.b> list) throws IOException {
        this.f16265s.p(z10, i10, list);
    }

    public void Q(int i10, Ng.a aVar) throws IOException {
        this.f16265s.n(i10, aVar);
    }

    public void R(int i10, Ng.a aVar) {
        try {
            this.f16255i.execute(new a("OkHttp %s stream %d", new Object[]{this.f16251e, Integer.valueOf(i10)}, i10, aVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    public void S(int i10, long j10) {
        try {
            this.f16255i.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f16251e, Integer.valueOf(i10)}, i10, j10));
        } catch (RejectedExecutionException unused) {
        }
    }

    @Override
    public void close() throws IOException {
        g(Ng.a.NO_ERROR, Ng.a.CANCEL);
    }

    public synchronized void f() throws InterruptedException {
        while (this.f16258l) {
            wait();
        }
    }

    public void flush() throws IOException {
        this.f16265s.flush();
    }

    public void g(Ng.a aVar, Ng.a aVar2) throws IOException {
        Ng.h[] hVarArr = null;
        try {
            y(aVar);
            e = null;
        } catch (IOException e10) {
            e = e10;
        }
        synchronized (this) {
            try {
                if (!this.f16250d.isEmpty()) {
                    hVarArr = (Ng.h[]) this.f16250d.values().toArray(new Ng.h[this.f16250d.size()]);
                    this.f16250d.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (hVarArr != null) {
            for (Ng.h hVar : hVarArr) {
                try {
                    hVar.f(aVar2);
                } catch (IOException e11) {
                    if (e != null) {
                        e = e11;
                    }
                }
            }
        }
        try {
            this.f16265s.close();
        } catch (IOException e12) {
            if (e == null) {
                e = e12;
            }
        }
        try {
            this.f16264r.close();
        } catch (IOException e13) {
            e = e13;
        }
        this.f16255i.shutdown();
        this.f16256j.shutdown();
        if (e != null) {
            throw e;
        }
    }

    public final void h() {
        try {
            Ng.a aVar = Ng.a.PROTOCOL_ERROR;
            g(aVar, aVar);
        } catch (IOException unused) {
        }
    }

    public synchronized boolean isShutdown() {
        return this.f16254h;
    }

    public A j() {
        return A.HTTP_2;
    }

    public synchronized Ng.h k(int i10) {
        return this.f16250d.get(Integer.valueOf(i10));
    }

    public synchronized int l() {
        return this.f16262p.f(Integer.MAX_VALUE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0044 A[Catch: all -> 0x0013, TryCatch #0 {all -> 0x0013, blocks: (B:6:0x0006, B:8:0x000d, B:9:0x0015, B:11:0x0019, B:13:0x002c, B:15:0x0034, B:19:0x003e, B:21:0x0044, B:22:0x004d, B:36:0x0072, B:37:0x0077), top: B:5:0x0006, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Ng.h m(int i10, List<Ng.b> list, boolean z10) throws IOException {
        int i11;
        Ng.h hVar;
        boolean z11;
        boolean z12 = !z10;
        synchronized (this.f16265s) {
            try {
                synchronized (this) {
                    try {
                        if (this.f16253g > 1073741823) {
                            y(Ng.a.REFUSED_STREAM);
                        }
                        if (this.f16254h) {
                            throw new ConnectionShutdownException();
                        }
                        i11 = this.f16253g;
                        this.f16253g = i11 + 2;
                        hVar = new Ng.h(i11, this, z12, false, null);
                        if (z10 && this.f16260n != 0 && hVar.f16322b != 0) {
                            z11 = false;
                            if (hVar.o()) {
                                this.f16250d.put(Integer.valueOf(i11), hVar);
                            }
                        }
                        z11 = true;
                        if (hVar.o()) {
                        }
                    } finally {
                    }
                }
                if (i10 == 0) {
                    this.f16265s.q(z12, i11, i10, list);
                } else {
                    if (this.f16248b) {
                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                    }
                    this.f16265s.m(i10, i11, list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z11) {
            this.f16265s.flush();
        }
        return hVar;
    }

    public Ng.h n(List<Ng.b> list, boolean z10) throws IOException {
        return m(0, list, z10);
    }

    public synchronized int o() {
        return this.f16250d.size();
    }

    public void p(int i10, Tg.e eVar, int i11, boolean z10) throws IOException {
        C3089c c3089c = new C3089c();
        long j10 = i11;
        eVar.X1(j10);
        eVar.K(c3089c, j10);
        if (c3089c.Q() == j10) {
            q(new e("OkHttp %s Push Data[%s]", new Object[]{this.f16251e, Integer.valueOf(i10)}, i10, c3089c, i11, z10));
            return;
        }
        throw new IOException(c3089c.Q() + " != " + i11);
    }

    public final synchronized void q(Gg.b bVar) {
        if (!isShutdown()) {
            this.f16256j.execute(bVar);
        }
    }

    public void r(int i10, List<Ng.b> list, boolean z10) {
        try {
            q(new d("OkHttp %s Push Headers[%s]", new Object[]{this.f16251e, Integer.valueOf(i10)}, i10, list, z10));
        } catch (RejectedExecutionException unused) {
        }
    }

    public void s(int i10, List<Ng.b> list) {
        synchronized (this) {
            try {
                if (this.f16267u.contains(Integer.valueOf(i10))) {
                    R(i10, Ng.a.PROTOCOL_ERROR);
                    return;
                }
                this.f16267u.add(Integer.valueOf(i10));
                try {
                    q(new c("OkHttp %s Push Request[%s]", new Object[]{this.f16251e, Integer.valueOf(i10)}, i10, list));
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void start() throws IOException {
        z(true);
    }

    public void t(int i10, Ng.a aVar) {
        q(new C0458f("OkHttp %s Push Reset[%s]", new Object[]{this.f16251e, Integer.valueOf(i10)}, i10, aVar));
    }

    public Ng.h u(int i10, List<Ng.b> list, boolean z10) throws IOException {
        if (this.f16248b) {
            throw new IllegalStateException("Client cannot push requests.");
        }
        return m(i10, list, z10);
    }

    public boolean v(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    public synchronized Ng.h w(int i10) {
        Ng.h remove;
        remove = this.f16250d.remove(Integer.valueOf(i10));
        notifyAll();
        return remove;
    }

    public void x(l lVar) throws IOException {
        synchronized (this.f16265s) {
            synchronized (this) {
                if (this.f16254h) {
                    throw new ConnectionShutdownException();
                }
                this.f16261o.j(lVar);
            }
            this.f16265s.o(lVar);
        }
    }

    public void y(Ng.a aVar) throws IOException {
        synchronized (this.f16265s) {
            synchronized (this) {
                if (this.f16254h) {
                    return;
                }
                this.f16254h = true;
                this.f16265s.g(this.f16252f, aVar, Gg.c.f7798a);
            }
        }
    }

    public void z(boolean z10) throws IOException {
        if (z10) {
            this.f16265s.c();
            this.f16265s.o(this.f16261o);
            if (this.f16261o.e() != 65535) {
                this.f16265s.r(0, r5 - 65535);
            }
        }
        new Thread(this.f16266t).start();
    }
}
