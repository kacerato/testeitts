package eg;

import eg.InterfaceC13106b0;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import mg.C14244e;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13149x0 extends AbstractC13147w0 implements InterfaceC13106b0 {

    @NotNull
    public final Executor f85802c;

    public C13149x0(@NotNull Executor executor) {
        this.f85802c = executor;
        C14244e.c(s());
    }

    @Override
    public void close() {
        Executor s10 = s();
        ExecutorService executorService = s10 instanceof ExecutorService ? (ExecutorService) s10 : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override
    public void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        Runnable runnable2;
        try {
            Executor s10 = s();
            AbstractC13105b b10 = C13107c.b();
            if (b10 != null) {
                runnable2 = b10.i(runnable);
                if (runnable2 == null) {
                }
                s10.execute(runnable2);
            }
            runnable2 = runnable;
            s10.execute(runnable2);
        } catch (RejectedExecutionException e10) {
            AbstractC13105b b11 = C13107c.b();
            if (b11 != null) {
                b11.f();
            }
            t(jVar, e10);
            C13122j0.c().dispatch(jVar, runnable);
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C13149x0) && ((C13149x0) obj).s() == s();
    }

    public int hashCode() {
        return System.identityHashCode(s());
    }

    @Override
    @NotNull
    public InterfaceC13128m0 m(long j10, @NotNull Runnable runnable, @NotNull yf.j jVar) {
        Executor s10 = s();
        ScheduledExecutorService scheduledExecutorService = s10 instanceof ScheduledExecutorService ? (ScheduledExecutorService) s10 : null;
        ScheduledFuture<?> u10 = scheduledExecutorService != null ? u(scheduledExecutorService, runnable, jVar, j10) : null;
        return u10 != null ? new C13126l0(u10) : X.f85683h.m(j10, runnable, jVar);
    }

    @Override
    public void o(long j10, @NotNull InterfaceC13133p<? super nf.P0> interfaceC13133p) {
        Executor s10 = s();
        ScheduledExecutorService scheduledExecutorService = s10 instanceof ScheduledExecutorService ? (ScheduledExecutorService) s10 : null;
        ScheduledFuture<?> u10 = scheduledExecutorService != null ? u(scheduledExecutorService, new e1(this, interfaceC13133p), interfaceC13133p.getContext(), j10) : null;
        if (u10 != null) {
            N0.w(interfaceC13133p, u10);
        } else {
            X.f85683h.o(j10, interfaceC13133p);
        }
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object p(long j10, @NotNull yf.f<? super nf.P0> fVar) {
        return InterfaceC13106b0.a.a(this, j10, fVar);
    }

    @Override
    @NotNull
    public Executor s() {
        return this.f85802c;
    }

    public final void t(yf.j jVar, RejectedExecutionException rejectedExecutionException) {
        N0.g(jVar, C13145v0.a("The task was rejected", rejectedExecutionException));
    }

    @Override
    @NotNull
    public String toString() {
        return s().toString();
    }

    public final ScheduledFuture<?> u(ScheduledExecutorService scheduledExecutorService, Runnable runnable, yf.j jVar, long j10) {
        try {
            return scheduledExecutorService.schedule(runnable, j10, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            t(jVar, e10);
            return null;
        }
    }
}
