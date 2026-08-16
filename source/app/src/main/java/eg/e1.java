package eg;

import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nExecutors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executors.kt\nkotlinx/coroutines/ResumeUndispatchedRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n1#2:208\n*E\n"})
public final class e1 implements Runnable {

    @NotNull
    public final AbstractC13100M f85712b;

    @NotNull
    public final InterfaceC13133p<nf.P0> f85713c;

    /* JADX WARN: Multi-variable type inference failed */
    public e1(@NotNull AbstractC13100M abstractC13100M, @NotNull InterfaceC13133p<? super nf.P0> interfaceC13133p) {
        this.f85712b = abstractC13100M;
        this.f85713c = interfaceC13133p;
    }

    @Override
    public void run() {
        this.f85713c.x(this.f85712b, nf.P0.f98194a);
    }
}
