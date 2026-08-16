package eg;

import java.util.concurrent.Future;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13127m extends Q0 {

    @NotNull
    public final Future<?> f85744f;

    public C13127m(@NotNull Future<?> future) {
        this.f85744f = future;
    }

    @Override
    public void Y(@Nullable Throwable th2) {
        if (th2 != null) {
            this.f85744f.cancel(false);
        }
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        Y(th2);
        return nf.P0.f98194a;
    }
}
