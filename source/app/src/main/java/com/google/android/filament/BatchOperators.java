package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;

@Keep
public final class BatchOperators {
    private final long mNativeEngine;

    public BatchOperators(@NonNull Engine engine) {
        this.mNativeEngine = engine.getNativeObject();
    }

    private static native void nChangeVisibility(long j10, int i10, long j11, long j12, int i11);

    public void changeVisibility(@IntRange(from = 0) int i10, long j10, long j11, @IntRange(from = 1, to = 8) int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("entityCount must be >= 0");
        }
        if (i11 <= 0 || i11 > 8) {
            throw new IllegalArgumentException("layersPerEntity must be in [1, 8]");
        }
        if (i10 > 0 && (j10 == 0 || j11 == 0)) {
            throw new IllegalArgumentException("native buffer pointers must be non-zero");
        }
        nChangeVisibility(this.mNativeEngine, i10, j10, j11, i11);
    }
}
