package com.github.luben.zstd;

import java.io.IOException;

public class ZstdIOException extends IOException {
    private long code;

    public ZstdIOException(long j10) {
        this(Zstd.getErrorCode(j10), Zstd.getErrorName(j10));
    }

    public long getErrorCode() {
        return this.code;
    }

    public ZstdIOException(long j10, String str) {
        super(str);
        this.code = j10;
    }
}
