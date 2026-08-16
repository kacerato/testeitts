package eg;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class I0 extends L0 {

    @NotNull
    public static final AtomicIntegerFieldUpdater f85616g = AtomicIntegerFieldUpdater.newUpdater(I0.class, "_invoked");

    @Lf.x
    private volatile int _invoked;

    @NotNull
    public final Mf.l<Throwable, nf.P0> f85617f;

    /* JADX WARN: Multi-variable type inference failed */
    public I0(@NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        this.f85617f = lVar;
    }

    @Override
    public void Y(@Nullable Throwable th2) {
        if (f85616g.compareAndSet(this, 0, 1)) {
            this.f85617f.invoke(th2);
        }
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        Y(th2);
        return nf.P0.f98194a;
    }
}
