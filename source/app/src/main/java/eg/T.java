package eg;

import java.util.concurrent.CancellationException;
import mg.C14247h;
import ng.C14446b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class T {
    @NotNull
    public static final S a(@NotNull yf.j jVar) {
        InterfaceC13089B c10;
        if (jVar.get(K0.f85619y4) == null) {
            c10 = P0.c(null, 1, null);
            jVar = jVar.plus(c10);
        }
        return new C14247h(jVar);
    }

    @NotNull
    public static final S b() {
        return new C14247h(k1.c(null, 1, null).plus(C13122j0.e()));
    }

    public static final void c(@NotNull S s10, @NotNull String str, @Nullable Throwable th2) {
        d(s10, C13145v0.a(str, th2));
    }

    public static final void d(@NotNull S s10, @Nullable CancellationException cancellationException) {
        K0 k02 = (K0) s10.getCoroutineContext().get(K0.f85619y4);
        if (k02 != null) {
            k02.a(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + ((Object) s10)).toString());
    }

    public static void e(S s10, String str, Throwable th2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        c(s10, str, th2);
    }

    public static void f(S s10, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        d(s10, cancellationException);
    }

    @Nullable
    public static final <R> Object g(@NotNull Mf.p<? super S, ? super yf.f<? super R>, ? extends Object> pVar, @NotNull yf.f<? super R> fVar) {
        mg.O o10 = new mg.O(fVar.getContext(), fVar);
        Object e10 = C14446b.e(o10, o10, pVar);
        if (e10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return e10;
    }

    @Nullable
    public static final Object h(@NotNull yf.f<? super yf.j> fVar) {
        return fVar.getContext();
    }

    public static final Object i(yf.f<? super yf.j> fVar) {
        kotlin.jvm.internal.J.e(3);
        throw null;
    }

    public static final void j(@NotNull S s10) {
        N0.A(s10.getCoroutineContext());
    }

    public static final boolean k(@NotNull S s10) {
        K0 k02 = (K0) s10.getCoroutineContext().get(K0.f85619y4);
        if (k02 != null) {
            return k02.isActive();
        }
        return true;
    }

    public static void l(S s10) {
    }

    @NotNull
    public static final S m(@NotNull S s10, @NotNull yf.j jVar) {
        return new C14247h(s10.getCoroutineContext().plus(jVar));
    }
}
