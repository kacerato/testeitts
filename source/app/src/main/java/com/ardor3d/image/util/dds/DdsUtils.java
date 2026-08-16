package com.ardor3d.image.util.dds;

import android.text.Spanned;
import com.ardor3d.image.ImageDataFormat;

public class DdsUtils {
    private static final int ThreeBitMask = 7;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$image$ImageDataFormat;

        static {
            int[] iArr = new int[ImageDataFormat.values().length];
            $SwitchMap$com$ardor3d$image$ImageDataFormat = iArr;
            try {
                iArr[ImageDataFormat.PrecompressedDXT1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedDXT1A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedLATC_L.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedDXT3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedDXT5.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedLATC_LA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static byte[] flipDXT(byte[] bArr, int i10, int i11, ImageDataFormat imageDataFormat) {
        byte[] bArr2 = new byte[bArr.length];
        int i12 = (i10 + 3) >> 2;
        int i13 = (i11 + 3) >> 2;
        int components = imageDataFormat.getComponents() * 8;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i13 - i14) - 1;
            for (int i16 = 0; i16 < i12; i16++) {
                int i17 = ((i15 * i12) + i16) * components;
                int i18 = ((i14 * i12) + i16) * components;
                switch (AnonymousClass1.$SwitchMap$com$ardor3d$image$ImageDataFormat[imageDataFormat.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        System.arraycopy(bArr, i18, bArr2, i17, 4);
                        bArr2[i17 + 4] = bArr[i18 + 7];
                        bArr2[i17 + 5] = bArr[i18 + 6];
                        bArr2[i17 + 6] = bArr[i18 + 5];
                        bArr2[i17 + 7] = bArr[i18 + 4];
                        break;
                    case 4:
                        bArr2[i17] = bArr[i18 + 6];
                        bArr2[i17 + 1] = bArr[i18 + 7];
                        bArr2[i17 + 2] = bArr[i18 + 4];
                        bArr2[i17 + 3] = bArr[i18 + 5];
                        bArr2[i17 + 4] = bArr[i18 + 2];
                        bArr2[i17 + 5] = bArr[i18 + 3];
                        bArr2[i17 + 6] = bArr[i18];
                        bArr2[i17 + 7] = bArr[i18 + 1];
                        System.arraycopy(bArr, i18 + 8, bArr2, i17 + 8, 4);
                        bArr2[i17 + 12] = bArr[i18 + 15];
                        bArr2[i17 + 13] = bArr[i18 + 14];
                        bArr2[i17 + 14] = bArr[i18 + 13];
                        bArr2[i17 + 15] = bArr[i18 + 12];
                        break;
                    case 5:
                        bArr2[i17] = bArr[i18];
                        bArr2[i17 + 1] = bArr[i18 + 1];
                        getBytesFromUInt24(bArr2, i17 + 5, flipUInt24(getUInt24(bArr, i18 + 2)));
                        getBytesFromUInt24(bArr2, i17 + 2, flipUInt24(getUInt24(bArr, i18 + 5)));
                        System.arraycopy(bArr, i18 + 8, bArr2, i17 + 8, 4);
                        bArr2[i17 + 12] = bArr[i18 + 15];
                        bArr2[i17 + 13] = bArr[i18 + 14];
                        bArr2[i17 + 14] = bArr[i18 + 13];
                        bArr2[i17 + 15] = bArr[i18 + 12];
                        break;
                    case 6:
                        System.arraycopy(bArr, i18, bArr2, i17, 4);
                        bArr2[i17 + 4] = bArr[i18 + 7];
                        bArr2[i17 + 5] = bArr[i18 + 6];
                        bArr2[i17 + 6] = bArr[i18 + 5];
                        bArr2[i17 + 7] = bArr[i18 + 4];
                        System.arraycopy(bArr, i18 + 8, bArr2, i17 + 8, 4);
                        bArr2[i17 + 12] = bArr[i18 + 15];
                        bArr2[i17 + 13] = bArr[i18 + 14];
                        bArr2[i17 + 14] = bArr[i18 + 13];
                        bArr2[i17 + 15] = bArr[i18 + 12];
                        break;
                }
            }
        }
        return bArr2;
    }

    private static int flipUInt24(int i10) {
        byte[][] bArr = new byte[2];
        for (int i11 = 0; i11 < 2; i11++) {
            bArr[i11] = new byte[4];
        }
        byte[] bArr2 = bArr[0];
        bArr2[0] = (byte) (i10 & 7);
        bArr2[1] = (byte) ((i10 >> 3) & 7);
        bArr2[2] = (byte) ((i10 >> 6) & 7);
        bArr2[3] = (byte) ((i10 >> 9) & 7);
        byte[] bArr3 = bArr[1];
        byte b10 = (byte) ((i10 >> 12) & 7);
        bArr3[0] = b10;
        byte b11 = (byte) ((i10 >> 15) & 7);
        bArr3[1] = b11;
        byte b12 = (byte) ((i10 >> 18) & 7);
        bArr3[2] = b12;
        byte b13 = (byte) ((i10 >> 21) & 7);
        bArr3[3] = b13;
        return (b13 << 9) | (b11 << 3) | b10 | (b12 << 6) | (bArr2[0] << 12) | (bArr2[1] << 15) | (bArr2[2] << 18) | (bArr2[3] << 21);
    }

    private static void getBytesFromUInt24(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 & 255);
        bArr[i10 + 1] = (byte) ((65280 & i11) >> 8);
        bArr[i10 + 2] = (byte) ((i11 & Spanned.SPAN_PRIORITY) >> 16);
    }

    public static final int getInt(String str) {
        return getInt(str.getBytes());
    }

    private static int getUInt24(byte[] bArr, int i10) {
        return ((bArr[i10 + 2] & 255) << 16) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8);
    }

    public static final boolean isSet(int i10, int i11) {
        return (i10 & i11) == i11;
    }

    public static final int shiftCount(int i10) {
        int i11 = 0;
        if (i10 == 0) {
            return 0;
        }
        while ((i10 & 1) == 0) {
            i10 >>= 1;
            i11++;
            if (i11 > 32) {
                throw new Error(Integer.toHexString(i10));
            }
        }
        return i11;
    }

    public static final int getInt(byte[] bArr) {
        int i10 = bArr[0] & 255;
        if (bArr.length > 1) {
            i10 |= (bArr[1] & 255) << 8;
        }
        if (bArr.length > 2) {
            i10 |= (bArr[2] & 255) << 16;
        }
        return bArr.length > 3 ? i10 | ((bArr[3] & 255) << 24) : i10;
    }
}
