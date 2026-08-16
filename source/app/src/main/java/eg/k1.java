package eg;

import ng.C14446b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class k1 {
    @NotNull
    public static final InterfaceC13089B a(@Nullable K0 k02) {
        return new j1(k02);
    }

    public static InterfaceC13089B c(K0 k02, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            k02 = null;
        }
        return a(k02);
    }

    public static K0 d(K0 k02, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            k02 = null;
        }
        return a(k02);
    }

    @Nullable
    public static final <R> Object e(@NotNull Mf.p<? super S, ? super yf.f<? super R>, ? extends Object> pVar, @NotNull yf.f<? super R> fVar) {
        i1 i1Var = new i1(fVar.getContext(), fVar);
        Object e10 = C14446b.e(i1Var, i1Var, pVar);
        if (e10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return e10;
    }
}
