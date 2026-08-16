package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.MappingPartition;

public final class YU implements MappingPartition {

    public final String f45992a;

    public final byte[] f45993b;

    public YU(String str, byte[] bArr) {
        this.f45992a = str;
        this.f45993b = bArr;
    }

    @Override
    public final String getKey() {
        return this.f45992a;
    }

    @Override
    public final byte[] getPayload() {
        return this.f45993b;
    }
}
