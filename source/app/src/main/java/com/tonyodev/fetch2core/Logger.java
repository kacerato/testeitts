package com.tonyodev.fetch2core;

import org.jetbrains.annotations.NotNull;

public interface Logger {
    void d(@NotNull String str);

    void d(@NotNull String str, @NotNull Throwable th2);

    void e(@NotNull String str);

    void e(@NotNull String str, @NotNull Throwable th2);

    boolean getEnabled();

    void setEnabled(boolean z10);
}
