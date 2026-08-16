package com.android.tools.r8.internal;

import java.io.FilterInputStream;
import java.io.InputStream;

public final class M0 extends FilterInputStream {

    public int f42118a;

    public M0(int i10, InputStream inputStream) {
        super(inputStream);
        this.f42118a = i10;
    }

    @Override
    public final int available() {
        return Math.min(super.available(), this.f42118a);
    }

    @Override
    public final int read() {
        if (this.f42118a <= 0) {
            return -1;
        }
        int read = super.read();
        if (read >= 0) {
            this.f42118a--;
        }
        return read;
    }

    @Override
    public final long skip(long j10) {
        long skip = super.skip(Math.min(j10, this.f42118a));
        if (skip >= 0) {
            this.f42118a = (int) (this.f42118a - skip);
        }
        return skip;
    }

    @Override
    public final int read(byte[] bArr, int i10, int i11) {
        int i12 = this.f42118a;
        if (i12 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i10, Math.min(i11, i12));
        if (read >= 0) {
            this.f42118a -= read;
        }
        return read;
    }
}
