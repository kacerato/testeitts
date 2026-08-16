package U2;

import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

public final class F implements E {

    public volatile boolean f25677b;

    public final Executor f25678c;

    @VisibleForTesting
    public final LinkedBlockingQueue<Runnable> f25679d = new LinkedBlockingQueue<>();

    public F(boolean z10, Executor executor) {
        this.f25677b = z10;
        this.f25678c = executor;
    }

    public final void a() {
        if (this.f25677b) {
            return;
        }
        Runnable poll = this.f25679d.poll();
        while (poll != null) {
            this.f25678c.execute(poll);
            poll = !this.f25677b ? this.f25679d.poll() : null;
        }
    }

    @Override
    public void execute(Runnable runnable) {
        this.f25679d.offer(runnable);
        a();
    }

    @Override
    public boolean isPaused() {
        return this.f25677b;
    }

    @Override
    public void pause() {
        this.f25677b = true;
    }

    @Override
    public void resume() {
        this.f25677b = false;
        a();
    }
}
