package com.tonyodev.fetch2.fetch;

import org.jetbrains.annotations.NotNull;

public final class LiveSettings {
    private volatile boolean didSanitizeDatabaseOnFirstEntry;

    @NotNull
    private final Object lock;

    @NotNull
    private final String namespace;

    public LiveSettings(@NotNull String namespace) {
        kotlin.jvm.internal.M.p(namespace, "namespace");
        this.namespace = namespace;
        this.lock = new Object();
    }

    public final void execute(@NotNull Mf.l<? super LiveSettings, nf.P0> func) {
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            func.invoke(this);
            nf.P0 p02 = nf.P0.f98194a;
        }
    }

    public final boolean getDidSanitizeDatabaseOnFirstEntry() {
        return this.didSanitizeDatabaseOnFirstEntry;
    }

    @NotNull
    public final String getNamespace() {
        return this.namespace;
    }

    public final void setDidSanitizeDatabaseOnFirstEntry(boolean z10) {
        this.didSanitizeDatabaseOnFirstEntry = z10;
    }
}
