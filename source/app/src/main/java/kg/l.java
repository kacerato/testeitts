package kg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public final class l implements yf.j {

    @Lf.g
    @NotNull
    public final Throwable f95194b;

    public final yf.j f95195c;

    public l(@NotNull Throwable th2, @NotNull yf.j jVar) {
        this.f95194b = th2;
        this.f95195c = jVar;
    }

    @Override
    public <R> R fold(R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
        return (R) this.f95195c.fold(r10, pVar);
    }

    @Override
    @Nullable
    public <E extends j.b> E get(@NotNull j.c<E> cVar) {
        return (E) this.f95195c.get(cVar);
    }

    @Override
    @NotNull
    public yf.j minusKey(@NotNull j.c<?> cVar) {
        return this.f95195c.minusKey(cVar);
    }

    @Override
    @NotNull
    public yf.j plus(@NotNull yf.j jVar) {
        return this.f95195c.plus(jVar);
    }
}
