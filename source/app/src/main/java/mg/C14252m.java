package mg;

import eg.AbstractC13136q0;
import eg.C13096I;
import eg.C13099L;
import eg.F0;
import eg.K0;
import eg.n1;
import eg.w1;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 2 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n297#1,5:325\n302#1,12:331\n314#1:387\n301#1:389\n302#1,12:391\n314#1:420\n217#2,7:318\n224#2:346\n243#2,8:347\n225#2:355\n255#2:356\n256#2,2:367\n258#2:371\n227#2:372\n229#2:388\n1#3:330\n1#3:390\n1#3:421\n200#4,3:343\n203#4,14:373\n200#4,17:403\n200#4,17:422\n107#5,10:357\n118#5,2:369\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n*L\n282#1:325,5\n282#1:331,12\n282#1:387\n287#1:389\n287#1:391,12\n287#1:420\n282#1:318,7\n282#1:346\n282#1:347,8\n282#1:355\n282#1:356\n282#1:367,2\n282#1:371\n282#1:372\n282#1:388\n282#1:330\n287#1:390\n282#1:343,3\n282#1:373,14\n287#1:403,17\n313#1:422,17\n282#1:357,10\n282#1:369,2\n*E\n"})
public final class C14252m {

    @NotNull
    public static final T f97079a = new T("UNDEFINED");

    @Lf.g
    @NotNull
    public static final T f97080b = new T("REUSABLE_CLAIMED");

    public static final T a() {
        return f97079a;
    }

    public static final boolean b(C14251l<?> c14251l, Object obj, int i10, boolean z10, Mf.a<P0> aVar) {
        AbstractC13136q0 b10 = n1.f85746a.b();
        if (z10 && b10.f0()) {
            return false;
        }
        if (b10.e0()) {
            c14251l.f97077g = obj;
            c14251l.f85726d = i10;
            b10.v(c14251l);
            return true;
        }
        b10.A(true);
        try {
            aVar.invoke();
            do {
            } while (b10.i0());
            kotlin.jvm.internal.J.d(1);
        } catch (Throwable th2) {
            try {
                c14251l.j(th2, null);
                kotlin.jvm.internal.J.d(1);
            } catch (Throwable th3) {
                kotlin.jvm.internal.J.d(1);
                b10.s(true);
                kotlin.jvm.internal.J.c(1);
                throw th3;
            }
        }
        b10.s(true);
        kotlin.jvm.internal.J.c(1);
        return false;
    }

    public static boolean c(C14251l c14251l, Object obj, int i10, boolean z10, Mf.a aVar, int i11, Object obj2) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        AbstractC13136q0 b10 = n1.f85746a.b();
        if (z10 && b10.f0()) {
            return false;
        }
        if (b10.e0()) {
            c14251l.f97077g = obj;
            c14251l.f85726d = i10;
            b10.v(c14251l);
            return true;
        }
        b10.A(true);
        try {
            aVar.invoke();
            do {
            } while (b10.i0());
            kotlin.jvm.internal.J.d(1);
        } catch (Throwable th2) {
            try {
                c14251l.j(th2, null);
                kotlin.jvm.internal.J.d(1);
            } catch (Throwable th3) {
                kotlin.jvm.internal.J.d(1);
                b10.s(true);
                kotlin.jvm.internal.J.c(1);
                throw th3;
            }
        }
        b10.s(true);
        kotlin.jvm.internal.J.c(1);
        return false;
    }

    @F0
    public static final <T> void d(@NotNull yf.f<? super T> fVar, @NotNull Object obj, @Nullable Mf.l<? super Throwable, P0> lVar) {
        if (!(fVar instanceof C14251l)) {
            fVar.resumeWith(obj);
            return;
        }
        C14251l c14251l = (C14251l) fVar;
        Object b10 = C13096I.b(obj, lVar);
        if (c14251l.f97075e.isDispatchNeeded(c14251l.getContext())) {
            c14251l.f97077g = b10;
            c14251l.f85726d = 1;
            c14251l.f97075e.dispatch(c14251l.getContext(), c14251l);
            return;
        }
        AbstractC13136q0 b11 = n1.f85746a.b();
        if (b11.e0()) {
            c14251l.f97077g = b10;
            c14251l.f85726d = 1;
            b11.v(c14251l);
            return;
        }
        b11.A(true);
        try {
            K0 k02 = (K0) c14251l.getContext().get(K0.f85619y4);
            if (k02 == null || k02.isActive()) {
                yf.f<T> fVar2 = c14251l.f97076f;
                Object obj2 = c14251l.f97078h;
                yf.j context = fVar2.getContext();
                Object c10 = Z.c(context, obj2);
                w1<?> g10 = c10 != Z.f97043a ? C13099L.g(fVar2, context, c10) : null;
                try {
                    c14251l.f97076f.resumeWith(obj);
                    P0 p02 = P0.f98194a;
                } finally {
                    if (g10 == null || g10.C1()) {
                        Z.a(context, c10);
                    }
                }
            } else {
                CancellationException Q10 = k02.Q();
                c14251l.c(b10, Q10);
                C14416i0.a aVar = C14416i0.f98201c;
                c14251l.resumeWith(C14416i0.b(C14418j0.a(Q10)));
            }
            do {
            } while (b11.i0());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static void e(yf.f fVar, Object obj, Mf.l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        d(fVar, obj, lVar);
    }

    public static final boolean f(@NotNull C14251l<? super P0> c14251l) {
        P0 p02 = P0.f98194a;
        AbstractC13136q0 b10 = n1.f85746a.b();
        if (b10.f0()) {
            return false;
        }
        if (b10.e0()) {
            c14251l.f97077g = p02;
            c14251l.f85726d = 1;
            b10.v(c14251l);
            return true;
        }
        b10.A(true);
        try {
            c14251l.run();
            do {
            } while (b10.i0());
        } finally {
            try {
                return false;
            } finally {
            }
        }
        return false;
    }
}
