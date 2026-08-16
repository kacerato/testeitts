package com.google.common.util.concurrent;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.CheckForNull;

@A
@v2.c
public final class C12610f0 {

    public final boolean f67442a;

    public final ReentrantLock f67443b;

    @CheckForNull
    @J2.a("lock")
    public a f67444c;

    public static abstract class a {

        @q3.i
        public final C12610f0 f67445a;

        public final Condition f67446b;

        @J2.a("monitor.lock")
        public int f67447c = 0;

        @CheckForNull
        @J2.a("monitor.lock")
        public a f67448d;

        public a(C12610f0 c12610f0) {
            this.f67445a = (C12610f0) w2.H.F(c12610f0, "monitor");
            this.f67446b = c12610f0.f67443b.newCondition();
        }

        public abstract boolean a();
    }

    public C12610f0() {
        this(false);
    }

    public static long E(long j10, long j11) {
        if (j11 <= 0) {
            return 0L;
        }
        return j11 - (System.nanoTime() - j10);
    }

    public static long H(long j10, TimeUnit timeUnit) {
        return com.google.common.primitives.n.f(timeUnit.toNanos(j10), 0L, 6917529027641081853L);
    }

    public static long y(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        long nanoTime = System.nanoTime();
        if (nanoTime == 0) {
            return 1L;
        }
        return nanoTime;
    }

    public boolean A() {
        return this.f67443b.isLocked();
    }

    public boolean B() {
        return this.f67443b.isHeldByCurrentThread();
    }

    @J2.a("lock")
    public final boolean C(a aVar) {
        try {
            return aVar.a();
        } catch (Throwable th2) {
            F();
            throw th2;
        }
    }

    public void D() {
        ReentrantLock reentrantLock = this.f67443b;
        try {
            if (reentrantLock.getHoldCount() == 1) {
                G();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @J2.a("lock")
    public final void F() {
        for (a aVar = this.f67444c; aVar != null; aVar = aVar.f67448d) {
            aVar.f67446b.signalAll();
        }
    }

    @J2.a("lock")
    public final void G() {
        for (a aVar = this.f67444c; aVar != null; aVar = aVar.f67448d) {
            if (C(aVar)) {
                aVar.f67446b.signal();
                return;
            }
        }
    }

    public boolean I() {
        return this.f67443b.tryLock();
    }

    public boolean J(a aVar) {
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f67443b;
        if (!reentrantLock.tryLock()) {
            return false;
        }
        try {
            boolean a10 = aVar.a();
            if (!a10) {
            }
            return a10;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void K(a aVar) throws InterruptedException {
        if (aVar.f67445a != this || !this.f67443b.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (aVar.a()) {
            return;
        }
        b(aVar, true);
    }

    public boolean L(a aVar, long j10, TimeUnit timeUnit) throws InterruptedException {
        long H10 = H(j10, timeUnit);
        if (aVar.f67445a != this || !this.f67443b.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (aVar.a()) {
            return true;
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return c(aVar, H10, true);
    }

    public void M(a aVar) {
        if (aVar.f67445a != this || !this.f67443b.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (aVar.a()) {
            return;
        }
        d(aVar, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean N(a aVar, long j10, TimeUnit timeUnit) {
        long H10 = H(j10, timeUnit);
        if (aVar.f67445a != this || !this.f67443b.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        boolean z10 = true;
        if (aVar.a()) {
            return true;
        }
        long y10 = y(H10);
        boolean interrupted = Thread.interrupted();
        long j11 = H10;
        boolean z11 = true;
        while (true) {
            try {
                try {
                    boolean c10 = c(aVar, j11, z11);
                    if (interrupted) {
                        Thread.currentThread().interrupt();
                    }
                    return c10;
                } catch (Throwable th2) {
                    th = th2;
                    if (z10) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (InterruptedException unused) {
                if (aVar.a()) {
                    Thread.currentThread().interrupt();
                    return true;
                }
                j11 = E(y10, H10);
                z11 = false;
                interrupted = true;
            } catch (Throwable th3) {
                th = th3;
                z10 = interrupted;
                if (z10) {
                }
                throw th;
            }
        }
    }

    @J2.a("lock")
    public final void b(a aVar, boolean z10) throws InterruptedException {
        if (z10) {
            G();
        }
        e(aVar);
        do {
            try {
                aVar.f67446b.await();
            } finally {
                f(aVar);
            }
        } while (!aVar.a());
    }

    @J2.a("lock")
    public final boolean c(a aVar, long j10, boolean z10) throws InterruptedException {
        boolean z11 = true;
        while (j10 > 0) {
            if (z11) {
                if (z10) {
                    try {
                        G();
                    } catch (Throwable th2) {
                        if (!z11) {
                            f(aVar);
                        }
                        throw th2;
                    }
                }
                e(aVar);
                z11 = false;
            }
            j10 = aVar.f67446b.awaitNanos(j10);
            if (aVar.a()) {
                if (!z11) {
                    f(aVar);
                }
                return true;
            }
        }
        if (!z11) {
            f(aVar);
        }
        return false;
    }

    @J2.a("lock")
    public final void d(a aVar, boolean z10) {
        if (z10) {
            G();
        }
        e(aVar);
        do {
            try {
                aVar.f67446b.awaitUninterruptibly();
            } finally {
                f(aVar);
            }
        } while (!aVar.a());
    }

    @J2.a("lock")
    public final void e(a aVar) {
        int i10 = aVar.f67447c;
        aVar.f67447c = i10 + 1;
        if (i10 == 0) {
            aVar.f67448d = this.f67444c;
            this.f67444c = aVar;
        }
    }

    @J2.a("lock")
    public final void f(a aVar) {
        int i10 = aVar.f67447c - 1;
        aVar.f67447c = i10;
        if (i10 == 0) {
            a aVar2 = this.f67444c;
            a aVar3 = null;
            while (aVar2 != aVar) {
                aVar3 = aVar2;
                aVar2 = aVar2.f67448d;
            }
            if (aVar3 == null) {
                this.f67444c = aVar2.f67448d;
            } else {
                aVar3.f67448d = aVar2.f67448d;
            }
            aVar2.f67448d = null;
        }
    }

    public void g() {
        this.f67443b.lock();
    }

    public boolean h(long j10, TimeUnit timeUnit) {
        boolean tryLock;
        long H10 = H(j10, timeUnit);
        ReentrantLock reentrantLock = this.f67443b;
        boolean z10 = true;
        if (!this.f67442a && reentrantLock.tryLock()) {
            return true;
        }
        boolean interrupted = Thread.interrupted();
        try {
            long nanoTime = System.nanoTime();
            long j11 = H10;
            while (true) {
                try {
                    try {
                        tryLock = reentrantLock.tryLock(j11, TimeUnit.NANOSECONDS);
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                        if (z10) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    j11 = E(nanoTime, H10);
                    interrupted = true;
                }
            }
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
            return tryLock;
        } catch (Throwable th3) {
            th = th3;
            z10 = interrupted;
        }
    }

    public boolean i(a aVar) {
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f67443b;
        reentrantLock.lock();
        try {
            boolean a10 = aVar.a();
            if (!a10) {
            }
            return a10;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean j(a aVar, long j10, TimeUnit timeUnit) {
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        if (!h(j10, timeUnit)) {
            return false;
        }
        try {
            boolean a10 = aVar.a();
            if (!a10) {
            }
            return a10;
        } finally {
            this.f67443b.unlock();
        }
    }

    public boolean k(a aVar) throws InterruptedException {
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f67443b;
        reentrantLock.lockInterruptibly();
        try {
            boolean a10 = aVar.a();
            if (!a10) {
            }
            return a10;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean l(a aVar, long j10, TimeUnit timeUnit) throws InterruptedException {
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f67443b;
        if (!reentrantLock.tryLock(j10, timeUnit)) {
            return false;
        }
        try {
            boolean a10 = aVar.a();
            if (!a10) {
            }
            return a10;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void m() throws InterruptedException {
        this.f67443b.lockInterruptibly();
    }

    public boolean n(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f67443b.tryLock(j10, timeUnit);
    }

    public void o(a aVar) throws InterruptedException {
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f67443b;
        boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lockInterruptibly();
        try {
            if (aVar.a()) {
                return;
            }
            b(aVar, isHeldByCurrentThread);
        } catch (Throwable th2) {
            D();
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
    
        if (c(r11, r0, r3) != false) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004f A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean p(a aVar, long j10, TimeUnit timeUnit) throws InterruptedException {
        long y10;
        long H10 = H(j10, timeUnit);
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f67443b;
        boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        boolean z10 = false;
        try {
            if (!this.f67442a) {
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                if (reentrantLock.tryLock()) {
                    y10 = 0;
                    if (!aVar.a()) {
                        if (y10 != 0) {
                            H10 = E(y10, H10);
                        }
                    }
                    z10 = true;
                    if (!z10) {
                    }
                    return z10;
                }
            }
            if (!aVar.a()) {
            }
            z10 = true;
            if (!z10) {
            }
            return z10;
        } catch (Throwable th2) {
            if (!isHeldByCurrentThread) {
                try {
                    G();
                } finally {
                    reentrantLock.unlock();
                }
            }
            throw th2;
        }
        y10 = y(H10);
        if (!reentrantLock.tryLock(j10, timeUnit)) {
            return false;
        }
    }

    public void q(a aVar) {
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f67443b;
        boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lock();
        try {
            if (aVar.a()) {
                return;
            }
            d(aVar, isHeldByCurrentThread);
        } catch (Throwable th2) {
            D();
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f A[Catch: all -> 0x0023, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0023, blocks: (B:5:0x0012, B:7:0x001a, B:22:0x004f, B:33:0x005c, B:34:0x005f, B:35:0x0025, B:38:0x002a, B:13:0x0032, B:17:0x003d, B:18:0x0049, B:27:0x0045), top: B:4:0x0012, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean r(a aVar, long j10, TimeUnit timeUnit) {
        long y10;
        long E10;
        long H10 = H(j10, timeUnit);
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f67443b;
        boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        boolean interrupted = Thread.interrupted();
        try {
            boolean z10 = true;
            if (!this.f67442a && reentrantLock.tryLock()) {
                y10 = 0;
                while (!aVar.a()) {
                    try {
                        if (y10 == 0) {
                            y10 = y(H10);
                            E10 = H10;
                        } else {
                            E10 = E(y10, H10);
                        }
                        z10 = c(aVar, E10, isHeldByCurrentThread);
                    } catch (InterruptedException unused) {
                        isHeldByCurrentThread = false;
                        interrupted = z10;
                    } catch (Throwable th2) {
                        reentrantLock.unlock();
                        throw th2;
                    }
                }
                if (!z10) {
                    reentrantLock.unlock();
                }
                if (interrupted) {
                    Thread.currentThread().interrupt();
                }
                return z10;
            }
            y10 = y(H10);
            long j11 = H10;
            while (true) {
                try {
                    try {
                        break;
                    } catch (Throwable th3) {
                        th = th3;
                        interrupted = true;
                        if (interrupted) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (InterruptedException unused2) {
                    j11 = E(y10, H10);
                    interrupted = true;
                }
            }
            if (!reentrantLock.tryLock(j11, TimeUnit.NANOSECONDS)) {
                if (interrupted) {
                    Thread.currentThread().interrupt();
                }
                return false;
            }
            while (!aVar.a()) {
            }
            if (!z10) {
            }
            if (interrupted) {
            }
            return z10;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public int s() {
        return this.f67443b.getHoldCount();
    }

    public int t() {
        return this.f67443b.getQueueLength();
    }

    public int u(a aVar) {
        if (aVar.f67445a != this) {
            throw new IllegalMonitorStateException();
        }
        this.f67443b.lock();
        try {
            return aVar.f67447c;
        } finally {
            this.f67443b.unlock();
        }
    }

    public boolean v(Thread thread) {
        return this.f67443b.hasQueuedThread(thread);
    }

    public boolean w() {
        return this.f67443b.hasQueuedThreads();
    }

    public boolean x(a aVar) {
        return u(aVar) > 0;
    }

    public boolean z() {
        return this.f67442a;
    }

    public C12610f0(boolean z10) {
        this.f67444c = null;
        this.f67442a = z10;
        this.f67443b = new ReentrantLock(z10);
    }
}
