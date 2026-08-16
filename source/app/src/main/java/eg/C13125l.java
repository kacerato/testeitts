package eg;

import java.util.concurrent.Future;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13125l extends AbstractC13129n {

    @NotNull
    public final Future<?> f85742b;

    public C13125l(@NotNull Future<?> future) {
        this.f85742b = future;
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        y(th2);
        return nf.P0.f98194a;
    }

    @NotNull
    public String toString() {
        return "CancelFutureOnCancel[" + ((Object) this.f85742b) + JavaElement.JEM_TYPE_PARAMETER;
    }

    @Override
    public void y(@Nullable Throwable th2) {
        if (th2 != null) {
            this.f85742b.cancel(false);
        }
    }
}
