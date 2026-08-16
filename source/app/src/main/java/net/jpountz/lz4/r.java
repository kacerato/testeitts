package net.jpountz.lz4;

import java.nio.ByteBuffer;

public final class r extends y {

    public static final r f98101a = new r();

    public static y f98102b;

    public static final boolean f98103c = false;

    @Override
    public final int a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        net.jpountz.util.c.c(bArr, i10, i11);
        net.jpountz.util.c.c(bArr2, i12, i13);
        int LZ4_decompress_safe = LZ4JNI.LZ4_decompress_safe(bArr, null, i10, i11, bArr2, null, i12, i13);
        if (LZ4_decompress_safe >= 0) {
            return LZ4_decompress_safe;
        }
        throw new LZ4Exception("Error decoding offset " + (i10 - LZ4_decompress_safe) + " of input buffer");
    }

    @Override
    public int c(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
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
            y yVar = f98102b;
            if (yVar == null) {
                yVar = i.m().l();
                f98102b = yVar;
            }
            return yVar.c(byteBuffer, i10, i11, byteBuffer2, i12, i13);
        }
        if (byteBuffer.hasArray()) {
            byte[] array = byteBuffer.array();
            i14 = byteBuffer.arrayOffset() + i10;
            bArr = array;
            byteBuffer3 = null;
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
        int LZ4_decompress_safe = LZ4JNI.LZ4_decompress_safe(bArr, byteBuffer3, i14, i11, bArr2, byteBuffer4, i15, i13);
        if (LZ4_decompress_safe >= 0) {
            return LZ4_decompress_safe;
        }
        throw new LZ4Exception("Error decoding offset " + (i14 - LZ4_decompress_safe) + " of input buffer");
    }
}
