package org.tukaani.xz.common;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;
import org.tukaani.xz.CorruptedInputException;
import org.tukaani.xz.UnsupportedOptionsException;
import org.tukaani.xz.XZ;
import org.tukaani.xz.XZFormatException;

public class DecoderUtil extends Util {
    public static boolean areStreamFlagsEqual(StreamFlags streamFlags, StreamFlags streamFlags2) {
        return streamFlags.checkType == streamFlags2.checkType;
    }

    private static StreamFlags decodeStreamFlags(byte[] bArr, int i10) throws UnsupportedOptionsException {
        if (bArr[i10] == 0) {
            int i11 = i10 + 1;
            if ((bArr[i11] & 255) < 16) {
                StreamFlags streamFlags = new StreamFlags();
                streamFlags.checkType = bArr[i11];
                return streamFlags;
            }
        }
        throw new UnsupportedOptionsException();
    }

    public static StreamFlags decodeStreamFooter(byte[] bArr) throws IOException {
        byte b10 = bArr[10];
        byte[] bArr2 = XZ.FOOTER_MAGIC;
        if (b10 != bArr2[0] || bArr[11] != bArr2[1]) {
            throw new CorruptedInputException("XZ Stream Footer is corrupt");
        }
        if (!isCRC32Valid(bArr, 4, 6, 0)) {
            throw new CorruptedInputException("XZ Stream Footer is corrupt");
        }
        try {
            StreamFlags decodeStreamFlags = decodeStreamFlags(bArr, 8);
            decodeStreamFlags.backwardSize = 0L;
            for (int i10 = 0; i10 < 4; i10++) {
                decodeStreamFlags.backwardSize |= (bArr[i10 + 4] & 255) << (i10 * 8);
            }
            decodeStreamFlags.backwardSize = (decodeStreamFlags.backwardSize + 1) * 4;
            return decodeStreamFlags;
        } catch (UnsupportedOptionsException unused) {
            throw new UnsupportedOptionsException("Unsupported options in XZ Stream Footer");
        }
    }

    public static StreamFlags decodeStreamHeader(byte[] bArr) throws IOException {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = XZ.HEADER_MAGIC;
            if (i10 >= bArr2.length) {
                if (!isCRC32Valid(bArr, bArr2.length, 2, bArr2.length + 2)) {
                    throw new CorruptedInputException("XZ Stream Header is corrupt");
                }
                try {
                    return decodeStreamFlags(bArr, bArr2.length);
                } catch (UnsupportedOptionsException unused) {
                    throw new UnsupportedOptionsException("Unsupported options in XZ Stream Header");
                }
            }
            if (bArr[i10] != bArr2[i10]) {
                throw new XZFormatException();
            }
            i10++;
        }
    }

    public static long decodeVLI(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            throw new EOFException();
        }
        long j10 = read & 127;
        int i10 = 0;
        while ((read & 128) != 0) {
            i10++;
            if (i10 >= 9) {
                throw new CorruptedInputException();
            }
            read = inputStream.read();
            if (read == -1) {
                throw new EOFException();
            }
            if (read == 0) {
                throw new CorruptedInputException();
            }
            j10 |= (read & 127) << (i10 * 7);
        }
        return j10;
    }

    public static boolean isCRC32Valid(byte[] bArr, int i10, int i11, int i12) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i10, i11);
        long value = crc32.getValue();
        for (int i13 = 0; i13 < 4; i13++) {
            if (((byte) (value >>> (i13 * 8))) != bArr[i12 + i13]) {
                return false;
            }
        }
        return true;
    }
}
