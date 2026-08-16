package com.jme3.terrain.executor;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class TerrainExecutorService {
    private static final Runtime RUNTIME = Runtime.getRuntime();
    private static volatile Callable<ExecutorService> constructor = new Callable<ExecutorService>() {
        @Override
        public ExecutorService call() throws Exception {
            return Executors.newFixedThreadPool(TerrainExecutorService.RUNTIME.availableProcessors(), new ThreadFactory() {
                private final AtomicInteger counter = new AtomicInteger(-1);

                @Override
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable);
                    thread.setName("jME3 Terrain Thread [" + this.counter.incrementAndGet() + "]");
                    thread.setDaemon(true);
                    return thread;
                }
            });
        }
    };
    private static LazyInitializer initializer;
    private final ExecutorService executorService;

    public static class LazyInitializer {
        public final TerrainExecutorService instance;

        public LazyInitializer(TerrainExecutorService terrainExecutorService) {
            this.instance = terrainExecutorService;
        }
    }

    private TerrainExecutorService() {
        try {
            this.executorService = constructor.call();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static TerrainExecutorService getInstance() {
        LazyInitializer lazyInitializer = initializer;
        if (lazyInitializer == null) {
            synchronized (TerrainExecutorService.class) {
                try {
                    lazyInitializer = initializer;
                    if (lazyInitializer == null) {
                        lazyInitializer = new LazyInitializer(new TerrainExecutorService());
                        initializer = lazyInitializer;
                    }
                } finally {
                }
            }
        }
        return lazyInitializer.instance;
    }

    public static void setConstructor(Callable<ExecutorService> callable) {
        constructor = callable;
    }

    public void execute(Runnable runnable) {
        this.executorService.execute(runnable);
    }

    public <T> Future<T> submit(Callable<T> callable) {
        return this.executorService.submit(callable);
    }

    public <T> Future<T> submit(Runnable runnable, T t10) {
        return this.executorService.submit(runnable, t10);
    }

    public Future<?> submit(Runnable runnable) {
        return this.executorService.submit(runnable);
    }
}
