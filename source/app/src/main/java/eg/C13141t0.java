package eg;

import nf.InterfaceC14410f0;
import og.ExecutorC14502a;
import org.jetbrains.annotations.NotNull;

public final class C13141t0 {
    @NotNull
    public static final AbstractC13136q0 a() {
        return new C13117h(Thread.currentThread());
    }

    @F0
    @InterfaceC14410f0
    @InterfaceC13112e0
    public static final boolean b(@NotNull Thread thread) {
        if (thread instanceof ExecutorC14502a.c) {
            return ((ExecutorC14502a.c) thread).q();
        }
        return false;
    }

    public static final void c(@NotNull Mf.a<nf.P0> aVar) {
        aVar.invoke();
    }

    @F0
    public static final long d() {
        AbstractC13136q0 a10 = n1.f85746a.a();
        if (a10 != null) {
            return a10.g0();
        }
        return Long.MAX_VALUE;
    }

    @F0
    @InterfaceC14410f0
    @InterfaceC13112e0
    public static final long e() {
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof ExecutorC14502a.c) {
            return ((ExecutorC14502a.c) currentThread).u();
        }
        throw new IllegalStateException("Expected CoroutineScheduler.Worker, but got " + ((Object) currentThread));
    }
}
