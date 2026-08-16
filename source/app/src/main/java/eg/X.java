package eg;

import eg.AbstractC13137r0;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/DefaultExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"})
public final class X extends AbstractC13137r0 implements Runnable {

    @Nullable
    private static volatile Thread _thread = null;
    private static volatile int debugStatus = 0;

    @NotNull
    public static final X f85683h;

    @NotNull
    public static final String f85684i = "kotlinx.coroutines.DefaultExecutor";

    public static final long f85685j = 1000;

    public static final long f85686k;

    public static final int f85687l = 0;

    public static final int f85688m = 1;

    public static final int f85689n = 2;

    public static final int f85690o = 3;

    public static final int f85691p = 4;

    static {
        Long l10;
        X x10 = new X();
        f85683h = x10;
        AbstractC13136q0.B(x10, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l10 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l10 = 1000L;
        }
        f85686k = timeUnit.toNanos(l10.longValue());
    }

    public static void G0() {
    }

    public final synchronized void D0() {
        if (I0()) {
            debugStatus = 3;
            x0();
            kotlin.jvm.internal.M.n(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final synchronized Thread E0() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, f85684i);
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    public final synchronized void F0() {
        debugStatus = 0;
        E0();
        while (debugStatus == 0) {
            kotlin.jvm.internal.M.n(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        }
    }

    public final boolean H0() {
        return debugStatus == 4;
    }

    public final boolean I0() {
        int i10 = debugStatus;
        return i10 == 2 || i10 == 3;
    }

    public final boolean J0() {
        return _thread != null;
    }

    public final synchronized boolean K0() {
        if (I0()) {
            return false;
        }
        debugStatus = 1;
        kotlin.jvm.internal.M.n(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    public final void L0() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    public final synchronized void M0(long j10) {
        nf.P0 p02;
        try {
            long currentTimeMillis = System.currentTimeMillis() + j10;
            if (!I0()) {
                debugStatus = 2;
            }
            while (debugStatus != 3 && _thread != null) {
                Thread thread = _thread;
                if (thread != null) {
                    AbstractC13105b b10 = C13107c.b();
                    if (b10 != null) {
                        b10.g(thread);
                        p02 = nf.P0.f98194a;
                    } else {
                        p02 = null;
                    }
                    if (p02 == null) {
                        LockSupport.unpark(thread);
                    }
                }
                if (currentTimeMillis - System.currentTimeMillis() <= 0) {
                    break;
                }
                kotlin.jvm.internal.M.n(this, "null cannot be cast to non-null type java.lang.Object");
                wait(j10);
            }
            debugStatus = 0;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    @NotNull
    public Thread k0() {
        Thread thread = _thread;
        return thread == null ? E0() : thread;
    }

    @Override
    @NotNull
    public InterfaceC13128m0 m(long j10, @NotNull Runnable runnable, @NotNull yf.j jVar) {
        return A0(j10, runnable);
    }

    @Override
    public void m0(long j10, @NotNull AbstractC13137r0.c cVar) {
        L0();
    }

    @Override
    public void r0(@NotNull Runnable runnable) {
        if (H0()) {
            L0();
        }
        super.r0(runnable);
    }

    @Override
    public void run() {
        nf.P0 p02;
        n1.f85746a.d(this);
        AbstractC13105b b10 = C13107c.b();
        if (b10 != null) {
            b10.d();
        }
        try {
            if (!K0()) {
                _thread = null;
                D0();
                AbstractC13105b b11 = C13107c.b();
                if (b11 != null) {
                    b11.h();
                }
                if (d0()) {
                    return;
                }
                k0();
                return;
            }
            long j10 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long g02 = g0();
                if (g02 == Long.MAX_VALUE) {
                    AbstractC13105b b12 = C13107c.b();
                    long b13 = b12 != null ? b12.b() : System.nanoTime();
                    if (j10 == Long.MAX_VALUE) {
                        j10 = f85686k + b13;
                    }
                    long j11 = j10 - b13;
                    if (j11 <= 0) {
                        _thread = null;
                        D0();
                        AbstractC13105b b14 = C13107c.b();
                        if (b14 != null) {
                            b14.h();
                        }
                        if (d0()) {
                            return;
                        }
                        k0();
                        return;
                    }
                    g02 = Vf.u.E(g02, j11);
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (g02 > 0) {
                    if (I0()) {
                        _thread = null;
                        D0();
                        AbstractC13105b b15 = C13107c.b();
                        if (b15 != null) {
                            b15.h();
                        }
                        if (d0()) {
                            return;
                        }
                        k0();
                        return;
                    }
                    AbstractC13105b b16 = C13107c.b();
                    if (b16 != null) {
                        b16.c(this, g02);
                        p02 = nf.P0.f98194a;
                    } else {
                        p02 = null;
                    }
                    if (p02 == null) {
                        LockSupport.parkNanos(this, g02);
                    }
                }
            }
        } catch (Throwable th2) {
            _thread = null;
            D0();
            AbstractC13105b b17 = C13107c.b();
            if (b17 != null) {
                b17.h();
            }
            if (!d0()) {
                k0();
            }
            throw th2;
        }
    }

    @Override
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
