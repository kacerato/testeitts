package D0;

import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;

public final class P extends AbstractC2432a {

    public final WeakReference f4592a;

    @VisibleForTesting(otherwise = 2)
    public P(C2469t c2469t) {
        this.f4592a = new WeakReference(c2469t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public final AbstractC2432a b(Runnable runnable) {
        C2469t c2469t = (C2469t) this.f4592a.get();
        if (c2469t == null) {
            throw new IllegalStateException("The target activity has already been GC'd");
        }
        c2469t.o(runnable);
        return this;
    }
}
