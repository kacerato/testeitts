package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

@A
@I2.f("Use the methods in Futures (like immediateFuture) or SettableFuture")
public interface Z<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
