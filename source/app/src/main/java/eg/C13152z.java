package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13152z<T> extends R0 implements InterfaceC13150y<T> {
    public C13152z(@Nullable K0 k02) {
        super(true);
        M0(k02);
    }

    @Override
    public boolean F0() {
        return true;
    }

    @Override
    @NotNull
    public pg.g<T> Y() {
        pg.g<T> gVar = (pg.g<T>) D0();
        kotlin.jvm.internal.M.n(gVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.CompletableDeferredImpl>");
        return gVar;
    }

    @Override
    @Nullable
    public Object Z(@NotNull yf.f<? super T> fVar) {
        Object h02 = h0(fVar);
        Af.d.l();
        return h02;
    }

    @Override
    public boolean c(@NotNull Throwable th2) {
        return V0(new C13091D(th2, false, 2, null));
    }

    @Override
    public T e() {
        return (T) x0();
    }

    @Override
    public boolean n(T t10) {
        return V0(t10);
    }
}
