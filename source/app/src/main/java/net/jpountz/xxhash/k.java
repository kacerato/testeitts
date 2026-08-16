package net.jpountz.xxhash;

import java.nio.ByteBuffer;

public abstract class k {
    public final int a(ByteBuffer byteBuffer, int i10) {
        int b10 = b(byteBuffer, byteBuffer.position(), byteBuffer.remaining(), i10);
        byteBuffer.position(byteBuffer.limit());
        return b10;
    }

    public abstract int b(ByteBuffer byteBuffer, int i10, int i11, int i12);

    public abstract int c(byte[] bArr, int i10, int i11, int i12);

    public String toString() {
        return getClass().getSimpleName();
    }
}
