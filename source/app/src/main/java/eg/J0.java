package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class J0 extends Q0 {

    @NotNull
    public final Mf.l<Throwable, nf.P0> f85618f;

    /* JADX WARN: Multi-variable type inference failed */
    public J0(@NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        this.f85618f = lVar;
    }

    @Override
    public void Y(@Nullable Throwable th2) {
        this.f85618f.invoke(th2);
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        Y(th2);
        return nf.P0.f98194a;
    }
}
