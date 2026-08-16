package com.android.apksig.internal.asn1.ber;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class InputStreamBerDataValueReader implements BerDataValueReader {
    private final InputStream mIn;

    public static class RecordingInputStream extends InputStream {
        private final ByteArrayOutputStream mBuf;
        private final InputStream mIn;

        @Override
        public int available() throws IOException {
            return super.available();
        }

        @Override
        public void close() throws IOException {
            super.close();
        }

        public int getReadByteCount() {
            return this.mBuf.size();
        }

        public byte[] getReadBytes() {
            return this.mBuf.toByteArray();
        }

        @Override
        public synchronized void mark(int i10) {
        }

        @Override
        public boolean markSupported() {
            return false;
        }

        @Override
        public int read() throws IOException {
            int read = this.mIn.read();
            if (read != -1) {
                this.mBuf.write(read);
            }
            return read;
        }

        @Override
        public synchronized void reset() throws IOException {
            throw new IOException("mark/reset not supported");
        }

        @Override
        public long skip(long j10) throws IOException {
            if (j10 <= 0) {
                return this.mIn.skip(j10);
            }
            byte[] bArr = new byte[4096];
            int read = this.mIn.read(bArr, 0, (int) Math.min(4096, j10));
            if (read > 0) {
                this.mBuf.write(bArr, 0, read);
            }
            if (read < 0) {
                return 0L;
            }
            return read;
        }

        private RecordingInputStream(InputStream inputStream) {
            this.mIn = inputStream;
            this.mBuf = new ByteArrayOutputStream();
        }

        @Override
        public int read(byte[] bArr) throws IOException {
            int read = this.mIn.read(bArr);
            if (read > 0) {
                this.mBuf.write(bArr, 0, read);
            }
            return read;
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int read = this.mIn.read(bArr, i10, i11);
            if (read > 0) {
                this.mBuf.write(bArr, i10, read);
            }
            return read;
        }
    }

    public InputStreamBerDataValueReader(InputStream inputStream) {
        if (inputStream == null) {
            throw new NullPointerException("in == null");
        }
        this.mIn = inputStream;
    }

    private static int readHighTagNumber(InputStream inputStream) throws IOException, BerDataValueFormatException {
        int read;
        int i10 = 0;
        do {
            read = inputStream.read();
            if (read == -1) {
                throw new BerDataValueFormatException("Truncated tag number");
            }
            if (i10 > 16777215) {
                throw new BerDataValueFormatException("Tag number too large");
            }
            i10 = (i10 << 7) | (read & 127);
        } while ((read & 128) != 0);
        return i10;
    }

    private static int readLongFormLength(InputStream inputStream, int i10) throws IOException, BerDataValueFormatException {
        int i11 = i10 & 127;
        if (i11 > 4) {
            throw new BerDataValueFormatException("Length too large: " + i11 + " bytes");
        }
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int read = inputStream.read();
            if (read == -1) {
                throw new BerDataValueFormatException("Truncated length");
            }
            if (i12 > 8388607) {
                throw new BerDataValueFormatException("Length too large");
            }
            i12 = (i12 << 8) | (read & 255);
        }
        return i12;
    }

    private static int readShortFormLength(int i10) {
        return i10 & 127;
    }

    private static int readTagNumber(InputStream inputStream, int i10) throws IOException, BerDataValueFormatException {
        int tagNumber = BerEncoding.getTagNumber((byte) i10);
        return tagNumber == 31 ? readHighTagNumber(inputStream) : tagNumber;
    }

    private static int skipConstructedIndefiniteLengthContents(RecordingInputStream recordingInputStream) throws BerDataValueFormatException {
        int readByteCount = recordingInputStream.getReadByteCount();
        while (true) {
            BerDataValue readDataValue = readDataValue(recordingInputStream);
            if (readDataValue == null) {
                throw new BerDataValueFormatException("Truncated indefinite-length contents: " + (recordingInputStream.getReadByteCount() - readByteCount) + " bytes read");
            }
            if (recordingInputStream.getReadByteCount() <= 0) {
                throw new BerDataValueFormatException("Indefinite-length contents too long");
            }
            ByteBuffer encoded = readDataValue.getEncoded();
            if (encoded.remaining() == 2 && encoded.get(0) == 0 && encoded.get(1) == 0) {
                return (recordingInputStream.getReadByteCount() - readByteCount) - 2;
            }
        }
    }

    private static void skipDefiniteLengthContents(InputStream inputStream, int i10) throws IOException, BerDataValueFormatException {
        long j10 = 0;
        while (i10 > 0) {
            int skip = (int) inputStream.skip(i10);
            if (skip <= 0) {
                throw new BerDataValueFormatException("Truncated definite-length contents: " + j10 + " bytes read, " + i10 + " missing");
            }
            i10 -= skip;
            j10 += skip;
        }
    }

    private static int skipPrimitiveIndefiniteLengthContents(InputStream inputStream) throws IOException, BerDataValueFormatException {
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                throw new BerDataValueFormatException("Truncated indefinite-length contents: " + i10 + " bytes read");
            }
            int i11 = i10 + 1;
            if (i11 < 0) {
                throw new BerDataValueFormatException("Indefinite-length contents too long");
            }
            if (read != 0) {
                z10 = false;
            } else {
                if (z10) {
                    return i10 - 1;
                }
                z10 = true;
            }
            i10 = i11;
        }
    }

    @Override
    public BerDataValue readDataValue() throws BerDataValueFormatException {
        return readDataValue(this.mIn);
    }

    private static BerDataValue readDataValue(InputStream inputStream) throws BerDataValueFormatException {
        int readByteCount;
        int skipPrimitiveIndefiniteLengthContents;
        RecordingInputStream recordingInputStream = new RecordingInputStream(inputStream);
        try {
            int read = recordingInputStream.read();
            if (read == -1) {
                return null;
            }
            int readTagNumber = readTagNumber(recordingInputStream, read);
            int read2 = recordingInputStream.read();
            if (read2 != -1) {
                byte b10 = (byte) read;
                boolean isConstructed = BerEncoding.isConstructed(b10);
                if ((read2 & 128) == 0) {
                    skipPrimitiveIndefiniteLengthContents = readShortFormLength(read2);
                    readByteCount = recordingInputStream.getReadByteCount();
                    skipDefiniteLengthContents(recordingInputStream, skipPrimitiveIndefiniteLengthContents);
                } else if ((read2 & 255) != 128) {
                    skipPrimitiveIndefiniteLengthContents = readLongFormLength(recordingInputStream, read2);
                    readByteCount = recordingInputStream.getReadByteCount();
                    skipDefiniteLengthContents(recordingInputStream, skipPrimitiveIndefiniteLengthContents);
                } else {
                    readByteCount = recordingInputStream.getReadByteCount();
                    if (isConstructed) {
                        skipPrimitiveIndefiniteLengthContents = skipConstructedIndefiniteLengthContents(recordingInputStream);
                    } else {
                        skipPrimitiveIndefiniteLengthContents = skipPrimitiveIndefiniteLengthContents(recordingInputStream);
                    }
                }
                byte[] readBytes = recordingInputStream.getReadBytes();
                return new BerDataValue(ByteBuffer.wrap(readBytes), ByteBuffer.wrap(readBytes, readByteCount, skipPrimitiveIndefiniteLengthContents), BerEncoding.getTagClass(b10), isConstructed, readTagNumber);
            }
            throw new BerDataValueFormatException("Missing length");
        } catch (IOException e10) {
            throw new BerDataValueFormatException("Failed to read data value", e10);
        }
    }
}
