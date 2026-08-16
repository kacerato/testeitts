package net.jpountz.xxhash;

import java.nio.ByteBuffer;

public final class p extends o {

    public static final o f98144a = new p();

    public static o f98145b;

    @Override
    public long a(ByteBuffer byteBuffer, int i10, int i11, long j10) {
        if (byteBuffer.isDirect()) {
            net.jpountz.util.a.c(byteBuffer, i10, i11);
            return XXHashJNI.XXH64BB(byteBuffer, i10, i11, j10);
        }
        if (byteBuffer.hasArray()) {
            return c(byteBuffer.array(), i10 + byteBuffer.arrayOffset(), i11, j10);
        }
        o oVar = f98145b;
        if (oVar == null) {
            oVar = t.k().e();
            f98145b = oVar;
        }
        return oVar.a(byteBuffer, i10, i11, j10);
    }

    @Override
    public long c(byte[] bArr, int i10, int i11, long j10) {
        net.jpountz.util.c.c(bArr, i10, i11);
        return XXHashJNI.XXH64(bArr, i10, i11, j10);
    }
}
