package eg;

import nf.C14416i0;
import nf.C14418j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/ResumeAwaitOnCompletion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1454:1\n1#2:1455\n*E\n"})
public final class c1<T> extends Q0 {

    @NotNull
    public final C13135q<T> f85701f;

    /* JADX WARN: Multi-variable type inference failed */
    public c1(@NotNull C13135q<? super T> c13135q) {
        this.f85701f = c13135q;
    }

    @Override
    public void Y(@Nullable Throwable th2) {
        Object J02 = Z().J0();
        if (J02 instanceof C13091D) {
            C13135q<T> c13135q = this.f85701f;
            C14416i0.a aVar = C14416i0.f98201c;
            c13135q.resumeWith(C14416i0.b(C14418j0.a(((C13091D) J02).f85604a)));
        } else {
            C13135q<T> c13135q2 = this.f85701f;
            C14416i0.a aVar2 = C14416i0.f98201c;
            c13135q2.resumeWith(C14416i0.b(S0.h(J02)));
        }
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        Y(th2);
        return nf.P0.f98194a;
    }
}
