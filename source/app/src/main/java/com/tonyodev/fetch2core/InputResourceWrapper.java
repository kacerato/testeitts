package com.tonyodev.fetch2core;

import java.io.Closeable;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

public abstract class InputResourceWrapper implements Closeable {
    public static int read$default(InputResourceWrapper inputResourceWrapper, byte[] bArr, int i10, int i11, int i12, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: read");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return inputResourceWrapper.read(bArr, i10, i11);
    }

    public abstract int read(@NotNull byte[] bArr, int i10, int i11) throws IOException;

    public abstract void setReadOffset(long j10) throws IOException;
}
