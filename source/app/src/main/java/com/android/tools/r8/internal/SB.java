package com.android.tools.r8.internal;

import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

public final class SB implements BT {

    public static final SB f44152c = new SB(null);

    public final Object f44153b;

    static {
        Logger.getLogger(SB.class.getName());
    }

    public SB(Object obj) {
        this.f44153b = obj;
    }

    @Override
    public final boolean cancel(boolean z10) {
        return false;
    }

    @Override
    public final Object get() {
        return this.f44153b;
    }

    @Override
    public final boolean isCancelled() {
        return false;
    }

    @Override
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        return super.toString() + "[status=SUCCESS, result=[" + this.f44153b + "]]";
    }

    @Override
    public final Object get(long j10, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f44153b;
    }
}
