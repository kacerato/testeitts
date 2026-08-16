package com.android.dx.util;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public final class ByteArray {
    private final byte[] bytes;
    private final int size;
    private final int start;

    public interface GetCursor {
        int getCursor();
    }

    public static class MyDataInputStream extends DataInputStream {
        private final MyInputStream wrapped;

        public MyDataInputStream(MyInputStream myInputStream) {
            super(myInputStream);
            this.wrapped = myInputStream;
        }
    }

    public ByteArray(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new NullPointerException("bytes == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (i11 >= i10) {
            if (i11 <= bArr.length) {
                this.bytes = bArr;
                this.start = i10;
                this.size = i11 - i10;
                return;
            }
            throw new IllegalArgumentException("end > bytes.length");
        }
        throw new IllegalArgumentException("end < start");
    }

    private void checkOffsets(int i10, int i11) {
        if (i10 < 0 || i11 < i10 || i11 > this.size) {
            throw new IllegalArgumentException("bad range: " + i10 + ClasspathEntry.DOT_DOT + i11 + "; actual size " + this.size);
        }
    }

    private int getByte0(int i10) {
        return this.bytes[this.start + i10];
    }

    public int getUnsignedByte0(int i10) {
        return this.bytes[this.start + i10] & 255;
    }

    public int getByte(int i10) {
        checkOffsets(i10, i10 + 1);
        return getByte0(i10);
    }

    public void getBytes(byte[] bArr, int i10) {
        int length = bArr.length - i10;
        int i11 = this.size;
        if (length < i11) {
            throw new IndexOutOfBoundsException("(out.length - offset) < size()");
        }
        System.arraycopy(this.bytes, this.start, bArr, i10, i11);
    }

    public int getInt(int i10) {
        checkOffsets(i10, i10 + 4);
        return getUnsignedByte0(i10 + 3) | (getByte0(i10) << 24) | (getUnsignedByte0(i10 + 1) << 16) | (getUnsignedByte0(i10 + 2) << 8);
    }

    public long getLong(int i10) {
        checkOffsets(i10, i10 + 8);
        return ((getUnsignedByte0(i10 + 7) | (getByte0(i10 + 4) << 24) | (getUnsignedByte0(i10 + 5) << 16) | (getUnsignedByte0(i10 + 6) << 8)) & 4294967295L) | (((((getByte0(i10) << 24) | (getUnsignedByte0(i10 + 1) << 16)) | (getUnsignedByte0(i10 + 2) << 8)) | getUnsignedByte0(i10 + 3)) << 32);
    }

    public int getShort(int i10) {
        checkOffsets(i10, i10 + 2);
        return getUnsignedByte0(i10 + 1) | (getByte0(i10) << 8);
    }

    public int getUnsignedByte(int i10) {
        checkOffsets(i10, i10 + 1);
        return getUnsignedByte0(i10);
    }

    public int getUnsignedShort(int i10) {
        checkOffsets(i10, i10 + 2);
        return getUnsignedByte0(i10 + 1) | (getUnsignedByte0(i10) << 8);
    }

    public MyDataInputStream makeDataInputStream() {
        return new MyDataInputStream(makeInputStream());
    }

    public MyInputStream makeInputStream() {
        return new MyInputStream();
    }

    public int size() {
        return this.size;
    }

    public ByteArray slice(int i10, int i11) {
        checkOffsets(i10, i11);
        byte[] bArr = this.bytes;
        int i12 = this.start;
        return new ByteArray(bArr, i10 + i12, i11 + i12);
    }

    public int underlyingOffset(int i10, byte[] bArr) {
        if (bArr == this.bytes) {
            return this.start + i10;
        }
        throw new IllegalArgumentException("wrong bytes");
    }

    public class MyInputStream extends InputStream {
        private int cursor = 0;
        private int mark = 0;

        public MyInputStream() {
        }

        @Override
        public int available() {
            return ByteArray.this.size - this.cursor;
        }

        @Override
        public void mark(int i10) {
            this.mark = this.cursor;
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read() throws IOException {
            if (this.cursor >= ByteArray.this.size) {
                return -1;
            }
            int unsignedByte0 = ByteArray.this.getUnsignedByte0(this.cursor);
            this.cursor++;
            return unsignedByte0;
        }

        @Override
        public void reset() {
            this.cursor = this.mark;
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) {
            if (i10 + i11 > bArr.length) {
                i11 = bArr.length - i10;
            }
            int i12 = ByteArray.this.size - this.cursor;
            if (i11 > i12) {
                i11 = i12;
            }
            System.arraycopy(ByteArray.this.bytes, this.cursor + ByteArray.this.start, bArr, i10, i11);
            this.cursor += i11;
            return i11;
        }
    }

    public ByteArray(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }
}
