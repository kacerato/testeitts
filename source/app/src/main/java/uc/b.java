package Uc;

import Uc.a;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class b {

    public static final int f26012a = 0;

    public static final int f26013b = 1;

    public static final int f26014c = 2;

    public static final int f26015d = 3;

    public static final byte[] f26016e = {0, 0, 0, 0, 0, 0, 0, 0, Opcodes.OPC_bastore, Opcodes.OPC_dastore, Opcodes.OPC_castore, Opcodes.OPC_fstore_2, Opcodes.OPC_sastore, Opcodes.OPC_dstore_2, Opcodes.OPC_aastore, Opcodes.OPC_dstore_2, Opcodes.OPC_iastore, Opcodes.OPC_astore_3, Opcodes.OPC_aload_3, Opcodes.OPC_pop2, 70, Opcodes.OPC_dstore_2, Opcodes.OPC_astore_1, Opcodes.OPC_fstore_2, Opcodes.OPC_iaload, 0};

    public enum a {
        NONE,
        RLE,
        AUTO
    }

    public static int a(byte[] buffer, int index, int color, int count, int elementCount, a.C0717a order) {
        buffer[index] = (byte) ((count - 1) | 128);
        buffer[index + 1] = (byte) ((color >> order.f26010c) & 255);
        buffer[index + 2] = (byte) ((color >> order.f26009b) & 255);
        int i10 = index + 4;
        buffer[index + 3] = (byte) ((color >> order.f26008a) & 255);
        if (elementCount != 4) {
            return i10;
        }
        int i11 = index + 5;
        buffer[i10] = (byte) ((color >> order.f26011d) & 255);
        return i11;
    }

    public static int b(byte[] buffer, int index, int[] pixels, int start, int count, int elementCount, a.C0717a order) {
        int i10 = index + 1;
        buffer[index] = (byte) (count - 1);
        for (int i11 = 0; i11 < count; i11++) {
            int i12 = pixels[start + i11];
            buffer[i10] = (byte) ((i12 >> order.f26010c) & 255);
            buffer[i10 + 1] = (byte) ((i12 >> order.f26009b) & 255);
            int i13 = i10 + 3;
            buffer[i10 + 2] = (byte) ((i12 >> order.f26008a) & 255);
            if (elementCount == 4) {
                i10 += 4;
                buffer[i13] = (byte) ((i12 >> order.f26011d) & 255);
            } else {
                i10 = i13;
            }
        }
        return i10;
    }

    public static int c(int[] pixels, int width, int elementCount, a.C0717a order, byte[] buffer, int index) {
        int b10;
        int b11;
        int i10;
        int i11;
        int i12;
        int i13 = index;
        char c10 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i16 < pixels.length) {
            if (c10 == 0) {
                i11 = pixels[i16];
                b11 = i13;
            } else {
                if (c10 == 1) {
                    int i17 = pixels[i16];
                    i10 = i17;
                    c10 = i14 == i17 ? (char) 2 : (char) 3;
                    b11 = i13;
                } else {
                    if (c10 != 2) {
                        if (c10 == 3) {
                            if (i14 == pixels[i16]) {
                                int i18 = i16 - 1;
                                b11 = b(buffer, i13, pixels, i15, i18 - i15, elementCount, order);
                                i10 = pixels[i16];
                                i15 = i18;
                                c10 = 2;
                            } else if (i16 - i15 >= 127) {
                                b10 = b(buffer, i13, pixels, i15, 128, elementCount, order);
                                b11 = b10;
                                c10 = 0;
                            }
                        }
                        b11 = i13;
                    } else if (i14 != pixels[i16]) {
                        int a10 = a(buffer, i13, i14, i16 - i15, elementCount, order);
                        i11 = pixels[i16];
                        b11 = a10;
                    } else {
                        if (i16 - i15 >= 127) {
                            b10 = a(buffer, i13, i14, 128, elementCount, order);
                            b11 = b10;
                            c10 = 0;
                        }
                        b11 = i13;
                    }
                    i10 = i14;
                }
                i12 = i16 + 1;
                if (i12 % width == 0 || c10 == 0) {
                    i13 = b11;
                } else {
                    i13 = c10 == 2 ? a(buffer, b11, i10, (i16 - i15) + 1, elementCount, order) : b(buffer, b11, pixels, i15, (i16 - i15) + 1, elementCount, order);
                    c10 = 0;
                }
                int i19 = pixels[i16];
                i16 = i12;
                i14 = i19;
            }
            i10 = i11;
            i15 = i16;
            c10 = 1;
            i12 = i16 + 1;
            if (i12 % width == 0) {
            }
            i13 = b11;
            int i192 = pixels[i16];
            i16 = i12;
            i14 = i192;
        }
        if (c10 != 0) {
            System.out.println("Error!");
        }
        return i13;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int d(int[] pixels, int width, int elementCount) {
        int i10;
        int i11;
        int i12 = 0;
        char c10 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i12 < pixels.length) {
            if (c10 == 0) {
                int i16 = pixels[i12];
            } else {
                if (c10 == 1) {
                    if (i14 != pixels[i12]) {
                        c10 = 3;
                    }
                    c10 = 2;
                } else if (c10 == 2) {
                    if (i14 != pixels[i12]) {
                        i13 += elementCount + 1;
                    } else if (i12 - i15 >= 127) {
                        i10 = elementCount + 1;
                        i13 += i10;
                        c10 = 0;
                    }
                } else if (c10 == 3) {
                    if (i14 == pixels[i12]) {
                        int i17 = i12 - 1;
                        i13 += ((i17 - i15) * elementCount) + 1;
                        i15 = i17;
                        c10 = 2;
                    } else if (i12 - i15 >= 127) {
                        i10 = (elementCount * 128) + 1;
                        i13 += i10;
                        c10 = 0;
                    }
                }
                i11 = i12 + 1;
                if (i11 % width == 0 && c10 != 0) {
                    i13 += c10 != 2 ? elementCount + 1 : (((i12 - i15) + 1) * elementCount) + 1;
                    c10 = 0;
                }
                i14 = pixels[i12];
                i12 = i11;
            }
            i15 = i12;
            c10 = 1;
            i11 = i12 + 1;
            if (i11 % width == 0) {
                i13 += c10 != 2 ? elementCount + 1 : (((i12 - i15) + 1) * elementCount) + 1;
                c10 = 0;
            }
            i14 = pixels[i12];
            i12 = i11;
        }
        if (c10 != 0) {
            System.out.println("Error!");
        }
        return i13;
    }

    public static boolean e(int[] pixels, a.C0717a order) {
        int i10 = order.f26011d;
        for (int i11 : pixels) {
            if (((i11 >> i10) & 255) != 255) {
                return true;
            }
        }
        return false;
    }

    public static byte[] f(int[] pixels, int width, int height, a.C0717a order) {
        return g(pixels, width, height, order, a.AUTO);
    }

    public static byte[] g(int[] pixels, int width, int height, a.C0717a order, a encodeType) {
        boolean z10;
        int i10 = e(pixels, order) ? 4 : 3;
        int length = pixels.length * i10;
        int d10 = d(pixels, width, i10);
        int ordinal = encodeType.ordinal();
        int i11 = 0;
        if (ordinal == 1) {
            length = d10;
            z10 = true;
        } else if (ordinal != 2) {
            z10 = false;
        } else {
            z10 = d10 < length;
            if (z10) {
                length = d10;
            }
        }
        byte[] bArr = new byte[f26016e.length + 18 + length];
        bArr[0] = 0;
        bArr[1] = 0;
        bArr[2] = (byte) (z10 ? 10 : 2);
        bArr[3] = 0;
        bArr[4] = 0;
        bArr[5] = 0;
        bArr[6] = 0;
        bArr[7] = 0;
        bArr[8] = 0;
        bArr[9] = 0;
        bArr[10] = 0;
        bArr[11] = 0;
        bArr[12] = (byte) (width & 255);
        bArr[13] = (byte) ((width >> 8) & 255);
        bArr[14] = (byte) (height & 255);
        bArr[15] = (byte) ((height >> 8) & 255);
        bArr[16] = (byte) (i10 * 8);
        bArr[17] = 32;
        int c10 = z10 ? c(pixels, width, i10, order, bArr, 18) : h(pixels, bArr, 18, i10, order);
        while (true) {
            byte[] bArr2 = f26016e;
            if (i11 >= bArr2.length) {
                return bArr;
            }
            bArr[c10] = bArr2[i11];
            i11++;
            c10++;
        }
    }

    public static int h(int[] pixels, byte[] buffer, int index, int elementCount, a.C0717a order) {
        int i10 = 0;
        if (elementCount == 3) {
            while (i10 < pixels.length) {
                int i11 = pixels[i10];
                buffer[index] = (byte) ((i11 >> order.f26010c) & 255);
                int i12 = index + 2;
                buffer[index + 1] = (byte) ((i11 >> order.f26009b) & 255);
                index += 3;
                buffer[i12] = (byte) ((i11 >> order.f26008a) & 255);
                i10++;
            }
        } else {
            while (i10 < pixels.length) {
                int i13 = pixels[i10];
                buffer[index] = (byte) ((i13 >> order.f26010c) & 255);
                buffer[index + 1] = (byte) ((i13 >> order.f26009b) & 255);
                int i14 = index + 3;
                buffer[index + 2] = (byte) ((i13 >> order.f26008a) & 255);
                index += 4;
                buffer[i14] = (byte) ((i13 >> order.f26011d) & 255);
                i10++;
            }
        }
        return index;
    }
}
