package eg;

import mg.C14251l;
import nf.C14416i0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 4 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,222:1\n200#1,17:240\n1#2:223\n255#3:224\n256#3,2:235\n258#3:239\n107#4,10:225\n118#4,2:237\n61#5,2:257\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n*L\n190#1:240,17\n178#1:224\n178#1:235,2\n178#1:239\n178#1:225,10\n178#1:237,2\n220#1:257,2\n*E\n"})
public final class C13118h0 {

    public static final int f85728a = 0;

    public static final int f85729b = 1;

    public static final int f85730c = 2;

    public static final int f85731d = 4;

    public static final int f85732e = -1;

    public static final <T> void a(@NotNull AbstractC13116g0<? super T> abstractC13116g0, int i10) {
        yf.f<? super T> e10 = abstractC13116g0.e();
        boolean z10 = i10 == 4;
        if (z10 || !(e10 instanceof C14251l) || c(i10) != c(abstractC13116g0.f85726d)) {
            e(abstractC13116g0, e10, z10);
            return;
        }
        AbstractC13100M abstractC13100M = ((C14251l) e10).f97075e;
        yf.j context = e10.getContext();
        if (abstractC13100M.isDispatchNeeded(context)) {
            abstractC13100M.dispatch(context, abstractC13116g0);
        } else {
            f(abstractC13116g0);
        }
    }

    @InterfaceC14410f0
    public static void b() {
    }

    public static final boolean c(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public static final boolean d(int i10) {
        return i10 == 2;
    }

    public static final <T> void e(@NotNull AbstractC13116g0<? super T> abstractC13116g0, @NotNull yf.f<? super T> fVar, boolean z10) {
        Object h10;
        Object l10 = abstractC13116g0.l();
        Throwable f10 = abstractC13116g0.f(l10);
        if (f10 != null) {
            C14416i0.a aVar = C14416i0.f98201c;
            h10 = C14418j0.a(f10);
        } else {
            C14416i0.a aVar2 = C14416i0.f98201c;
            h10 = abstractC13116g0.h(l10);
        }
        Object b10 = C14416i0.b(h10);
        if (!z10) {
            fVar.resumeWith(b10);
            return;
        }
        kotlin.jvm.internal.M.n(fVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        C14251l c14251l = (C14251l) fVar;
        yf.f<T> fVar2 = c14251l.f97076f;
        Object obj = c14251l.f97078h;
        yf.j context = fVar2.getContext();
        Object c10 = mg.Z.c(context, obj);
        w1<?> g10 = c10 != mg.Z.f97043a ? C13099L.g(fVar2, context, c10) : null;
        try {
            c14251l.f97076f.resumeWith(b10);
            nf.P0 p02 = nf.P0.f98194a;
        } finally {
            if (g10 == null || g10.C1()) {
                mg.Z.a(context, c10);
            }
        }
    }

    public static final void f(AbstractC13116g0<?> abstractC13116g0) {
        AbstractC13136q0 b10 = n1.f85746a.b();
        if (b10.e0()) {
            b10.v(abstractC13116g0);
            return;
        }
        b10.A(true);
        try {
            e(abstractC13116g0, abstractC13116g0.e(), true);
            do {
            } while (b10.i0());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static final void g(@NotNull yf.f<?> fVar, @NotNull Throwable th2) {
        C14416i0.a aVar = C14416i0.f98201c;
        fVar.resumeWith(C14416i0.b(C14418j0.a(th2)));
    }

    public static final void h(@NotNull AbstractC13116g0<?> abstractC13116g0, @NotNull AbstractC13136q0 abstractC13136q0, @NotNull Mf.a<nf.P0> aVar) {
        abstractC13136q0.A(true);
        try {
            aVar.invoke();
            do {
            } while (abstractC13136q0.i0());
            kotlin.jvm.internal.J.d(1);
        } catch (Throwable th2) {
            try {
                abstractC13116g0.j(th2, null);
                kotlin.jvm.internal.J.d(1);
            } catch (Throwable th3) {
                kotlin.jvm.internal.J.d(1);
                abstractC13136q0.s(true);
                kotlin.jvm.internal.J.c(1);
                throw th3;
            }
        }
        abstractC13136q0.s(true);
        kotlin.jvm.internal.J.c(1);
    }
}
