package oh;

import fm.C13260d;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public class b1 extends g1 {

    public static final byte[] f98856f = new byte[0];

    public final int f98857d;

    public int f98858e;

    public b1(InputStream inputStream, int i10, int i11) {
        super(inputStream, i11);
        if (i10 <= 0) {
            if (i10 < 0) {
                throw new IllegalArgumentException("negative lengths not allowed");
            }
            d(true);
        }
        this.f98857d = i10;
        this.f98858e = i10;
    }

    public int e() {
        return this.f98858e;
    }

    public void f(byte[] bArr) throws IOException {
        int i10 = this.f98858e;
        if (i10 != bArr.length) {
            throw new IllegalArgumentException("buffer length not right for data");
        }
        if (i10 == 0) {
            return;
        }
        int c10 = c();
        int i11 = this.f98858e;
        if (i11 >= c10) {
            throw new IOException("corrupted stream - out of bounds length found: " + this.f98858e + " >= " + c10);
        }
        int h10 = i11 - C13260d.h(this.f98883b, bArr, 0, bArr.length);
        this.f98858e = h10;
        if (h10 == 0) {
            d(true);
            return;
        }
        throw new EOFException("DEF length " + this.f98857d + " object truncated by " + this.f98858e);
    }

    public byte[] g() throws IOException {
        if (this.f98858e == 0) {
            return f98856f;
        }
        int c10 = c();
        int i10 = this.f98858e;
        if (i10 >= c10) {
            throw new IOException("corrupted stream - out of bounds length found: " + this.f98858e + " >= " + c10);
        }
        byte[] bArr = new byte[i10];
        int h10 = i10 - C13260d.h(this.f98883b, bArr, 0, i10);
        this.f98858e = h10;
        if (h10 == 0) {
            d(true);
            return bArr;
        }
        throw new EOFException("DEF length " + this.f98857d + " object truncated by " + this.f98858e);
    }

    @Override
    public int read() throws IOException {
        if (this.f98858e == 0) {
            return -1;
        }
        int read = this.f98883b.read();
        if (read >= 0) {
            int i10 = this.f98858e - 1;
            this.f98858e = i10;
            if (i10 == 0) {
                d(true);
            }
            return read;
        }
        throw new EOFException("DEF length " + this.f98857d + " object truncated by " + this.f98858e);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f98858e;
        if (i12 == 0) {
            return -1;
        }
        int read = this.f98883b.read(bArr, i10, Math.min(i11, i12));
        if (read >= 0) {
            int i13 = this.f98858e - read;
            this.f98858e = i13;
            if (i13 == 0) {
                d(true);
            }
            return read;
        }
        throw new EOFException("DEF length " + this.f98857d + " object truncated by " + this.f98858e);
    }
}
