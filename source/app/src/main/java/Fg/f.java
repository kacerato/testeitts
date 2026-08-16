package Fg;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import net.lingala.zip4j.exception.ZipException;

public class f {

    public final byte[] f6826a = new byte[2];

    public final byte[] f6827b = new byte[4];

    public final byte[] f6828c = new byte[8];

    public final void a(InputStream inputStream, byte[] bArr, int i10) throws IOException {
        if (h.m(inputStream, bArr, 0, i10) != i10) {
            throw new ZipException("Could not fill buffer");
        }
    }

    public int b(InputStream inputStream) throws IOException {
        a(inputStream, this.f6827b, 4);
        return d(this.f6827b);
    }

    public int c(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.f6827b);
        return d(this.f6827b);
    }

    public int d(byte[] bArr) {
        return e(bArr, 0);
    }

    public int e(byte[] bArr, int i10) {
        return ((((bArr[i10 + 3] & 255) << 8) | (bArr[i10 + 2] & 255)) << 16) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8);
    }

    public long f(InputStream inputStream) throws IOException {
        byte[] bArr = this.f6828c;
        a(inputStream, bArr, bArr.length);
        return j(this.f6828c, 0);
    }

    public long g(InputStream inputStream, int i10) throws IOException {
        n(this.f6828c);
        a(inputStream, this.f6828c, i10);
        return j(this.f6828c, 0);
    }

    public long h(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.f6828c);
        return j(this.f6828c, 0);
    }

    public long i(RandomAccessFile randomAccessFile, int i10) throws IOException {
        n(this.f6828c);
        randomAccessFile.readFully(this.f6828c, 0, i10);
        return j(this.f6828c, 0);
    }

    public long j(byte[] bArr, int i10) {
        if (bArr.length - i10 < 8) {
            n(this.f6828c);
        }
        System.arraycopy(bArr, i10, this.f6828c, 0, Math.min(bArr.length - i10, 8));
        byte[] bArr2 = this.f6828c;
        return (bArr2[0] & 255) | ((((((((((((((bArr2[7] & 255) << 8) | (bArr2[6] & 255)) << 8) | (bArr2[5] & 255)) << 8) | (bArr2[4] & 255)) << 8) | (bArr2[3] & 255)) << 8) | (bArr2[2] & 255)) << 8) | (bArr2[1] & 255)) << 8);
    }

    public int k(InputStream inputStream) throws IOException {
        byte[] bArr = this.f6826a;
        a(inputStream, bArr, bArr.length);
        return m(this.f6826a, 0);
    }

    public int l(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.f6826a);
        return m(this.f6826a, 0);
    }

    public int m(byte[] bArr, int i10) {
        return ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
    }

    public final void n(byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
    }

    public void o(OutputStream outputStream, int i10) throws IOException {
        p(this.f6827b, 0, i10);
        outputStream.write(this.f6827b);
    }

    public void p(byte[] bArr, int i10, int i11) {
        bArr[i10 + 3] = (byte) (i11 >>> 24);
        bArr[i10 + 2] = (byte) (i11 >>> 16);
        bArr[i10 + 1] = (byte) (i11 >>> 8);
        bArr[i10] = (byte) (i11 & 255);
    }

    public void q(OutputStream outputStream, long j10) throws IOException {
        r(this.f6828c, 0, j10);
        outputStream.write(this.f6828c);
    }

    public void r(byte[] bArr, int i10, long j10) {
        bArr[i10 + 7] = (byte) (j10 >>> 56);
        bArr[i10 + 6] = (byte) (j10 >>> 48);
        bArr[i10 + 5] = (byte) (j10 >>> 40);
        bArr[i10 + 4] = (byte) (j10 >>> 32);
        bArr[i10 + 3] = (byte) (j10 >>> 24);
        bArr[i10 + 2] = (byte) (j10 >>> 16);
        bArr[i10 + 1] = (byte) (j10 >>> 8);
        bArr[i10] = (byte) (j10 & 255);
    }

    public void s(OutputStream outputStream, int i10) throws IOException {
        t(this.f6826a, 0, i10);
        outputStream.write(this.f6826a);
    }

    public void t(byte[] bArr, int i10, int i11) {
        bArr[i10 + 1] = (byte) (i11 >>> 8);
        bArr[i10] = (byte) (i11 & 255);
    }
}
