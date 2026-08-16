package eg;

import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@F0
public interface InterfaceC13106b0 {

    @kotlin.jvm.internal.t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n*L\n30#1:163,11\n*E\n"})
    public static final class a {
        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
        @Nullable
        public static Object a(@NotNull InterfaceC13106b0 interfaceC13106b0, long j10, @NotNull yf.f<? super nf.P0> fVar) {
            if (j10 <= 0) {
                return nf.P0.f98194a;
            }
            C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
            c13135q.O();
            interfaceC13106b0.o(j10, c13135q);
            Object D10 = c13135q.D();
            if (D10 == Af.d.l()) {
                Bf.h.c(fVar);
            }
            return D10 == Af.d.l() ? D10 : nf.P0.f98194a;
        }

        @NotNull
        public static InterfaceC13128m0 b(@NotNull InterfaceC13106b0 interfaceC13106b0, long j10, @NotNull Runnable runnable, @NotNull yf.j jVar) {
            return Y.a().m(j10, runnable, jVar);
        }
    }

    @NotNull
    InterfaceC13128m0 m(long j10, @NotNull Runnable runnable, @NotNull yf.j jVar);

    void o(long j10, @NotNull InterfaceC13133p<? super nf.P0> interfaceC13133p);

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    Object p(long j10, @NotNull yf.f<? super nf.P0> fVar);
}
