package lg;

import eg.AbstractC13102a;
import eg.K0;
import java.util.concurrent.CompletableFuture;
import java.util.function.BiFunction;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public final class C14132a<T> extends AbstractC13102a<T> implements BiFunction<T, Throwable, P0> {

    @NotNull
    public final CompletableFuture<T> f96450e;

    public C14132a(@NotNull j jVar, @NotNull CompletableFuture<T> completableFuture) {
        super(jVar, true, true);
        this.f96450e = completableFuture;
    }

    @Override
    public void A1(T t10) {
        this.f96450e.complete(t10);
    }

    public void C1(@Nullable T t10, @Nullable Throwable th2) {
        K0.a.b(this, null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public P0 apply(Object obj, Throwable th2) {
        C1(obj, th2);
        return P0.f98194a;
    }

    @Override
    public void z1(@NotNull Throwable th2, boolean z10) {
        this.f96450e.completeExceptionally(th2);
    }
}
