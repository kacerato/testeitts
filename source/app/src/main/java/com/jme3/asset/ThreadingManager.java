package com.jme3.asset;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;

public class ThreadingManager {
    protected final ExecutorService executor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors(), new LoadingThreadFactory());
    protected int nextThreadId = 0;
    protected final AssetManager owner;

    public class LoadingTask<T> implements Callable<T> {
        private final AssetKey<T> assetKey;

        public LoadingTask(AssetKey<T> assetKey) {
            this.assetKey = assetKey;
        }

        @Override
        public T call() throws Exception {
            return (T) ThreadingManager.this.owner.loadAsset(this.assetKey);
        }
    }

    public class LoadingThreadFactory implements ThreadFactory {
        public LoadingThreadFactory() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("jME3-threadpool-");
            ThreadingManager threadingManager = ThreadingManager.this;
            int i10 = threadingManager.nextThreadId;
            threadingManager.nextThreadId = i10 + 1;
            sb2.append(i10);
            Thread thread = new Thread(runnable, sb2.toString());
            thread.setDaemon(true);
            thread.setPriority(1);
            return thread;
        }
    }

    public ThreadingManager(AssetManager assetManager) {
        this.owner = assetManager;
    }

    public static boolean isLoadingThread() {
        return Thread.currentThread().getName().startsWith("jME3-threadpool");
    }

    public <T> Future<T> loadAsset(AssetKey<T> assetKey) {
        return this.executor.submit(new LoadingTask(assetKey));
    }
}
