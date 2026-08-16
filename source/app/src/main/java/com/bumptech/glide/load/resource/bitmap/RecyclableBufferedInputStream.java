package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class RecyclableBufferedInputStream extends FilterInputStream {

    public volatile byte[] f59375b;

    public int f59376c;

    public int f59377d;

    public int f59378e;

    public int f59379f;

    public final F.b f59380g;

    public static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        public InvalidMarkException(String str) {
            super(str);
        }
    }

    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull F.b bVar) {
        this(inputStream, bVar, 65536);
    }

    public static IOException d() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public final int a(InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = this.f59378e;
        if (i10 != -1) {
            int i11 = this.f59379f - i10;
            int i12 = this.f59377d;
            if (i11 < i12) {
                if (i10 == 0 && i12 > bArr.length && this.f59376c == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i12) {
                        i12 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f59380g.c(i12, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f59375b = bArr2;
                    this.f59380g.put(bArr);
                    bArr = bArr2;
                } else if (i10 > 0) {
                    System.arraycopy(bArr, i10, bArr, 0, bArr.length - i10);
                }
                int i13 = this.f59379f - this.f59378e;
                this.f59379f = i13;
                this.f59378e = 0;
                this.f59376c = 0;
                int read = inputStream.read(bArr, i13, bArr.length - i13);
                int i14 = this.f59379f;
                if (read > 0) {
                    i14 += read;
                }
                this.f59376c = i14;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f59378e = -1;
            this.f59379f = 0;
            this.f59376c = read2;
        }
        return read2;
    }

    @Override
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = this.f92730in;
        if (this.f59375b == null || inputStream == null) {
            throw d();
        }
        return (this.f59376c - this.f59379f) + inputStream.available();
    }

    public synchronized void c() {
        this.f59377d = this.f59375b.length;
    }

    @Override
    public void close() throws IOException {
        if (this.f59375b != null) {
            this.f59380g.put(this.f59375b);
            this.f59375b = null;
        }
        InputStream inputStream = this.f92730in;
        this.f92730in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override
    public synchronized void mark(int i10) {
        this.f59377d = Math.max(this.f59377d, i10);
        this.f59378e = this.f59379f;
    }

    @Override
    public boolean markSupported() {
        return true;
    }

    @Override
    public synchronized int read() throws IOException {
        byte[] bArr = this.f59375b;
        InputStream inputStream = this.f92730in;
        if (bArr != null && inputStream != null) {
            if (this.f59379f >= this.f59376c && a(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.f59375b && (bArr = this.f59375b) == null) {
                throw d();
            }
            int i10 = this.f59376c;
            int i11 = this.f59379f;
            if (i10 - i11 <= 0) {
                return -1;
            }
            this.f59379f = i11 + 1;
            return bArr[i11] & 255;
        }
        throw d();
    }

    public synchronized void release() {
        if (this.f59375b != null) {
            this.f59380g.put(this.f59375b);
            this.f59375b = null;
        }
    }

    @Override
    public synchronized void reset() throws IOException {
        if (this.f59375b == null) {
            throw new IOException("Stream is closed");
        }
        int i10 = this.f59378e;
        if (-1 == i10) {
            throw new InvalidMarkException("Mark has been invalidated, pos: " + this.f59379f + " markLimit: " + this.f59377d);
        }
        this.f59379f = i10;
    }

    @Override
    public synchronized long skip(long j10) throws IOException {
        if (j10 < 1) {
            return 0L;
        }
        byte[] bArr = this.f59375b;
        if (bArr == null) {
            throw d();
        }
        InputStream inputStream = this.f92730in;
        if (inputStream == null) {
            throw d();
        }
        int i10 = this.f59376c;
        int i11 = this.f59379f;
        if (i10 - i11 >= j10) {
            this.f59379f = (int) (i11 + j10);
            return j10;
        }
        long j11 = i10 - i11;
        this.f59379f = i10;
        if (this.f59378e == -1 || j10 > this.f59377d) {
            return j11 + inputStream.skip(j10 - j11);
        }
        if (a(inputStream, bArr) == -1) {
            return j11;
        }
        int i12 = this.f59376c;
        int i13 = this.f59379f;
        if (i12 - i13 >= j10 - j11) {
            this.f59379f = (int) ((i13 + j10) - j11);
            return j10;
        }
        long j12 = (j11 + i12) - i13;
        this.f59379f = i12;
        return j12;
    }

    @VisibleForTesting
    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull F.b bVar, int i10) {
        super(inputStream);
        this.f59378e = -1;
        this.f59380g = bVar;
        this.f59375b = (byte[]) bVar.c(i10, byte[].class);
    }

    @Override
    public synchronized int read(@NonNull byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        byte[] bArr2 = this.f59375b;
        if (bArr2 == null) {
            throw d();
        }
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = this.f92730in;
        if (inputStream != null) {
            int i14 = this.f59379f;
            int i15 = this.f59376c;
            if (i14 < i15) {
                int i16 = i15 - i14 >= i11 ? i11 : i15 - i14;
                System.arraycopy(bArr2, i14, bArr, i10, i16);
                this.f59379f += i16;
                if (i16 == i11 || inputStream.available() == 0) {
                    return i16;
                }
                i10 += i16;
                i12 = i11 - i16;
            } else {
                i12 = i11;
            }
            while (true) {
                if (this.f59378e == -1 && i12 >= bArr2.length) {
                    i13 = inputStream.read(bArr, i10, i12);
                    if (i13 == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                } else {
                    if (a(inputStream, bArr2) == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                    if (bArr2 != this.f59375b && (bArr2 = this.f59375b) == null) {
                        throw d();
                    }
                    int i17 = this.f59376c;
                    int i18 = this.f59379f;
                    i13 = i17 - i18 >= i12 ? i12 : i17 - i18;
                    System.arraycopy(bArr2, i18, bArr, i10, i13);
                    this.f59379f += i13;
                }
                i12 -= i13;
                if (i12 == 0) {
                    return i11;
                }
                if (inputStream.available() == 0) {
                    return i11 - i12;
                }
                i10 += i13;
            }
        } else {
            throw d();
        }
    }
}
