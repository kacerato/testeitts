package eg;

import java.util.concurrent.Future;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;

public final class C13126l0 implements InterfaceC13128m0 {

    @NotNull
    public final Future<?> f85743b;

    public C13126l0(@NotNull Future<?> future) {
        this.f85743b = future;
    }

    @Override
    public void dispose() {
        this.f85743b.cancel(false);
    }

    @NotNull
    public String toString() {
        return "DisposableFutureHandle[" + ((Object) this.f85743b) + JavaElement.JEM_TYPE_PARAMETER;
    }
}
