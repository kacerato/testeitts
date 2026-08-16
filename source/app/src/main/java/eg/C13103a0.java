package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C13103a0<T> extends AbstractC13102a<T> implements Z<T> {
    public C13103a0(@NotNull yf.j jVar, boolean z10) {
        super(jVar, true, z10);
    }

    public static <T> Object C1(C13103a0<T> c13103a0, yf.f<? super T> fVar) {
        Object h02 = c13103a0.h0(fVar);
        Af.d.l();
        return h02;
    }

    @Override
    @NotNull
    public pg.g<T> Y() {
        pg.g<T> gVar = (pg.g<T>) D0();
        kotlin.jvm.internal.M.n(gVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.DeferredCoroutine>");
        return gVar;
    }

    @Override
    @Nullable
    public Object Z(@NotNull yf.f<? super T> fVar) {
        return C1(this, fVar);
    }

    @Override
    public T e() {
        return (T) x0();
    }
}
