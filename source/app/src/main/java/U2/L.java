package U2;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class L extends o implements K {

    public final G f25685d;

    public L(G g10, ScheduledExecutorService scheduledExecutorService) {
        super(g10, scheduledExecutorService);
        this.f25685d = g10;
    }

    @Override
    public boolean isPaused() {
        return this.f25685d.isPaused();
    }

    @Override
    public void pause() {
        this.f25685d.pause();
    }

    @Override
    public void resume() {
        this.f25685d.resume();
    }

    @Override
    public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }
}
