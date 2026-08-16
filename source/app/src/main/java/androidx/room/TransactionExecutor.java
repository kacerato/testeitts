package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

class TransactionExecutor implements Executor {
    private Runnable mActive;
    private final Executor mExecutor;
    private final ArrayDeque<Runnable> mTasks = new ArrayDeque<>();

    public TransactionExecutor(Executor executor) {
        this.mExecutor = executor;
    }

    @Override
    public synchronized void execute(final Runnable command) {
        this.mTasks.offer(new Runnable() {
            @Override
            public void run() {
                try {
                    command.run();
                } finally {
                    TransactionExecutor.this.scheduleNext();
                }
            }
        });
        if (this.mActive == null) {
            scheduleNext();
        }
    }

    public synchronized void scheduleNext() {
        Runnable poll = this.mTasks.poll();
        this.mActive = poll;
        if (poll != null) {
            this.mExecutor.execute(poll);
        }
    }
}
