package net.jpountz.xxhash;

import java.nio.ByteBuffer;

public final class l extends k {

    public static final k f98140a = new l();

    public static k f98141b;

    @Override
    public int b(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        if (byteBuffer.isDirect()) {
            net.jpountz.util.a.c(byteBuffer, i10, i11);
            return XXHashJNI.XXH32BB(byteBuffer, i10, i11, i12);
        }
        if (byteBuffer.hasArray()) {
            return c(byteBuffer.array(), i10 + byteBuffer.arrayOffset(), i11, i12);
        }
        k kVar = f98141b;
        if (kVar == null) {
            kVar = t.k().d();
            f98141b = kVar;
        }
        return kVar.b(byteBuffer, i10, i11, i12);
    }

    @Override
    public int c(byte[] bArr, int i10, int i11, int i12) {
        net.jpountz.util.c.c(bArr, i10, i11);
        return XXHashJNI.XXH32(bArr, i10, i11, i12);
    }
}
