package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

@A
@v2.b
public enum EnumC12636z implements Executor {
    INSTANCE;

    @Override
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override
    public String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
