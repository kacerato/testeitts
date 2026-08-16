package zg;

import java.io.IOException;
import java.io.InputStream;

public class j extends InputStream {

    public static final int f131324f = 15;

    public InputStream f131325b;

    public long f131326c = 0;

    public byte[] f131327d = new byte[1];

    public long f131328e;

    public j(InputStream inputStream, long j10) {
        this.f131325b = inputStream;
        this.f131328e = j10;
    }

    public long c() {
        return this.f131326c;
    }

    @Override
    public void close() throws IOException {
        this.f131325b.close();
    }

    public int d(byte[] bArr) throws IOException {
        int read = this.f131325b.read(bArr);
        if (read == -1) {
            throw new IOException("Unexpected EOF reached when trying to read stream");
        }
        if (read == bArr.length || (read = e(bArr, read)) == bArr.length) {
            return read;
        }
        throw new IOException("Cannot read fully into byte buffer");
    }

    public final int e(byte[] bArr, int i10) throws IOException {
        int length = bArr.length - i10;
        int i11 = 0;
        for (int i12 = 0; i10 < bArr.length && i11 != -1 && i12 < 15; i12++) {
            i11 += this.f131325b.read(bArr, i10, length);
            if (i11 > 0) {
                i10 += i11;
                length -= i11;
            }
        }
        return i10;
    }

    @Override
    public int read() throws IOException {
        if (read(this.f131327d) == -1) {
            return -1;
        }
        return this.f131327d[0];
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        long j10 = this.f131328e;
        if (j10 != -1) {
            long j11 = this.f131326c;
            if (j11 >= j10) {
                return -1;
            }
            if (i11 > j10 - j11) {
                i11 = (int) (j10 - j11);
            }
        }
        int read = this.f131325b.read(bArr, i10, i11);
        if (read > 0) {
            this.f131326c += read;
        }
        return read;
    }
}
