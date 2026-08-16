package com.android.tools.r8.internal;

import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;

public final class L0 extends FilterInputStream {

    public int f41840a;

    public L0(ByteArrayInputStream byteArrayInputStream, int i10) {
        super(byteArrayInputStream);
        this.f41840a = i10;
    }

    @Override
    public final int available() {
        return Math.min(super.available(), this.f41840a);
    }

    @Override
    public final int read() {
        if (this.f41840a <= 0) {
            return -1;
        }
        int read = super.read();
        if (read >= 0) {
            this.f41840a--;
        }
        return read;
    }

    @Override
    public final long skip(long j10) {
        long skip = super.skip(Math.min(j10, this.f41840a));
        if (skip >= 0) {
            this.f41840a = (int) (this.f41840a - skip);
        }
        return skip;
    }

    @Override
    public final int read(byte[] bArr, int i10, int i11) {
        int i12 = this.f41840a;
        if (i12 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i10, Math.min(i11, i12));
        if (read >= 0) {
            this.f41840a -= read;
        }
        return read;
    }
}
