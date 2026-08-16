package com.ardor3d.util;

import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.RendererCallable;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

public class GameTaskQueue {
    public static final String RENDER = "render";
    public static final String UPDATE = "update";
    private final ConcurrentLinkedQueue<GameTask<?>> _queue = new ConcurrentLinkedQueue<>();
    private final AtomicBoolean _executeMultiple = new AtomicBoolean();
    private long _executionTime = 0;

    public void clear() {
        this._queue.clear();
    }

    public <V> Future<V> enqueue(Callable<V> callable) {
        GameTask<?> gameTask = new GameTask<>(callable);
        this._queue.add(gameTask);
        return gameTask;
    }

    public void enqueueAll(GameTaskQueue gameTaskQueue) {
        this._queue.addAll(gameTaskQueue._queue);
        gameTaskQueue._queue.clear();
    }

    public void execute() {
        execute(null);
    }

    public long getExecutionTime() {
        if (this._executeMultiple.get()) {
            return this._executionTime;
        }
        return -1L;
    }

    public boolean isExecuteAll() {
        return this._executeMultiple.get();
    }

    public void setExecuteMultiple(boolean z10) {
        this._executeMultiple.set(z10);
        if (z10) {
            this._executionTime = 2147483647L;
        }
    }

    public void setExecutionTime(int i10) {
        this._executionTime = i10;
        this._executeMultiple.set(true);
    }

    public int size() {
        return this._queue.size();
    }

    public void execute(Renderer renderer) {
        long currentTimeMillis = System.currentTimeMillis();
        GameTask<?> poll = this._queue.poll();
        while (poll != null) {
            if (renderer != null && (poll.getCallable() instanceof RendererCallable)) {
                ((RendererCallable) poll.getCallable()).setRenderer(renderer);
            }
            while (poll.isCancelled()) {
                poll = this._queue.poll();
                if (poll == null) {
                    return;
                }
            }
            poll.invoke();
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (!this._executeMultiple.get() || currentTimeMillis2 >= this._executionTime || (poll = this._queue.poll()) == null) {
                return;
            }
        }
    }
}
