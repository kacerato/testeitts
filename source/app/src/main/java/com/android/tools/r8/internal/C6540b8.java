package com.android.tools.r8.internal;

import java.io.OutputStream;

public final class C6540b8 extends OutputStream {
    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override
    public final void write(int i10) {
    }

    @Override
    public final void write(byte[] bArr) {
        bArr.getClass();
    }

    @Override
    public final void write(byte[] bArr, int i10, int i11) {
        bArr.getClass();
        U60.a(i10, i11 + i10, bArr.length);
    }
}
