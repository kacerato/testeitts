package yf;

import Mf.p;
import java.io.Serializable;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@InterfaceC14422l0(version = "1.3")
public final class l implements j, Serializable {

    @NotNull
    public static final l f130251b = new l();

    public static final long f130252c = 0;

    private final Object g() {
        return f130251b;
    }

    @Override
    public <R> R fold(R r10, @NotNull p<? super R, ? super j.b, ? extends R> operation) {
        M.p(operation, "operation");
        return r10;
    }

    @Override
    @Nullable
    public <E extends j.b> E get(@NotNull j.c<E> key) {
        M.p(key, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override
    @NotNull
    public j minusKey(@NotNull j.c<?> key) {
        M.p(key, "key");
        return this;
    }

    @Override
    @NotNull
    public j plus(@NotNull j context) {
        M.p(context, "context");
        return context;
    }

    @NotNull
    public String toString() {
        return "EmptyCoroutineContext";
    }
}
