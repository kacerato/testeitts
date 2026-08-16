package yf;

import Mf.p;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@InterfaceC14422l0(version = "1.3")
public abstract class AbstractC16183a implements j.b {

    @NotNull
    private final j.c<?> key;

    public AbstractC16183a(@NotNull j.c<?> key) {
        M.p(key, "key");
        this.key = key;
    }

    @Override
    public <R> R fold(R r10, @NotNull p<? super R, ? super j.b, ? extends R> pVar) {
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
        return this.key;
    }

    @Override
    @NotNull
    public j minusKey(@NotNull j.c<?> cVar) {
        return j.b.a.c(this, cVar);
    }

    @Override
    @NotNull
    public j plus(@NotNull j jVar) {
        return j.b.a.d(this, jVar);
    }
}
