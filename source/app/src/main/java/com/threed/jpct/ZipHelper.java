package com.threed.jpct;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

class ZipHelper {
    private static byte[] buffer = new byte[1024];

    public static int[] byteArrayToInt(byte[] bArr) {
        int[] iArr = new int[(bArr.length + 3) >> 2];
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = bArr[i10] << 24;
            int i13 = i10 + 1;
            if (i13 < length) {
                i12 |= (bArr[i13] & 255) << 16;
            }
            int i14 = i10 + 2;
            if (i14 < length) {
                i12 |= (bArr[i14] & 255) << 8;
            }
            int i15 = i10 + 3;
            if (i15 < length) {
                i12 |= bArr[i15] & 255;
            }
            iArr[i11] = i12;
            i10 += 4;
            i11++;
        }
        return iArr;
    }

    public static byte[] intToByteArray(int[] iArr) {
        byte[] bArr = new byte[iArr.length << 2];
        int i10 = 0;
        for (int i11 : iArr) {
            bArr[i10] = (byte) (i11 >>> 24);
            bArr[i10 + 1] = (byte) (i11 >>> 16);
            int i12 = i10 + 3;
            bArr[i10 + 2] = (byte) (i11 >>> 8);
            i10 += 4;
            bArr[i12] = (byte) i11;
        }
        return bArr;
    }

    public static synchronized int[] unzip(byte[] bArr) {
        int read;
        int[] byteArrayToInt;
        synchronized (ZipHelper.class) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length << 1);
                try {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                    do {
                        read = gZIPInputStream.read(buffer);
                        if (read != -1) {
                            byteArrayOutputStream.write(buffer, 0, read);
                        }
                    } while (read >= 0);
                    gZIPInputStream.close();
                    if (Logger.isDebugEnabled()) {
                        Logger.log("Uncompressed " + bArr.length + " bytes to " + byteArrayOutputStream.size() + " bytes in " + (System.currentTimeMillis() - currentTimeMillis) + "ms!", 3);
                    }
                    byteArrayToInt = byteArrayToInt(byteArrayOutputStream.toByteArray());
                } catch (Exception e10) {
                    throw new RuntimeException(e10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return byteArrayToInt;
    }

    public static byte[] zip(int[] iArr) {
        byte[] intToByteArray = intToByteArray(iArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(iArr.length);
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(intToByteArray, 0, intToByteArray.length);
            gZIPOutputStream.close();
            if (Logger.isDebugEnabled()) {
                Logger.log("Compressed " + (iArr.length << 2) + " bytes to " + byteArrayOutputStream.size() + " bytes!", 3);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
