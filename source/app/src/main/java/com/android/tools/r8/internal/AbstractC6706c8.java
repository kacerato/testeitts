package com.android.tools.r8.internal;

import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Arrays;

public abstract class AbstractC6706c8 {

    public static final int f46984a = 0;

    static {
        new C6540b8();
    }

    public static byte[] a(InputStream inputStream) {
        inputStream.getClass();
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int min = Math.min(8192, Math.max(128, Integer.highestOneBit(0) * 2));
        int i10 = 0;
        while (i10 < 2147483639) {
            int min2 = Math.min(min, 2147483639 - i10);
            byte[] bArr = new byte[min2];
            arrayDeque.add(bArr);
            int i11 = 0;
            while (i11 < min2) {
                int read = inputStream.read(bArr, i11, min2 - i11);
                if (read == -1) {
                    if (arrayDeque.isEmpty()) {
                        return new byte[0];
                    }
                    byte[] bArr2 = (byte[]) arrayDeque.remove();
                    if (bArr2.length == i10) {
                        return bArr2;
                    }
                    int length = i10 - bArr2.length;
                    byte[] copyOf = Arrays.copyOf(bArr2, i10);
                    while (length > 0) {
                        byte[] bArr3 = (byte[]) arrayDeque.remove();
                        int min3 = Math.min(length, bArr3.length);
                        System.arraycopy(bArr3, 0, copyOf, i10 - length, min3);
                        length -= min3;
                    }
                    return copyOf;
                }
                i11 += read;
                i10 += read;
            }
            min = HJ.a(min * (min < 4096 ? 4 : 2));
        }
        if (inputStream.read() != -1) {
            throw new OutOfMemoryError("input is too large to fit in a byte array");
        }
        if (arrayDeque.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr4 = (byte[]) arrayDeque.remove();
        if (bArr4.length == 2147483639) {
            return bArr4;
        }
        int length2 = 2147483639 - bArr4.length;
        byte[] copyOf2 = Arrays.copyOf(bArr4, 2147483639);
        while (length2 > 0) {
            byte[] bArr5 = (byte[]) arrayDeque.remove();
            int min4 = Math.min(length2, bArr5.length);
            System.arraycopy(bArr5, 0, copyOf2, 2147483639 - length2, min4);
            length2 -= min4;
        }
        return copyOf2;
    }
}
