package androidx.lifecycle;

import eg.C13122j0;
import eg.V0;
import java.util.ArrayDeque;
import java.util.Queue;
import kotlin.jvm.internal.M;
import yf.j;

public final class DispatchQueue {
    private boolean finished;
    private boolean isDraining;
    private boolean paused = true;
    private final Queue<Runnable> queue = new ArrayDeque();

    public static final void m683dispatchAndEnqueue$lambda2$lambda1(DispatchQueue this$0, Runnable runnable) {
        M.p(this$0, "this$0");
        M.p(runnable, "$runnable");
        this$0.enqueue(runnable);
    }

    private final void enqueue(Runnable runnable) {
        if (!this.queue.offer(runnable)) {
            throw new IllegalStateException("cannot enqueue any more runnables");
        }
        drainQueue();
    }

    public final boolean canRun() {
        return this.finished || !this.paused;
    }

    public final void dispatchAndEnqueue(j context, final Runnable runnable) {
        M.p(context, "context");
        M.p(runnable, "runnable");
        V0 s10 = C13122j0.e().s();
        if (s10.isDispatchNeeded(context) || canRun()) {
            s10.dispatch(context, new Runnable() {
                @Override
                public final void run() {
                    DispatchQueue.m683dispatchAndEnqueue$lambda2$lambda1(DispatchQueue.this, runnable);
                }
            });
        } else {
            enqueue(runnable);
        }
    }

    public final void drainQueue() {
        if (this.isDraining) {
            return;
        }
        try {
            this.isDraining = true;
            while (!this.queue.isEmpty() && canRun()) {
                Runnable poll = this.queue.poll();
                if (poll != null) {
                    poll.run();
                }
            }
        } finally {
            this.isDraining = false;
        }
    }

    public final void finish() {
        this.finished = true;
        drainQueue();
    }

    public final void pause() {
        this.paused = true;
    }

    public final void resume() {
        if (this.paused) {
            if (this.finished) {
                throw new IllegalStateException("Cannot resume a finished dispatcher");
            }
            this.paused = false;
            drainQueue();
        }
    }
}
