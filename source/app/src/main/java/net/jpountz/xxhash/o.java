package net.jpountz.xxhash;

import java.nio.ByteBuffer;

public abstract class o {
    public abstract long a(ByteBuffer byteBuffer, int i10, int i11, long j10);

    public final long b(ByteBuffer byteBuffer, long j10) {
        long a10 = a(byteBuffer, byteBuffer.position(), byteBuffer.remaining(), j10);
        byteBuffer.position(byteBuffer.limit());
        return a10;
    }

    public abstract long c(byte[] bArr, int i10, int i11, long j10);

    public String toString() {
        return getClass().getSimpleName();
    }
}
