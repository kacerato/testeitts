package com.tonyodev.fetch2core;

import org.jetbrains.annotations.NotNull;

@FunctionalInterface
public interface FetchObserver<T> {
    void onChanged(T t10, @NotNull Reason reason);
}
