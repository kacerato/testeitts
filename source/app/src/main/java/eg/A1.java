package eg;

import mg.C14251l;
import mg.C14252m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class A1 {
    @Nullable
    public static final Object a(@NotNull yf.f<? super nf.P0> fVar) {
        Object l10;
        yf.j context = fVar.getContext();
        N0.A(context);
        yf.f e10 = Af.c.e(fVar);
        C14251l c14251l = e10 instanceof C14251l ? (C14251l) e10 : null;
        if (c14251l == null) {
            l10 = nf.P0.f98194a;
        } else {
            if (c14251l.f97075e.isDispatchNeeded(context)) {
                c14251l.p(context, nf.P0.f98194a);
            } else {
                z1 z1Var = new z1();
                yf.j plus = context.plus(z1Var);
                nf.P0 p02 = nf.P0.f98194a;
                c14251l.p(plus, p02);
                if (z1Var.f85805b) {
                    l10 = C14252m.f(c14251l) ? Af.d.l() : p02;
                }
            }
            l10 = Af.d.l();
        }
        if (l10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return l10 == Af.d.l() ? l10 : nf.P0.f98194a;
    }
}
