package gn;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UTFDataFormatException;

public class a extends FilterInputStream {
    public a(InputStream in2) {
        super(in2);
    }

    public boolean c() throws IOException {
        int read = this.f92730in.read();
        if (read != -1) {
            return read != 0;
        }
        throw new EOFException();
    }

    public char d() throws IOException {
        int read = this.f92730in.read();
        int read2 = this.f92730in.read();
        if (read2 != -1) {
            return (char) (((read2 << 24) >>> 16) + ((read << 24) >>> 24));
        }
        throw new EOFException();
    }

    public final double e() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    public final float f() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    public String g() throws IOException {
        int read = this.f92730in.read();
        int read2 = this.f92730in.read();
        if (read2 == -1) {
            throw new EOFException();
        }
        int i10 = (read << 8) + read2;
        char[] cArr = new char[i10];
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            int h10 = h();
            int i13 = h10 >> 4;
            if (i13 < 8) {
                i11++;
                cArr[i12] = (char) h10;
                i12++;
            } else if (i13 == 12 || i13 == 13) {
                i11 += 2;
                if (i11 > i10) {
                    throw new UTFDataFormatException();
                }
                int h11 = h();
                if ((h11 & 192) != 128) {
                    throw new UTFDataFormatException();
                }
                cArr[i12] = (char) (((h10 & 31) << 6) | (h11 & 63));
                i12++;
            } else {
                if (i13 != 14) {
                    throw new UTFDataFormatException();
                }
                i11 += 3;
                if (i11 > i10) {
                    throw new UTFDataFormatException();
                }
                int h12 = h();
                int h13 = h();
                if ((h12 & 192) != 128 || (h13 & 192) != 128) {
                    throw new UTFDataFormatException();
                }
                cArr[i12] = (char) (((h10 & 15) << 12) | ((h12 & 63) << 6) | (h13 & 63));
                i12++;
            }
        }
        return new String(cArr, 0, i12);
    }

    public int h() throws IOException {
        int read = this.f92730in.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    public int j() throws IOException {
        int read = this.f92730in.read();
        int read2 = this.f92730in.read();
        if (read2 != -1) {
            return ((read2 << 24) >> 16) + ((read << 24) >> 24);
        }
        throw new EOFException();
    }

    public final int k(int n10) throws IOException {
        int i10 = 0;
        while (i10 < n10) {
            i10 += (int) skip(n10 - i10);
        }
        return n10;
    }

    public byte readByte() throws IOException {
        int read = this.f92730in.read();
        if (read != -1) {
            return (byte) read;
        }
        throw new EOFException();
    }

    public int readInt() throws IOException {
        int read;
        int read2;
        int read3;
        int read4;
        synchronized (this) {
            read = this.f92730in.read();
            read2 = this.f92730in.read();
            read3 = this.f92730in.read();
            read4 = this.f92730in.read();
        }
        if (read4 != -1) {
            return (read4 << 24) + ((read3 << 24) >>> 8) + ((read2 << 24) >>> 16) + ((read << 24) >>> 24);
        }
        throw new EOFException();
    }

    public long readLong() throws IOException {
        long read = this.f92730in.read();
        long read2 = this.f92730in.read();
        long read3 = this.f92730in.read();
        long read4 = this.f92730in.read();
        long read5 = this.f92730in.read();
        long read6 = this.f92730in.read();
        long read7 = this.f92730in.read();
        long read8 = this.f92730in.read();
        if (read8 != -1) {
            return (read8 << 56) + ((read7 << 56) >>> 8) + ((read6 << 56) >>> 16) + ((read5 << 56) >>> 24) + ((read4 << 56) >>> 32) + ((read3 << 56) >>> 40) + ((read2 << 56) >>> 48) + ((read << 56) >>> 56);
        }
        throw new EOFException();
    }

    public short readShort() throws IOException {
        int read = this.f92730in.read();
        int read2 = this.f92730in.read();
        if (read2 != -1) {
            return (short) ((((read2 << 24) >>> 16) + (read << 24)) >>> 24);
        }
        throw new EOFException();
    }
}
