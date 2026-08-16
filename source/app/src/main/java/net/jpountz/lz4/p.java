package net.jpountz.lz4;

import java.nio.ByteBuffer;

public final class p extends d {

    public static final d f98095a = new p();

    public static d f98096b;

    public static final boolean f98097c = false;

    @Override
    public int a(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
        ByteBuffer byteBuffer3;
        int i14;
        byte[] bArr;
        ByteBuffer byteBuffer4;
        int i15;
        byte[] bArr2;
        net.jpountz.util.a.a(byteBuffer2);
        net.jpountz.util.a.c(byteBuffer, i10, i11);
        net.jpountz.util.a.c(byteBuffer2, i12, i13);
        if ((!byteBuffer.hasArray() && !byteBuffer.isDirect()) || (!byteBuffer2.hasArray() && !byteBuffer2.isDirect())) {
            d dVar = f98096b;
            if (dVar == null) {
                dVar = i.m().c();
                f98096b = dVar;
            }
            return dVar.a(byteBuffer, i10, i11, byteBuffer2, i12, i13);
        }
        if (byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
            byteBuffer3 = null;
            i14 = byteBuffer.arrayOffset() + i10;
        } else {
            byteBuffer3 = byteBuffer;
            i14 = i10;
            bArr = null;
        }
        if (byteBuffer2.hasArray()) {
            bArr2 = byteBuffer2.array();
            byteBuffer4 = null;
            i15 = i12 + byteBuffer2.arrayOffset();
        } else {
            byteBuffer4 = byteBuffer2;
            i15 = i12;
            bArr2 = null;
        }
        int LZ4_compress_limitedOutput = LZ4JNI.LZ4_compress_limitedOutput(bArr, byteBuffer3, i14, i11, bArr2, byteBuffer4, i15, i13);
        if (LZ4_compress_limitedOutput > 0) {
            return LZ4_compress_limitedOutput;
        }
        throw new LZ4Exception("maxDestLen is too small");
    }

    @Override
    public int c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        net.jpountz.util.c.c(bArr, i10, i11);
        net.jpountz.util.c.c(bArr2, i12, i13);
        int LZ4_compress_limitedOutput = LZ4JNI.LZ4_compress_limitedOutput(bArr, null, i10, i11, bArr2, null, i12, i13);
        if (LZ4_compress_limitedOutput > 0) {
            return LZ4_compress_limitedOutput;
        }
        throw new LZ4Exception("maxDestLen is too small");
    }
}
