package com.android.tools.r8.internal;

import java.nio.ByteBuffer;

public abstract class AbstractC8838ow0 {
    public static String a(ByteBuffer byteBuffer, int i10, int i11) {
        if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) >= 0) {
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = byteBuffer.get(i10);
                if (!AbstractC8671nw0.a(b10)) {
                    break;
                }
                i10++;
                cArr[i13] = (char) b10;
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = byteBuffer.get(i10);
                if (AbstractC8671nw0.a(b11)) {
                    cArr[i14] = (char) b11;
                    i14++;
                    i10 = i15;
                    while (i10 < i12) {
                        byte b12 = byteBuffer.get(i10);
                        if (!AbstractC8671nw0.a(b12)) {
                            break;
                        }
                        i10++;
                        cArr[i14] = (char) b12;
                        i14++;
                    }
                } else if (b11 < -32) {
                    if (i15 < i12) {
                        i10 += 2;
                        AbstractC8671nw0.a(b11, byteBuffer.get(i15), cArr, i14);
                        i14++;
                    } else {
                        throw new MJ("Protocol message had invalid UTF-8.");
                    }
                } else if (b11 < -16) {
                    if (i15 < i12 - 1) {
                        int i16 = i10 + 2;
                        i10 += 3;
                        AbstractC8671nw0.a(b11, byteBuffer.get(i15), byteBuffer.get(i16), cArr, i14);
                        i14++;
                    } else {
                        throw new MJ("Protocol message had invalid UTF-8.");
                    }
                } else if (i15 < i12 - 2) {
                    byte b13 = byteBuffer.get(i15);
                    int i17 = i10 + 3;
                    byte b14 = byteBuffer.get(i10 + 2);
                    i10 += 4;
                    AbstractC8671nw0.a(b11, b13, b14, byteBuffer.get(i17), cArr, i14);
                    i14 += 2;
                } else {
                    throw new MJ("Protocol message had invalid UTF-8.");
                }
            }
            return new String(cArr, 0, i14);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    public abstract int a(String str, byte[] bArr, int i10, int i11);

    public abstract String a(byte[] bArr, int i10, int i11);

    public abstract int b(byte[] bArr, int i10, int i11);

    public abstract String b(ByteBuffer byteBuffer, int i10, int i11);
}
