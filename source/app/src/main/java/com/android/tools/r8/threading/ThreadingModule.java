package com.android.tools.r8.threading;

import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.function.Consumer;

public interface ThreadingModule {
    <T> void awaitFutures(List<Future<T>> list) throws ExecutionException;

    ExecutorService createSingleThreadedExecutorService();

    ExecutorService createThreadedExecutorService(int i10);

    <T> void forEach(List<Future<T>> list, Consumer<T> consumer) throws ExecutionException;

    boolean isSingleThreaded();

    <T> Future<T> submit(Callable<T> callable, ExecutorService executorService) throws ExecutionException;
}
