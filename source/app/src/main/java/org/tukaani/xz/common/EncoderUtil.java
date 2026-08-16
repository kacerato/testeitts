package org.tukaani.xz.common;

import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.CRC32;

public class EncoderUtil extends Util {
    public static void encodeVLI(OutputStream outputStream, long j10) throws IOException {
        while (j10 >= 128) {
            outputStream.write((byte) (128 | j10));
            j10 >>>= 7;
        }
        outputStream.write((byte) j10);
    }

    public static void writeCRC32(OutputStream outputStream, byte[] bArr) throws IOException {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr);
        long value = crc32.getValue();
        for (int i10 = 0; i10 < 4; i10++) {
            outputStream.write((byte) (value >>> (i10 * 8)));
        }
    }
}
