package com.tonyodev.fetch2core;

import org.jetbrains.annotations.NotNull;

@FunctionalInterface
public interface Func<R> {
    void call(@NotNull R r10);
}
