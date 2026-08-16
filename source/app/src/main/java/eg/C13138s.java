package eg;

import mg.C14251l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nCancellableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n*L\n1#1,386:1\n1#2:387\n19#3:388\n*S KotlinDebug\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n380#1:388\n*E\n"})
public final class C13138s {
    @F0
    public static final void a(@NotNull InterfaceC13133p<?> interfaceC13133p, @NotNull InterfaceC13128m0 interfaceC13128m0) {
        interfaceC13133p.K(new C13130n0(interfaceC13128m0));
    }

    @NotNull
    public static final <T> C13135q<T> b(@NotNull yf.f<? super T> fVar) {
        if (!(fVar instanceof C14251l)) {
            return new C13135q<>(fVar, 1);
        }
        C13135q<T> n10 = ((C14251l) fVar).n();
        if (n10 != null) {
            if (!n10.U()) {
                n10 = null;
            }
            if (n10 != null) {
                return n10;
            }
        }
        return new C13135q<>(fVar, 2);
    }

    @Nullable
    public static final <T> Object c(@NotNull Mf.l<? super InterfaceC13133p<? super T>, nf.P0> lVar, @NotNull yf.f<? super T> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        lVar.invoke(c13135q);
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10;
    }

    public static final <T> Object d(Mf.l<? super InterfaceC13133p<? super T>, nf.P0> lVar, yf.f<? super T> fVar) {
        kotlin.jvm.internal.J.e(0);
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        lVar.invoke(c13135q);
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        kotlin.jvm.internal.J.e(1);
        return D10;
    }

    @Nullable
    public static final <T> Object e(@NotNull Mf.l<? super C13135q<? super T>, nf.P0> lVar, @NotNull yf.f<? super T> fVar) {
        C13135q b10 = b(Af.c.e(fVar));
        try {
            lVar.invoke(b10);
            Object D10 = b10.D();
            if (D10 == Af.d.l()) {
                Bf.h.c(fVar);
            }
            return D10;
        } catch (Throwable th2) {
            b10.T();
            throw th2;
        }
    }

    public static final <T> Object f(Mf.l<? super C13135q<? super T>, nf.P0> lVar, yf.f<? super T> fVar) {
        kotlin.jvm.internal.J.e(0);
        C13135q b10 = b(Af.c.e(fVar));
        try {
            lVar.invoke(b10);
            Object D10 = b10.D();
            if (D10 == Af.d.l()) {
                Bf.h.c(fVar);
            }
            kotlin.jvm.internal.J.e(1);
            return D10;
        } catch (Throwable th2) {
            b10.T();
            throw th2;
        }
    }
}
