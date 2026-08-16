package com.tonyodev.fetch2core;

import org.jetbrains.annotations.Nullable;

@FunctionalInterface
public interface Func2<R> {
    void call(@Nullable R r10);
}
