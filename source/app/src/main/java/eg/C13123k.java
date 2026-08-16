package eg;

import ng.C14445a;
import ng.C14446b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.g;

@kotlin.jvm.internal.t0({"SMAP\nBuilders.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,273:1\n95#2,5:274\n*S KotlinDebug\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n*L\n166#1:274,5\n*E\n"})
public final class C13123k {

    public static final int f85738a = 0;

    public static final int f85739b = 1;

    public static final int f85740c = 2;

    @NotNull
    public static final <T> Z<T> a(@NotNull S s10, @NotNull yf.j jVar, @NotNull U u10, @NotNull Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar) {
        yf.j d10 = C13099L.d(s10, jVar);
        C13103a0 t02 = u10.d() ? new T0(d10, pVar) : new C13103a0(d10, true);
        ((AbstractC13102a) t02).B1(u10, t02, pVar);
        return (Z<T>) t02;
    }

    public static Z b(S s10, yf.j jVar, U u10, Mf.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        if ((i10 & 2) != 0) {
            u10 = U.DEFAULT;
        }
        return C13119i.a(s10, jVar, u10, pVar);
    }

    @Nullable
    public static final <T> Object c(@NotNull AbstractC13100M abstractC13100M, @NotNull Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        return C13119i.h(abstractC13100M, pVar, fVar);
    }

    public static final <T> Object d(AbstractC13100M abstractC13100M, Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar, yf.f<? super T> fVar) {
        kotlin.jvm.internal.J.e(0);
        Object h10 = C13119i.h(abstractC13100M, pVar, fVar);
        kotlin.jvm.internal.J.e(1);
        return h10;
    }

    @NotNull
    public static final K0 e(@NotNull S s10, @NotNull yf.j jVar, @NotNull U u10, @NotNull Mf.p<? super S, ? super yf.f<? super nf.P0>, ? extends Object> pVar) {
        yf.j d10 = C13099L.d(s10, jVar);
        AbstractC13102a u02 = u10.d() ? new U0(d10, pVar) : new h1(d10, true);
        u02.B1(u10, u02, pVar);
        return u02;
    }

    public static K0 f(S s10, yf.j jVar, U u10, Mf.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        if ((i10 & 2) != 0) {
            u10 = U.DEFAULT;
        }
        return C13119i.d(s10, jVar, u10, pVar);
    }

    @Nullable
    public static final <T> Object g(@NotNull yf.j jVar, @NotNull Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        Object C12;
        yf.j context = fVar.getContext();
        yf.j e10 = C13099L.e(context, jVar);
        N0.A(e10);
        if (e10 == context) {
            mg.O o10 = new mg.O(e10, fVar);
            C12 = C14446b.e(o10, o10, pVar);
        } else {
            g.b bVar = yf.g.f130247J8;
            if (kotlin.jvm.internal.M.g(e10.get(bVar), context.get(bVar))) {
                w1 w1Var = new w1(e10, fVar);
                yf.j context2 = w1Var.getContext();
                Object c10 = mg.Z.c(context2, null);
                try {
                    Object e11 = C14446b.e(w1Var, w1Var, pVar);
                    mg.Z.a(context2, c10);
                    C12 = e11;
                } catch (Throwable th2) {
                    mg.Z.a(context2, c10);
                    throw th2;
                }
            } else {
                C13114f0 c13114f0 = new C13114f0(e10, fVar);
                C14445a.f(pVar, c13114f0, c13114f0, null, 4, null);
                C12 = c13114f0.C1();
            }
        }
        if (C12 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return C12;
    }
}
