package com.tonyodev.fetch2core;

import Mf.a;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class HandlerWrapper {
    private boolean closed;
    private final Handler handler;
    private final Object lock;

    @NotNull
    private final String namespace;
    private int usageCounter;
    private Handler workerTaskHandler;

    public HandlerWrapper(@NotNull String namespace, @Nullable Handler handler) {
        M.q(namespace, "namespace");
        this.namespace = namespace;
        this.lock = new Object();
        this.handler = handler == null ? new HandlerWrapper$handler$1(this).invoke() : handler;
    }

    private final Handler getNewWorkerTaskHandler() {
        HandlerThread handlerThread = new HandlerThread(this.namespace + " worker task");
        handlerThread.start();
        return new Handler(handlerThread.getLooper());
    }

    public final void close() {
        Looper looper;
        synchronized (this.lock) {
            if (!this.closed) {
                this.closed = true;
                try {
                    this.handler.removeCallbacksAndMessages(null);
                    this.handler.getLooper().quit();
                } catch (Exception unused) {
                }
                try {
                    Handler handler = this.workerTaskHandler;
                    this.workerTaskHandler = null;
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                    }
                    if (handler != null && (looper = handler.getLooper()) != null) {
                        looper.quit();
                    }
                } catch (Exception unused2) {
                }
            }
            P0 p02 = P0.f98194a;
        }
    }

    public final void decrementUsageCounter() {
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    int i10 = this.usageCounter;
                    if (i10 == 0) {
                        return;
                    } else {
                        this.usageCounter = i10 - 1;
                    }
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(HandlerWrapper.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj != null) {
            return M.g(this.namespace, ((HandlerWrapper) obj).namespace);
        }
        throw new TypeCastException("null cannot be cast to non-null type com.tonyodev.fetch2core.HandlerWrapper");
    }

    public final void executeWorkerTask(@NotNull a<P0> runnable) {
        M.q(runnable, "runnable");
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    if (this.workerTaskHandler == null) {
                        this.workerTaskHandler = getNewWorkerTaskHandler();
                    }
                    Handler handler = this.workerTaskHandler;
                    if (handler != null) {
                        handler.post(new HandlerWrapper$sam$i$java_lang_Runnable$0(runnable));
                    }
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    public final Looper getLooper() {
        Looper looper;
        synchronized (this.lock) {
            looper = this.handler.getLooper();
            M.h(looper, "handler.looper");
        }
        M.h(looper, "synchronized(lock) {\n   \u2026 handler.looper\n        }");
        return looper;
    }

    @NotNull
    public final String getNamespace() {
        return this.namespace;
    }

    @NotNull
    public final Looper getWorkTaskLooper() {
        Looper looper;
        synchronized (this.lock) {
            try {
                Handler handler = this.workerTaskHandler;
                if (handler == null) {
                    Handler newWorkerTaskHandler = getNewWorkerTaskHandler();
                    this.workerTaskHandler = newWorkerTaskHandler;
                    looper = newWorkerTaskHandler.getLooper();
                    M.h(looper, "newHandler.looper");
                } else {
                    looper = handler.getLooper();
                    M.h(looper, "workerHandler.looper");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return looper;
    }

    public int hashCode() {
        return this.namespace.hashCode();
    }

    public final void incrementUsageCounter() {
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    this.usageCounter++;
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void post(@NotNull a<P0> runnable) {
        M.q(runnable, "runnable");
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    this.handler.post(new HandlerWrapper$sam$i$java_lang_Runnable$0(runnable));
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void postDelayed(@NotNull Runnable runnable, long j10) {
        M.q(runnable, "runnable");
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    this.handler.postDelayed(runnable, j10);
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void removeCallbacks(@NotNull Runnable runnable) {
        M.q(runnable, "runnable");
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    this.handler.removeCallbacks(runnable);
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final int usageCount() {
        int i10;
        synchronized (this.lock) {
            i10 = !this.closed ? this.usageCounter : 0;
        }
        return i10;
    }

    public HandlerWrapper(String str, Handler handler, int i10, C14026x c14026x) {
        this(str, (i10 & 2) != 0 ? null : handler);
    }
}
