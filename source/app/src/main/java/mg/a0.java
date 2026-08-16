package mg;

import eg.l1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public final class a0<T> implements l1<T> {

    public final T f97051b;

    @NotNull
    public final ThreadLocal<T> f97052c;

    @NotNull
    public final j.c<?> f97053d;

    public a0(T t10, @NotNull ThreadLocal<T> threadLocal) {
        this.f97051b = t10;
        this.f97052c = threadLocal;
        this.f97053d = new b0(threadLocal);
    }

    @Override
    public T b0(@NotNull yf.j jVar) {
        T t10 = this.f97052c.get();
        this.f97052c.set(this.f97051b);
        return t10;
    }

    @Override
    public <R> R fold(R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
        return (R) l1.a.a(this, r10, pVar);
    }

    @Override
    @Nullable
    public <E extends j.b> E get(@NotNull j.c<E> cVar) {
        if (!kotlin.jvm.internal.M.g(getKey(), cVar)) {
            return null;
        }
        kotlin.jvm.internal.M.n(this, "null cannot be cast to non-null type E of kotlinx.coroutines.internal.ThreadLocalElement.get");
        return this;
    }

    @Override
    @NotNull
    public j.c<?> getKey() {
        return this.f97053d;
    }

    @Override
    public void h(@NotNull yf.j jVar, T t10) {
        this.f97052c.set(t10);
    }

    @Override
    @NotNull
    public yf.j minusKey(@NotNull j.c<?> cVar) {
        return kotlin.jvm.internal.M.g(getKey(), cVar) ? yf.l.f130251b : this;
    }

    @Override
    @NotNull
    public yf.j plus(@NotNull yf.j jVar) {
        return l1.a.d(this, jVar);
    }

    @NotNull
    public String toString() {
        return "ThreadLocal(value=" + ((Object) this.f97051b) + ", threadLocal = " + ((Object) this.f97052c) + ')';
    }
}
