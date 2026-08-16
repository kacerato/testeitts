package com.google.common.util.concurrent;

import com.google.common.collect.C12530i2;
import com.google.common.collect.M1;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.M;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import v2.InterfaceC15800a;

@A
@v2.b(emulated = true)
public final class C12612g0 {

    public class a implements Runnable {

        public final BlockingQueue f67451b;

        public final Z f67452c;

        public a(BlockingQueue blockingQueue, Z z10) {
            this.f67451b = blockingQueue;
            this.f67452c = z10;
        }

        @Override
        public void run() {
            this.f67451b.add(this.f67452c);
        }
    }

    public class b implements Executor {

        public final Executor f67453b;

        public final w2.Q f67454c;

        public b(Executor executor, w2.Q q10) {
            this.f67453b = executor;
            this.f67454c = q10;
        }

        @Override
        public void execute(Runnable runnable) {
            this.f67453b.execute(C12631v.k(runnable, this.f67454c));
        }
    }

    public class c extends J0 {

        public final w2.Q f67455c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ExecutorService executorService, w2.Q q10) {
            super(executorService);
            this.f67455c = q10;
        }

        @Override
        public Runnable c(Runnable runnable) {
            return C12631v.k(runnable, this.f67455c);
        }

        @Override
        public <T> Callable<T> d(Callable<T> callable) {
            return C12631v.l(callable, this.f67455c);
        }
    }

    public class d extends K0 {

        public final w2.Q f67456d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ScheduledExecutorService scheduledExecutorService, w2.Q q10) {
            super(scheduledExecutorService);
            this.f67456d = q10;
        }

        @Override
        public Runnable c(Runnable runnable) {
            return C12631v.k(runnable, this.f67456d);
        }

        @Override
        public <T> Callable<T> d(Callable<T> callable) {
            return C12631v.l(callable, this.f67456d);
        }
    }

    public class e implements Executor {

        public final Executor f67457b;

        public final AbstractFuture f67458c;

        public e(Executor executor, AbstractFuture abstractFuture) {
            this.f67457b = executor;
            this.f67458c = abstractFuture;
        }

        @Override
        public void execute(Runnable runnable) {
            try {
                this.f67457b.execute(runnable);
            } catch (RejectedExecutionException e10) {
                this.f67458c.D(e10);
            }
        }
    }

    @v2.d
    @v2.c
    public static class f {

        public class a implements Runnable {

            public final ExecutorService f67459b;

            public final long f67460c;

            public final TimeUnit f67461d;

            public a(f fVar, ExecutorService executorService, long j10, TimeUnit timeUnit) {
                this.f67459b = executorService;
                this.f67460c = j10;
                this.f67461d = timeUnit;
            }

            @Override
            public void run() {
                try {
                    this.f67459b.shutdown();
                    this.f67459b.awaitTermination(this.f67460c, this.f67461d);
                } catch (InterruptedException unused) {
                }
            }
        }

        public final void a(ExecutorService executorService, long j10, TimeUnit timeUnit) {
            w2.H.E(executorService);
            w2.H.E(timeUnit);
            String valueOf = String.valueOf(executorService);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 24);
            sb2.append("DelayedShutdownHook-for-");
            sb2.append(valueOf);
            b(C12612g0.n(sb2.toString(), new a(this, executorService, j10, timeUnit)));
        }

        @v2.d
        public void b(Thread thread) {
            Runtime.getRuntime().addShutdownHook(thread);
        }

        public final ExecutorService c(ThreadPoolExecutor threadPoolExecutor) {
            return d(threadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        public final ExecutorService d(ThreadPoolExecutor threadPoolExecutor, long j10, TimeUnit timeUnit) {
            C12612g0.v(threadPoolExecutor);
            ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
            a(threadPoolExecutor, j10, timeUnit);
            return unconfigurableExecutorService;
        }

        public final ScheduledExecutorService e(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
            return f(scheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        public final ScheduledExecutorService f(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j10, TimeUnit timeUnit) {
            C12612g0.v(scheduledThreadPoolExecutor);
            ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
            a(scheduledThreadPoolExecutor, j10, timeUnit);
            return unconfigurableScheduledExecutorService;
        }
    }

    @v2.c
    public static class h extends AbstractC12605d {

        public final ExecutorService f67465b;

        public h(ExecutorService executorService) {
            this.f67465b = (ExecutorService) w2.H.E(executorService);
        }

        @Override
        public final boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f67465b.awaitTermination(j10, timeUnit);
        }

        @Override
        public final void execute(Runnable runnable) {
            this.f67465b.execute(runnable);
        }

        @Override
        public final boolean isShutdown() {
            return this.f67465b.isShutdown();
        }

        @Override
        public final boolean isTerminated() {
            return this.f67465b.isTerminated();
        }

        @Override
        public final void shutdown() {
            this.f67465b.shutdown();
        }

        @Override
        public final List<Runnable> shutdownNow() {
            return this.f67465b.shutdownNow();
        }

        public final String toString() {
            String obj = super.toString();
            String valueOf = String.valueOf(this.f67465b);
            StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 2 + valueOf.length());
            sb2.append(obj);
            sb2.append("[");
            sb2.append(valueOf);
            sb2.append("]");
            return sb2.toString();
        }
    }

    @v2.c
    public static final class i extends h implements InterfaceScheduledExecutorServiceC12608e0 {

        public final ScheduledExecutorService f67466c;

        public static final class a<V> extends M.a<V> implements InterfaceScheduledFutureC12602b0<V> {

            public final ScheduledFuture<?> f67467c;

            public a(Z<V> z10, ScheduledFuture<?> scheduledFuture) {
                super(z10);
                this.f67467c = scheduledFuture;
            }

            @Override
            public boolean cancel(boolean z10) {
                boolean cancel = super.cancel(z10);
                if (cancel) {
                    this.f67467c.cancel(z10);
                }
                return cancel;
            }

            @Override
            public long getDelay(TimeUnit timeUnit) {
                return this.f67467c.getDelay(timeUnit);
            }

            @Override
            public int compareTo(Delayed delayed) {
                return this.f67467c.compareTo(delayed);
            }
        }

        @v2.c
        public static final class b extends AbstractFuture.i<Void> implements Runnable {

            public final Runnable f67468j;

            public b(Runnable runnable) {
                this.f67468j = (Runnable) w2.H.E(runnable);
            }

            @Override
            public void run() {
                try {
                    this.f67468j.run();
                } catch (Throwable th2) {
                    D(th2);
                    throw w2.T.q(th2);
                }
            }

            @Override
            public String z() {
                String valueOf = String.valueOf(this.f67468j);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 7);
                sb2.append("task=[");
                sb2.append(valueOf);
                sb2.append("]");
                return sb2.toString();
            }
        }

        public i(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f67466c = (ScheduledExecutorService) w2.H.E(scheduledExecutorService);
        }

        @Override
        public InterfaceScheduledFutureC12602b0<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f67466c.scheduleAtFixedRate(bVar, j10, j11, timeUnit));
        }

        @Override
        public InterfaceScheduledFutureC12602b0<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f67466c.scheduleWithFixedDelay(bVar, j10, j11, timeUnit));
        }

        @Override
        public InterfaceScheduledFutureC12602b0<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            F0 P10 = F0.P(runnable, null);
            return new a(P10, this.f67466c.schedule(P10, j10, timeUnit));
        }

        @Override
        public <V> InterfaceScheduledFutureC12602b0<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit) {
            F0 Q10 = F0.Q(callable);
            return new a(Q10, this.f67466c.schedule(Q10, j10, timeUnit));
        }
    }

    @v2.c
    @InterfaceC15800a
    public static void b(ExecutorService executorService, long j10, TimeUnit timeUnit) {
        new f().a(executorService, j10, timeUnit);
    }

    public static Executor c() {
        return EnumC12636z.INSTANCE;
    }

    @v2.c
    @InterfaceC15800a
    public static ExecutorService d(ThreadPoolExecutor threadPoolExecutor) {
        return new f().c(threadPoolExecutor);
    }

    @v2.c
    @InterfaceC15800a
    public static ExecutorService e(ThreadPoolExecutor threadPoolExecutor, long j10, TimeUnit timeUnit) {
        return new f().d(threadPoolExecutor, j10, timeUnit);
    }

    @v2.c
    @InterfaceC15800a
    public static ScheduledExecutorService f(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        return new f().e(scheduledThreadPoolExecutor);
    }

    @v2.c
    @InterfaceC15800a
    public static ScheduledExecutorService g(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j10, TimeUnit timeUnit) {
        return new f().f(scheduledThreadPoolExecutor, j10, timeUnit);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b8 A[SYNTHETIC] */
    @InterfaceC12618j0
    @v2.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> T h(InterfaceExecutorServiceC12606d0 interfaceExecutorServiceC12606d0, Collection<? extends Callable<T>> collection, boolean z10, long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        long nanoTime;
        long j11;
        w2.H.E(interfaceExecutorServiceC12606d0);
        w2.H.E(timeUnit);
        int size = collection.size();
        w2.H.d(size > 0);
        ArrayList u10 = M1.u(size);
        LinkedBlockingQueue k10 = C12530i2.k();
        long nanos = timeUnit.toNanos(j10);
        if (z10) {
            try {
                nanoTime = System.nanoTime();
            } catch (Throwable th2) {
                Iterator<E> it = u10.iterator();
                while (it.hasNext()) {
                    ((Future) it.next()).cancel(true);
                }
                throw th2;
            }
        } else {
            nanoTime = 0;
        }
        Iterator<? extends Callable<T>> it2 = collection.iterator();
        u10.add(u(interfaceExecutorServiceC12606d0, it2.next(), k10));
        int i10 = size - 1;
        int i11 = 1;
        ExecutionException executionException = null;
        while (true) {
            Future future = (Future) k10.poll();
            if (future == null) {
                if (i10 > 0) {
                    i10--;
                    u10.add(u(interfaceExecutorServiceC12606d0, it2.next(), k10));
                    i11++;
                } else {
                    if (i11 == 0) {
                        if (executionException == null) {
                            throw new ExecutionException((Throwable) null);
                        }
                        throw executionException;
                    }
                    if (z10) {
                        future = (Future) k10.poll(nanos, TimeUnit.NANOSECONDS);
                        if (future == null) {
                            throw new TimeoutException();
                        }
                        j11 = System.nanoTime();
                        nanos -= j11 - nanoTime;
                        long j12 = nanos;
                        int i12 = i10;
                        if (future == null) {
                            i11--;
                            try {
                                T t10 = (T) future.get();
                                Iterator<E> it3 = u10.iterator();
                                while (it3.hasNext()) {
                                    ((Future) it3.next()).cancel(true);
                                }
                                return t10;
                            } catch (RuntimeException e10) {
                                executionException = new ExecutionException(e10);
                            } catch (ExecutionException e11) {
                                executionException = e11;
                            }
                        }
                        i10 = i12;
                        nanos = j12;
                        nanoTime = j11;
                    } else {
                        future = (Future) k10.take();
                    }
                }
            }
            j11 = nanoTime;
            long j122 = nanos;
            int i122 = i10;
            if (future == null) {
            }
            i10 = i122;
            nanos = j122;
            nanoTime = j11;
        }
    }

    @v2.c
    public static boolean i() {
        if (System.getProperty("com.google.appengine.runtime.environment") == null) {
            return false;
        }
        try {
            Class.forName("com.google.appengine.api.utils.SystemProperty");
            return Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", null).invoke(null, null) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    @v2.c
    public static InterfaceExecutorServiceC12606d0 j(ExecutorService executorService) {
        if (executorService instanceof InterfaceExecutorServiceC12606d0) {
            return (InterfaceExecutorServiceC12606d0) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new i((ScheduledExecutorService) executorService) : new h(executorService);
    }

    @v2.c
    public static InterfaceScheduledExecutorServiceC12608e0 k(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService instanceof InterfaceScheduledExecutorServiceC12608e0 ? (InterfaceScheduledExecutorServiceC12608e0) scheduledExecutorService : new i(scheduledExecutorService);
    }

    @v2.c
    public static InterfaceExecutorServiceC12606d0 l() {
        return new g(null);
    }

    @v2.c
    public static Executor m(Executor executor) {
        return new o0(executor);
    }

    @v2.c
    public static Thread n(String str, Runnable runnable) {
        w2.H.E(str);
        w2.H.E(runnable);
        Thread newThread = o().newThread(runnable);
        try {
            newThread.setName(str);
        } catch (SecurityException unused) {
        }
        return newThread;
    }

    @v2.c
    @InterfaceC15800a
    public static ThreadFactory o() {
        if (!i()) {
            return Executors.defaultThreadFactory();
        }
        try {
            return (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", null).invoke(null, null);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e10);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e11);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e12);
        } catch (InvocationTargetException e13) {
            throw w2.T.q(e13.getCause());
        }
    }

    public static Executor p(Executor executor, AbstractFuture<?> abstractFuture) {
        w2.H.E(executor);
        w2.H.E(abstractFuture);
        return executor == c() ? executor : new e(executor, abstractFuture);
    }

    @v2.c
    public static Executor q(Executor executor, w2.Q<String> q10) {
        w2.H.E(executor);
        w2.H.E(q10);
        return new b(executor, q10);
    }

    @v2.c
    public static ExecutorService r(ExecutorService executorService, w2.Q<String> q10) {
        w2.H.E(executorService);
        w2.H.E(q10);
        return new c(executorService, q10);
    }

    @v2.c
    public static ScheduledExecutorService s(ScheduledExecutorService scheduledExecutorService, w2.Q<String> q10) {
        w2.H.E(scheduledExecutorService);
        w2.H.E(q10);
        return new d(scheduledExecutorService, q10);
    }

    @I2.a
    @v2.c
    @InterfaceC15800a
    public static boolean t(ExecutorService executorService, long j10, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j10) / 2;
        executorService.shutdown();
        try {
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            if (!executorService.awaitTermination(nanos, timeUnit2)) {
                executorService.shutdownNow();
                executorService.awaitTermination(nanos, timeUnit2);
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            executorService.shutdownNow();
        }
        return executorService.isTerminated();
    }

    @v2.c
    public static <T> Z<T> u(InterfaceExecutorServiceC12606d0 interfaceExecutorServiceC12606d0, Callable<T> callable, BlockingQueue<Future<T>> blockingQueue) {
        Z<T> submit = interfaceExecutorServiceC12606d0.submit((Callable) callable);
        submit.addListener(new a(blockingQueue, submit), c());
        return submit;
    }

    @v2.c
    public static void v(ThreadPoolExecutor threadPoolExecutor) {
        threadPoolExecutor.setThreadFactory(new D0().e(true).h(threadPoolExecutor.getThreadFactory()).b());
    }

    @v2.c
    public static final class g extends AbstractC12605d {

        public final Object f67462b;

        @J2.a("lock")
        public int f67463c;

        @J2.a("lock")
        public boolean f67464d;

        public g() {
            this.f67462b = new Object();
            this.f67463c = 0;
            this.f67464d = false;
        }

        @Override
        public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
            long nanos = timeUnit.toNanos(j10);
            synchronized (this.f67462b) {
                while (true) {
                    try {
                        if (this.f67464d && this.f67463c == 0) {
                            return true;
                        }
                        if (nanos <= 0) {
                            return false;
                        }
                        long nanoTime = System.nanoTime();
                        TimeUnit.NANOSECONDS.timedWait(this.f67462b, nanos);
                        nanos -= System.nanoTime() - nanoTime;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        public final void c() {
            synchronized (this.f67462b) {
                try {
                    int i10 = this.f67463c - 1;
                    this.f67463c = i10;
                    if (i10 == 0) {
                        this.f67462b.notifyAll();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final void d() {
            synchronized (this.f67462b) {
                try {
                    if (this.f67464d) {
                        throw new RejectedExecutionException("Executor already shutdown");
                    }
                    this.f67463c++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void execute(Runnable runnable) {
            d();
            try {
                runnable.run();
            } finally {
                c();
            }
        }

        @Override
        public boolean isShutdown() {
            boolean z10;
            synchronized (this.f67462b) {
                z10 = this.f67464d;
            }
            return z10;
        }

        @Override
        public boolean isTerminated() {
            boolean z10;
            synchronized (this.f67462b) {
                try {
                    z10 = this.f67464d && this.f67463c == 0;
                } finally {
                }
            }
            return z10;
        }

        @Override
        public void shutdown() {
            synchronized (this.f67462b) {
                try {
                    this.f67464d = true;
                    if (this.f67463c == 0) {
                        this.f67462b.notifyAll();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public List<Runnable> shutdownNow() {
            shutdown();
            return Collections.emptyList();
        }

        public g(a aVar) {
            this();
        }
    }
}
