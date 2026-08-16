package Tg;

import com.tonyodev.fetch2core.FetchErrorStrings;
import eg.C13143u0;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public class C3087a extends z {

    public static final int f24969h = 65536;

    public static final long f24970i;

    public static final long f24971j;

    @Nullable
    public static C3087a f24972k;

    public boolean f24973e;

    @Nullable
    public C3087a f24974f;

    public long f24975g;

    public class C0707a implements x {

        public final x f24976b;

        public C0707a(x xVar) {
            this.f24976b = xVar;
        }

        @Override
        public z a0() {
            return C3087a.this;
        }

        @Override
        public void close() throws IOException {
            C3087a.this.m();
            try {
                try {
                    this.f24976b.close();
                    C3087a.this.o(true);
                } catch (IOException e10) {
                    throw C3087a.this.n(e10);
                }
            } catch (Throwable th2) {
                C3087a.this.o(false);
                throw th2;
            }
        }

        @Override
        public void flush() throws IOException {
            C3087a.this.m();
            try {
                try {
                    this.f24976b.flush();
                    C3087a.this.o(true);
                } catch (IOException e10) {
                    throw C3087a.this.n(e10);
                }
            } catch (Throwable th2) {
                C3087a.this.o(false);
                throw th2;
            }
        }

        @Override
        public void h0(C3089c c3089c, long j10) throws IOException {
            B.b(c3089c.f24985c, 0L, j10);
            while (true) {
                long j11 = 0;
                if (j10 <= 0) {
                    return;
                }
                u uVar = c3089c.f24984b;
                while (true) {
                    if (j11 >= 65536) {
                        break;
                    }
                    j11 += uVar.f25063c - uVar.f25062b;
                    if (j11 >= j10) {
                        j11 = j10;
                        break;
                    }
                    uVar = uVar.f25066f;
                }
                C3087a.this.m();
                try {
                    try {
                        this.f24976b.h0(c3089c, j11);
                        j10 -= j11;
                        C3087a.this.o(true);
                    } catch (IOException e10) {
                        throw C3087a.this.n(e10);
                    }
                } catch (Throwable th2) {
                    C3087a.this.o(false);
                    throw th2;
                }
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + ((Object) this.f24976b) + ")";
        }
    }

    public class b implements y {

        public final y f24978b;

        public b(y yVar) {
            this.f24978b = yVar;
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            C3087a.this.m();
            try {
                try {
                    long K10 = this.f24978b.K(c3089c, j10);
                    C3087a.this.o(true);
                    return K10;
                } catch (IOException e10) {
                    throw C3087a.this.n(e10);
                }
            } catch (Throwable th2) {
                C3087a.this.o(false);
                throw th2;
            }
        }

        @Override
        public z a0() {
            return C3087a.this;
        }

        @Override
        public void close() throws IOException {
            try {
                try {
                    this.f24978b.close();
                    C3087a.this.o(true);
                } catch (IOException e10) {
                    throw C3087a.this.n(e10);
                }
            } catch (Throwable th2) {
                C3087a.this.o(false);
                throw th2;
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + ((Object) this.f24978b) + ")";
        }
    }

    public static final class c extends Thread {
        public c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0017, code lost:
        
            r1.v();
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            while (true) {
                synchronized (C3087a.class) {
                    try {
                        C3087a k10 = C3087a.k();
                        if (k10 != null) {
                            if (k10 == C3087a.f24972k) {
                                C3087a.f24972k = null;
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f24970i = millis;
        f24971j = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    @Nullable
    public static C3087a k() throws InterruptedException {
        C3087a c3087a = f24972k.f24974f;
        if (c3087a == null) {
            long nanoTime = System.nanoTime();
            C3087a.class.wait(f24970i);
            if (f24972k.f24974f != null || System.nanoTime() - nanoTime < f24971j) {
                return null;
            }
            return f24972k;
        }
        long r10 = c3087a.r(System.nanoTime());
        if (r10 > 0) {
            long j10 = r10 / C13143u0.f85788e;
            C3087a.class.wait(j10, (int) (r10 - (C13143u0.f85788e * j10)));
            return null;
        }
        f24972k.f24974f = c3087a.f24974f;
        c3087a.f24974f = null;
        return c3087a;
    }

    public static synchronized boolean l(C3087a c3087a) {
        synchronized (C3087a.class) {
            C3087a c3087a2 = f24972k;
            while (c3087a2 != null) {
                C3087a c3087a3 = c3087a2.f24974f;
                if (c3087a3 == c3087a) {
                    c3087a2.f24974f = c3087a.f24974f;
                    c3087a.f24974f = null;
                    return false;
                }
                c3087a2 = c3087a3;
            }
            return true;
        }
    }

    public static synchronized void s(C3087a c3087a, long j10, boolean z10) {
        synchronized (C3087a.class) {
            try {
                if (f24972k == null) {
                    f24972k = new C3087a();
                    new c().start();
                }
                long nanoTime = System.nanoTime();
                if (j10 != 0 && z10) {
                    c3087a.f24975g = Math.min(j10, c3087a.d() - nanoTime) + nanoTime;
                } else if (j10 != 0) {
                    c3087a.f24975g = j10 + nanoTime;
                } else {
                    if (!z10) {
                        throw new AssertionError();
                    }
                    c3087a.f24975g = c3087a.d();
                }
                long r10 = c3087a.r(nanoTime);
                C3087a c3087a2 = f24972k;
                while (true) {
                    C3087a c3087a3 = c3087a2.f24974f;
                    if (c3087a3 == null || r10 < c3087a3.r(nanoTime)) {
                        break;
                    } else {
                        c3087a2 = c3087a2.f24974f;
                    }
                }
                c3087a.f24974f = c3087a2.f24974f;
                c3087a2.f24974f = c3087a;
                if (c3087a2 == f24972k) {
                    C3087a.class.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void m() {
        if (this.f24973e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long i10 = i();
        boolean f10 = f();
        if (i10 != 0 || f10) {
            this.f24973e = true;
            s(this, i10, f10);
        }
    }

    public final IOException n(IOException iOException) throws IOException {
        return !p() ? iOException : q(iOException);
    }

    public final void o(boolean z10) throws IOException {
        if (p() && z10) {
            throw q(null);
        }
    }

    public final boolean p() {
        if (!this.f24973e) {
            return false;
        }
        this.f24973e = false;
        return l(this);
    }

    public IOException q(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException(FetchErrorStrings.CONNECTION_TIMEOUT);
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final long r(long j10) {
        return this.f24975g - j10;
    }

    public final x t(x xVar) {
        return new C0707a(xVar);
    }

    public final y u(y yVar) {
        return new b(yVar);
    }

    public void v() {
    }
}
