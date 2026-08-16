package net.jpountz.lz4;

import java.nio.ByteBuffer;

public final class q extends j {

    public static final q f98098a = new q();

    public static j f98099b;

    public static final boolean f98100c = false;

    @Override
    public final int a(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        net.jpountz.util.c.b(bArr, i10);
        net.jpountz.util.c.c(bArr2, i11, i12);
        int LZ4_decompress_fast = LZ4JNI.LZ4_decompress_fast(bArr, null, i10, bArr2, null, i11, i12);
        if (LZ4_decompress_fast >= 0) {
            return LZ4_decompress_fast;
        }
        throw new LZ4Exception("Error decoding offset " + (i10 - LZ4_decompress_fast) + " of input buffer");
    }

    @Override
    public int b(ByteBuffer byteBuffer, int i10, ByteBuffer byteBuffer2, int i11, int i12) {
        ByteBuffer byteBuffer3;
        byte[] bArr;
        ByteBuffer byteBuffer4;
        int i13;
        byte[] bArr2;
        net.jpountz.util.a.a(byteBuffer2);
        net.jpountz.util.a.b(byteBuffer, i10);
        net.jpountz.util.a.c(byteBuffer2, i11, i12);
        if ((!byteBuffer.hasArray() && !byteBuffer.isDirect()) || (!byteBuffer2.hasArray() && !byteBuffer2.isDirect())) {
            j jVar = f98099b;
            if (jVar == null) {
                jVar = i.m().d();
                f98099b = jVar;
            }
            return jVar.b(byteBuffer, i10, byteBuffer2, i11, i12);
        }
        if (byteBuffer.hasArray()) {
            byte[] array = byteBuffer.array();
            i10 += byteBuffer.arrayOffset();
            bArr = array;
            byteBuffer3 = null;
        } else {
            byteBuffer3 = byteBuffer;
            bArr = null;
        }
        if (byteBuffer2.hasArray()) {
            bArr2 = byteBuffer2.array();
            i13 = i11 + byteBuffer2.arrayOffset();
            byteBuffer4 = null;
        } else {
            byteBuffer4 = byteBuffer2;
            i13 = i11;
            bArr2 = null;
        }
        int LZ4_decompress_fast = LZ4JNI.LZ4_decompress_fast(bArr, byteBuffer3, i10, bArr2, byteBuffer4, i13, i12);
        if (LZ4_decompress_fast >= 0) {
            return LZ4_decompress_fast;
        }
        throw new LZ4Exception("Error decoding offset " + (i10 - LZ4_decompress_fast) + " of input buffer");
    }
}
