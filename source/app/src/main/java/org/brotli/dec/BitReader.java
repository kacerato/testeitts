package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

final class BitReader {
    private static final int BYTE_BUFFER_SIZE = 4160;
    private static final int BYTE_READ_SIZE = 4096;
    private static final int CAPACITY = 1024;
    private static final int INT_BUFFER_SIZE = 1040;
    private static final int SLACK = 16;
    long accumulator;
    int bitOffset;
    private boolean endOfStreamReached;
    private InputStream input;
    private int intOffset;
    private final byte[] byteBuffer = new byte[BYTE_BUFFER_SIZE];
    private final int[] intBuffer = new int[1040];
    private final IntReader intReader = new IntReader();
    private int tailBytes = 0;

    public static void checkHealth(BitReader bitReader, boolean z10) {
        if (bitReader.endOfStreamReached) {
            int i10 = ((bitReader.intOffset << 2) + ((bitReader.bitOffset + 7) >> 3)) - 8;
            int i11 = bitReader.tailBytes;
            if (i10 > i11) {
                throw new BrotliRuntimeException("Read after end");
            }
            if (z10 && i10 != i11) {
                throw new BrotliRuntimeException("Unused bytes after end");
            }
        }
    }

    public static void close(BitReader bitReader) throws IOException {
        InputStream inputStream = bitReader.input;
        bitReader.input = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public static void copyBytes(BitReader bitReader, byte[] bArr, int i10, int i11) {
        if ((bitReader.bitOffset & 7) != 0) {
            throw new BrotliRuntimeException("Unaligned copyBytes");
        }
        while (true) {
            int i12 = bitReader.bitOffset;
            if (i12 == 64 || i11 == 0) {
                break;
            }
            bArr[i10] = (byte) (bitReader.accumulator >>> i12);
            bitReader.bitOffset = i12 + 8;
            i11--;
            i10++;
        }
        if (i11 == 0) {
            return;
        }
        int min = Math.min(intAvailable(bitReader), i11 >> 2);
        if (min > 0) {
            int i13 = min << 2;
            System.arraycopy(bitReader.byteBuffer, bitReader.intOffset << 2, bArr, i10, i13);
            i10 += i13;
            i11 -= i13;
            bitReader.intOffset += min;
        }
        if (i11 == 0) {
            return;
        }
        if (intAvailable(bitReader) <= 0) {
            while (i11 > 0) {
                try {
                    int read = bitReader.input.read(bArr, i10, i11);
                    if (read == -1) {
                        throw new BrotliRuntimeException("Unexpected end of input");
                    }
                    i10 += read;
                    i11 -= read;
                } catch (IOException e10) {
                    throw new BrotliRuntimeException("Failed to read input", e10);
                }
            }
            return;
        }
        fillBitWindow(bitReader);
        while (i11 != 0) {
            long j10 = bitReader.accumulator;
            int i14 = bitReader.bitOffset;
            bArr[i10] = (byte) (j10 >>> i14);
            bitReader.bitOffset = i14 + 8;
            i11--;
            i10++;
        }
        checkHealth(bitReader, false);
    }

    public static void fillBitWindow(BitReader bitReader) {
        int i10 = bitReader.bitOffset;
        if (i10 >= 32) {
            int[] iArr = bitReader.intBuffer;
            bitReader.intOffset = bitReader.intOffset + 1;
            bitReader.accumulator = (iArr[r3] << 32) | (bitReader.accumulator >>> 32);
            bitReader.bitOffset = i10 - 32;
        }
    }

    public static void init(BitReader bitReader, InputStream inputStream) {
        if (bitReader.input != null) {
            throw new IllegalStateException("Bit reader already has associated input stream");
        }
        IntReader.init(bitReader.intReader, bitReader.byteBuffer, bitReader.intBuffer);
        bitReader.input = inputStream;
        bitReader.accumulator = 0L;
        bitReader.bitOffset = 64;
        bitReader.intOffset = 1024;
        bitReader.endOfStreamReached = false;
        prepare(bitReader);
    }

    public static int intAvailable(BitReader bitReader) {
        return (bitReader.endOfStreamReached ? (bitReader.tailBytes + 3) >> 2 : 1024) - bitReader.intOffset;
    }

    public static void jumpToByteBoundary(BitReader bitReader) {
        int i10 = (64 - bitReader.bitOffset) & 7;
        if (i10 != 0 && readBits(bitReader, i10) != 0) {
            throw new BrotliRuntimeException("Corrupted padding bits");
        }
    }

    private static void prepare(BitReader bitReader) {
        readMoreInput(bitReader);
        checkHealth(bitReader, false);
        fillBitWindow(bitReader);
        fillBitWindow(bitReader);
    }

    public static int readBits(BitReader bitReader, int i10) {
        fillBitWindow(bitReader);
        long j10 = bitReader.accumulator;
        int i11 = bitReader.bitOffset;
        int i12 = ((int) (j10 >>> i11)) & ((1 << i10) - 1);
        bitReader.bitOffset = i11 + i10;
        return i12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0037, code lost:
    
        r4.endOfStreamReached = true;
        r4.tailBytes = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        r1 = r1 + 3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void readMoreInput(BitReader bitReader) {
        int i10 = bitReader.intOffset;
        if (i10 <= 1015) {
            return;
        }
        if (bitReader.endOfStreamReached) {
            if (intAvailable(bitReader) < -2) {
                throw new BrotliRuntimeException("No more input");
            }
            return;
        }
        int i11 = i10 << 2;
        int i12 = 4096 - i11;
        byte[] bArr = bitReader.byteBuffer;
        System.arraycopy(bArr, i11, bArr, 0, i12);
        bitReader.intOffset = 0;
        while (true) {
            if (i12 >= 4096) {
                break;
            }
            try {
                int read = bitReader.input.read(bitReader.byteBuffer, i12, 4096 - i12);
                if (read <= 0) {
                    break;
                } else {
                    i12 += read;
                }
            } catch (IOException e10) {
                throw new BrotliRuntimeException("Failed to read input", e10);
            }
        }
        IntReader.convert(bitReader.intReader, i12 >> 2);
    }

    public static void reload(BitReader bitReader) {
        if (bitReader.bitOffset == 64) {
            prepare(bitReader);
        }
    }
}
