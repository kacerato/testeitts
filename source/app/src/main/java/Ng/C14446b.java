package ng;

import Af.d;
import Bf.h;
import Mf.l;
import Mf.p;
import eg.C13091D;
import eg.S0;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.w0;
import kotlinx.coroutines.TimeoutCancellationException;
import mg.O;
import mg.Z;
import nf.C14416i0;
import nf.C14418j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.f;
import yf.j;

@t0({"SMAP\nUndispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n+ 2 ProbesSupport.kt\nkotlinx/coroutines/internal/ProbesSupportKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,127:1\n55#1:128\n56#1,11:130\n55#1:141\n56#1,2:143\n58#1,9:150\n55#1:159\n56#1,2:161\n58#1,9:168\n97#1,4:178\n114#1,6:182\n120#1,5:190\n97#1,4:195\n114#1,6:199\n120#1,5:207\n11#2:129\n11#2:142\n11#2:160\n11#2:177\n95#3,5:145\n95#3,5:163\n61#4,2:188\n61#4,2:205\n61#4,2:212\n61#4,2:214\n*S KotlinDebug\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n*L\n18#1:128\n18#1:130,11\n29#1:141\n29#1:143,2\n29#1:150,9\n42#1:159\n42#1:161,2\n42#1:168,9\n77#1:178,4\n77#1:182,6\n77#1:190,5\n88#1:195,4\n88#1:199,6\n88#1:207,5\n18#1:129\n29#1:142\n42#1:160\n55#1:177\n30#1:145,5\n43#1:163,5\n77#1:188,2\n88#1:205,2\n119#1:212,2\n120#1:214,2\n*E\n"})
public final class C14446b {
    public static final <T> void a(@NotNull l<? super f<? super T>, ? extends Object> lVar, @NotNull f<? super T> fVar) {
        f a10 = h.a(fVar);
        try {
            j context = fVar.getContext();
            Object c10 = Z.c(context, null);
            try {
                Object invoke = ((l) w0.q(lVar, 1)).invoke(a10);
                if (invoke != d.l()) {
                    C14416i0.a aVar = C14416i0.f98201c;
                    a10.resumeWith(C14416i0.b(invoke));
                }
            } finally {
                Z.a(context, c10);
            }
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            a10.resumeWith(C14416i0.b(C14418j0.a(th2)));
        }
    }

    public static final <R, T> void b(@NotNull p<? super R, ? super f<? super T>, ? extends Object> pVar, R r10, @NotNull f<? super T> fVar) {
        f a10 = h.a(fVar);
        try {
            j context = fVar.getContext();
            Object c10 = Z.c(context, null);
            try {
                Object invoke = ((p) w0.q(pVar, 2)).invoke(r10, a10);
                if (invoke != d.l()) {
                    C14416i0.a aVar = C14416i0.f98201c;
                    a10.resumeWith(C14416i0.b(invoke));
                }
            } finally {
                Z.a(context, c10);
            }
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            a10.resumeWith(C14416i0.b(C14418j0.a(th2)));
        }
    }

    public static final <T> void c(@NotNull l<? super f<? super T>, ? extends Object> lVar, @NotNull f<? super T> fVar) {
        f a10 = h.a(fVar);
        try {
            Object invoke = ((l) w0.q(lVar, 1)).invoke(a10);
            if (invoke != d.l()) {
                C14416i0.a aVar = C14416i0.f98201c;
                a10.resumeWith(C14416i0.b(invoke));
            }
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            a10.resumeWith(C14416i0.b(C14418j0.a(th2)));
        }
    }

    public static final <T> void d(f<? super T> fVar, l<? super f<? super T>, ? extends Object> lVar) {
        f a10 = h.a(fVar);
        try {
            Object invoke = lVar.invoke(a10);
            if (invoke != d.l()) {
                C14416i0.a aVar = C14416i0.f98201c;
                a10.resumeWith(C14416i0.b(invoke));
            }
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            a10.resumeWith(C14416i0.b(C14418j0.a(th2)));
        }
    }

    @Nullable
    public static final <T, R> Object e(@NotNull O<? super T> o10, R r10, @NotNull p<? super R, ? super f<? super T>, ? extends Object> pVar) {
        Object c13091d;
        Object W02;
        try {
            c13091d = ((p) w0.q(pVar, 2)).invoke(r10, o10);
        } catch (Throwable th2) {
            c13091d = new C13091D(th2, false, 2, null);
        }
        if (c13091d != d.l() && (W02 = o10.W0(c13091d)) != S0.f85662b) {
            if (W02 instanceof C13091D) {
                throw ((C13091D) W02).f85604a;
            }
            return S0.h(W02);
        }
        return d.l();
    }

    @Nullable
    public static final <T, R> Object f(@NotNull O<? super T> o10, R r10, @NotNull p<? super R, ? super f<? super T>, ? extends Object> pVar) {
        Object c13091d;
        Object W02;
        try {
            c13091d = ((p) w0.q(pVar, 2)).invoke(r10, o10);
        } catch (Throwable th2) {
            c13091d = new C13091D(th2, false, 2, null);
        }
        if (c13091d != d.l() && (W02 = o10.W0(c13091d)) != S0.f85662b) {
            if (W02 instanceof C13091D) {
                Throwable th3 = ((C13091D) W02).f85604a;
                if (!(th3 instanceof TimeoutCancellationException)) {
                    throw th3;
                }
                if (((TimeoutCancellationException) th3).coroutine != o10) {
                    throw th3;
                }
                if (c13091d instanceof C13091D) {
                    throw ((C13091D) c13091d).f85604a;
                }
            } else {
                c13091d = S0.h(W02);
            }
            return c13091d;
        }
        return d.l();
    }

    public static final <T> Object g(O<? super T> o10, l<? super Throwable, Boolean> lVar, Mf.a<? extends Object> aVar) {
        Object c13091d;
        Object W02;
        try {
            c13091d = aVar.invoke();
        } catch (Throwable th2) {
            c13091d = new C13091D(th2, false, 2, null);
        }
        if (c13091d != d.l() && (W02 = o10.W0(c13091d)) != S0.f85662b) {
            if (!(W02 instanceof C13091D)) {
                return S0.h(W02);
            }
            C13091D c13091d2 = (C13091D) W02;
            if (lVar.invoke(c13091d2.f85604a).booleanValue()) {
                throw c13091d2.f85604a;
            }
            if (c13091d instanceof C13091D) {
                throw ((C13091D) c13091d).f85604a;
            }
            return c13091d;
        }
        return d.l();
    }
}
