package com.tonyodev.fetch2core;

import java.io.Closeable;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

public abstract class OutputResourceWrapper implements Closeable {
    public static void write$default(OutputResourceWrapper outputResourceWrapper, byte[] bArr, int i10, int i11, int i12, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        outputResourceWrapper.write(bArr, i10, i11);
    }

    public abstract void flush() throws IOException;

    public abstract void setWriteOffset(long j10) throws IOException;

    public abstract void write(@NotNull byte[] bArr, int i10, int i11) throws IOException;
}
