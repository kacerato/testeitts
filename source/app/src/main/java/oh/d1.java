package oh;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public class d1 extends g1 {

    public int f98869d;

    public int f98870e;

    public boolean f98871f;

    public boolean f98872g;

    public d1(InputStream inputStream, int i10) throws IOException {
        super(inputStream, i10);
        this.f98871f = false;
        this.f98872g = true;
        this.f98869d = inputStream.read();
        int read = inputStream.read();
        this.f98870e = read;
        if (read < 0) {
            throw new EOFException();
        }
        e();
    }

    public final boolean e() {
        if (!this.f98871f && this.f98872g && this.f98869d == 0 && this.f98870e == 0) {
            this.f98871f = true;
            d(true);
        }
        return this.f98871f;
    }

    public void f(boolean z10) {
        this.f98872g = z10;
        e();
    }

    @Override
    public int read() throws IOException {
        if (e()) {
            return -1;
        }
        int read = this.f98883b.read();
        if (read < 0) {
            throw new EOFException();
        }
        int i10 = this.f98869d;
        this.f98869d = this.f98870e;
        this.f98870e = read;
        return i10;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f98872g || i11 < 3) {
            return super.read(bArr, i10, i11);
        }
        if (this.f98871f) {
            return -1;
        }
        int read = this.f98883b.read(bArr, i10 + 2, i11 - 2);
        if (read < 0) {
            throw new EOFException();
        }
        bArr[i10] = (byte) this.f98869d;
        bArr[i10 + 1] = (byte) this.f98870e;
        this.f98869d = this.f98883b.read();
        int read2 = this.f98883b.read();
        this.f98870e = read2;
        if (read2 >= 0) {
            return read + 2;
        }
        throw new EOFException();
    }
}
