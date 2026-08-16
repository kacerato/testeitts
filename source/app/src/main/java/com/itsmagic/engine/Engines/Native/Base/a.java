package com.itsmagic.engine.Engines.Native.Base;

import Ic.C2634m;
import M9.d;
import M9.e;
import M9.f;
import android.os.Build;

public abstract class a extends C2634m implements e {
    protected static final boolean USE_CRITICAL_NATIVE;
    private boolean garbage = false;
    private final int engineInstanceID = K8.a.f10988s;
    private boolean canAsyncCleaner = true;

    static {
        USE_CRITICAL_NATIVE = Build.VERSION.SDK_INT >= 34;
    }

    public abstract int bytesPerItem();

    public boolean canAsyncCleaner() {
        return this.canAsyncCleaner;
    }

    public int capacity() {
        throw new UnsupportedOperationException("Not implemented at " + getClass().getSimpleName());
    }

    public void destroyImmediate() {
        throw new UnsupportedOperationException("Not implemented at " + getClass().getSimpleName());
    }

    public int getEngineInstanceID() {
        return this.engineInstanceID;
    }

    public long getPointerCritical() {
        throw new UnsupportedOperationException("Not implemented at " + getClass().getSimpleName());
    }

    public d gpuUsageType() {
        return null;
    }

    @Override
    public long gpuUsedBytes() {
        return 0L;
    }

    public boolean isGarbage() {
        return this.garbage;
    }

    public boolean isNative() {
        throw new UnsupportedOperationException("Not implemented at " + getClass().getSimpleName());
    }

    public void lostOGLContext() {
        throw new UnsupportedOperationException("Not implemented at " + getClass().getSimpleName());
    }

    public f nativeUsageType() {
        return f.BUFFER;
    }

    public long nativeUsedBytes() {
        return (capacity() * bytesPerItem()) + 12;
    }

    public void setCanAsyncCleaner(boolean canAsyncCleaner) {
        this.canAsyncCleaner = canAsyncCleaner;
    }

    public void setDeleted() {
    }

    public void setGarbage() {
        this.garbage = true;
    }
}
