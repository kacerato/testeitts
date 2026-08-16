package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public final class x1 implements j.b, j.c<x1> {

    @NotNull
    public static final x1 f85803b = new x1();

    @Override
    public <R> R fold(R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
        return (R) j.b.a.a(this, r10, pVar);
    }

    @Override
    @Nullable
    public <E extends j.b> E get(@NotNull j.c<E> cVar) {
        return (E) j.b.a.b(this, cVar);
    }

    @Override
    @NotNull
    public j.c<?> getKey() {
        return this;
    }

    @Override
    @NotNull
    public yf.j minusKey(@NotNull j.c<?> cVar) {
        return j.b.a.c(this, cVar);
    }

    @Override
    @NotNull
    public yf.j plus(@NotNull yf.j jVar) {
        return j.b.a.d(this, jVar);
    }
}
