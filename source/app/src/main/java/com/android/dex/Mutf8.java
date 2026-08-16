package com.android.dex;

import H2.c;
import Sg.b;
import com.android.dex.util.ByteInput;
import java.io.UTFDataFormatException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public final class Mutf8 {
    private Mutf8() {
    }

    private static long countBytes(String str, boolean z10) throws UTFDataFormatException {
        int length = str.length();
        long j10 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            j10 += (charAt == 0 || charAt > '\u007f') ? charAt <= '\u07ff' ? 2L : 3L : 1L;
            if (z10 && j10 > b.f23266s) {
                throw new UTFDataFormatException("String more than 65535 UTF bytes long");
            }
        }
        return j10;
    }

    public static String decode(ByteInput byteInput, char[] cArr) throws UTFDataFormatException {
        int i10;
        int i11 = 0;
        while (true) {
            char readByte = (char) (byteInput.readByte() & 255);
            if (readByte == 0) {
                return new String(cArr, 0, i11);
            }
            cArr[i11] = readByte;
            if (readByte < '\u0080') {
                i11++;
            } else {
                if ((readByte & '\u00e0') == 192) {
                    byte readByte2 = byteInput.readByte();
                    if ((readByte2 & Opcodes.OPC_checkcast) != 128) {
                        throw new UTFDataFormatException("bad second byte");
                    }
                    i10 = i11 + 1;
                    cArr[i11] = (char) (((readByte & c.f7959b) << 6) | (readByte2 & Opcodes.OPC_lstore_0));
                } else {
                    if ((readByte & '\u00f0') != 224) {
                        throw new UTFDataFormatException("bad byte");
                    }
                    byte readByte3 = byteInput.readByte();
                    byte readByte4 = byteInput.readByte();
                    if ((readByte3 & Opcodes.OPC_checkcast) != 128 || (readByte4 & Opcodes.OPC_checkcast) != 128) {
                        break;
                    }
                    i10 = i11 + 1;
                    cArr[i11] = (char) (((readByte & 15) << 12) | ((readByte3 & Opcodes.OPC_lstore_0) << 6) | (readByte4 & Opcodes.OPC_lstore_0));
                }
                i11 = i10;
            }
        }
        throw new UTFDataFormatException("bad second or third byte");
    }

    public static void encode(byte[] bArr, int i10, String str) {
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            char charAt = str.charAt(i11);
            if (charAt != 0 && charAt <= '\u007f') {
                bArr[i10] = (byte) charAt;
                i10++;
            } else if (charAt <= '\u07ff') {
                int i12 = i10 + 1;
                bArr[i10] = (byte) (((charAt >> 6) & 31) | 192);
                i10 += 2;
                bArr[i12] = (byte) ((charAt & '?') | 128);
            } else {
                bArr[i10] = (byte) (((charAt >> '\f') & 15) | 224);
                int i13 = i10 + 2;
                bArr[i10 + 1] = (byte) (((charAt >> 6) & 63) | 128);
                i10 += 3;
                bArr[i13] = (byte) ((charAt & '?') | 128);
            }
        }
    }

    public static byte[] encode(String str) throws UTFDataFormatException {
        byte[] bArr = new byte[(int) countBytes(str, true)];
        encode(bArr, 0, str);
        return bArr;
    }
}
