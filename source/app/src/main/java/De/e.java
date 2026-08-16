package De;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

public final class e extends AtomicReference<Future<?>> implements c {

    public static final long f5159c = 6545242830671168775L;

    public final boolean f5160b;

    public e(Future<?> future, boolean z10) {
        super(future);
        this.f5160b = z10;
    }

    @Override
    public boolean d() {
        Future<?> future = get();
        return future == null || future.isDone();
    }

    @Override
    public void dispose() {
        Future<?> andSet = getAndSet(null);
        if (andSet != null) {
            andSet.cancel(this.f5160b);
        }
    }
}
