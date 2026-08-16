package com.tonyodev.fetch2core;

import android.util.Log;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public class FetchLogger implements Logger {
    private boolean enabled;

    @NotNull
    private String tag;

    public FetchLogger(boolean z10, @NotNull String loggingTag) {
        M.q(loggingTag, "loggingTag");
        this.enabled = z10;
        this.tag = loggingTag;
    }

    private final String getLoggingTag() {
        return this.tag.length() > 23 ? FetchCoreDefaults.DEFAULT_TAG : this.tag;
    }

    @Override
    public void d(@NotNull String message) {
        M.q(message, "message");
        if (getEnabled()) {
            Log.d(getLoggingTag(), message);
        }
    }

    @Override
    public void e(@NotNull String message) {
        M.q(message, "message");
        if (getEnabled()) {
            Log.e(getLoggingTag(), message);
        }
    }

    @Override
    public boolean getEnabled() {
        return this.enabled;
    }

    @NotNull
    public final String getTag() {
        return this.tag;
    }

    @Override
    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public final void setTag(@NotNull String str) {
        M.q(str, "<set-?>");
        this.tag = str;
    }

    @Override
    public void d(@NotNull String message, @NotNull Throwable throwable) {
        M.q(message, "message");
        M.q(throwable, "throwable");
        if (getEnabled()) {
            Log.d(getLoggingTag(), message, throwable);
        }
    }

    @Override
    public void e(@NotNull String message, @NotNull Throwable throwable) {
        M.q(message, "message");
        M.q(throwable, "throwable");
        if (getEnabled()) {
            Log.e(getLoggingTag(), message, throwable);
        }
    }

    public FetchLogger() {
        this(false, FetchCoreDefaults.DEFAULT_TAG);
    }
}
