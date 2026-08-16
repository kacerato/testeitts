package net.jpountz.lz4;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Checksum;

public class C14388a extends FilterInputStream {

    public static final boolean f97983j = false;

    public final j f97984b;

    public final Checksum f97985c;

    public final boolean f97986d;

    public byte[] f97987e;

    public byte[] f97988f;

    public int f97989g;

    public int f97990h;

    public boolean f97991i;

    public C14388a(InputStream inputStream, j jVar, Checksum checksum, boolean z10) {
        super(inputStream);
        this.f97984b = jVar;
        this.f97985c = checksum;
        this.f97986d = z10;
        this.f97987e = new byte[0];
        this.f97988f = new byte[C14389b.f97994m];
        this.f97989g = 0;
        this.f97990h = 0;
        this.f97991i = false;
    }

    public final void a(byte[] bArr, int i10) throws IOException {
        if (!d(bArr, i10)) {
            throw new EOFException(k.f98026p);
        }
    }

    @Override
    public int available() throws IOException {
        return this.f97989g - this.f97990h;
    }

    public final void c() throws IOException {
        if (!d(this.f97988f, C14389b.f97994m)) {
            if (this.f97986d) {
                throw new EOFException(k.f98026p);
            }
            this.f97991i = true;
            return;
        }
        int i10 = 0;
        while (true) {
            int i11 = C14389b.f97993l;
            if (i10 >= i11) {
                byte[] bArr = this.f97988f;
                byte b10 = bArr[i11];
                int i12 = b10 & 240;
                int i13 = (b10 & 15) + 10;
                if (i12 != 16 && i12 != 32) {
                    throw new IOException("Stream is corrupted");
                }
                int i14 = net.jpountz.util.c.i(bArr, i11 + 1);
                this.f97989g = net.jpountz.util.c.i(this.f97988f, i11 + 5);
                int i15 = net.jpountz.util.c.i(this.f97988f, i11 + 9);
                int i16 = this.f97989g;
                if (i16 > (1 << i13) || i16 < 0 || i14 < 0 || ((i16 == 0 && i14 != 0) || ((i16 != 0 && i14 == 0) || (i12 == 16 && i16 != i14)))) {
                    throw new IOException("Stream is corrupted");
                }
                if (i16 == 0 && i14 == 0) {
                    if (i15 != 0) {
                        throw new IOException("Stream is corrupted");
                    }
                    if (this.f97986d) {
                        this.f97991i = true;
                        return;
                    } else {
                        c();
                        return;
                    }
                }
                byte[] bArr2 = this.f97987e;
                if (bArr2.length < i16) {
                    this.f97987e = new byte[Math.max(i16, (bArr2.length * 3) / 2)];
                }
                if (i12 == 16) {
                    a(this.f97987e, this.f97989g);
                } else {
                    if (i12 != 32) {
                        throw new AssertionError();
                    }
                    byte[] bArr3 = this.f97988f;
                    if (bArr3.length < i14) {
                        this.f97988f = new byte[Math.max(i14, (bArr3.length * 3) / 2)];
                    }
                    a(this.f97988f, i14);
                    try {
                        if (i14 != this.f97984b.a(this.f97988f, 0, this.f97987e, 0, this.f97989g)) {
                            throw new IOException("Stream is corrupted");
                        }
                    } catch (LZ4Exception e10) {
                        throw new IOException("Stream is corrupted", e10);
                    }
                }
                this.f97985c.reset();
                this.f97985c.update(this.f97987e, 0, this.f97989g);
                if (((int) this.f97985c.getValue()) != i15) {
                    throw new IOException("Stream is corrupted");
                }
                this.f97990h = 0;
                return;
            }
            if (this.f97988f[i10] != C14389b.f97992k[i10]) {
                throw new IOException("Stream is corrupted");
            }
            i10++;
        }
    }

    public final boolean d(byte[] bArr, int i10) throws IOException {
        int i11 = 0;
        while (i11 < i10) {
            int read = this.f92730in.read(bArr, i11, i10 - i11);
            if (read < 0) {
                return false;
            }
            i11 += read;
        }
        return true;
    }

    @Override
    public void mark(int i10) {
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    @Override
    public int read() throws IOException {
        if (this.f97991i) {
            return -1;
        }
        if (this.f97990h == this.f97989g) {
            c();
        }
        if (this.f97991i) {
            return -1;
        }
        byte[] bArr = this.f97987e;
        int i10 = this.f97990h;
        this.f97990h = i10 + 1;
        return bArr[i10] & 255;
    }

    @Override
    public void reset() throws IOException {
        throw new IOException("mark/reset not supported");
    }

    @Override
    public long skip(long j10) throws IOException {
        if (j10 <= 0 || this.f97991i) {
            return 0L;
        }
        if (this.f97990h == this.f97989g) {
            c();
        }
        if (this.f97991i) {
            return 0L;
        }
        int min = (int) Math.min(j10, this.f97989g - this.f97990h);
        this.f97990h += min;
        return min;
    }

    public String toString() {
        return getClass().getSimpleName() + "(in=" + ((Object) this.f92730in) + ", decompressor=" + ((Object) this.f97984b) + ", checksum=" + ((Object) this.f97985c) + ")";
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        net.jpountz.util.c.c(bArr, i10, i11);
        if (this.f97991i) {
            return -1;
        }
        if (this.f97990h == this.f97989g) {
            c();
        }
        if (this.f97991i) {
            return -1;
        }
        int min = Math.min(i11, this.f97989g - this.f97990h);
        System.arraycopy(this.f97987e, this.f97990h, bArr, i10, min);
        this.f97990h += min;
        return min;
    }

    public C14388a(InputStream inputStream, j jVar, Checksum checksum) {
        this(inputStream, jVar, checksum, true);
    }

    public C14388a(InputStream inputStream, j jVar) {
        this(inputStream, jVar, net.jpountz.xxhash.t.b().i(C14389b.f98000s).c(), true);
    }

    public C14388a(InputStream inputStream, boolean z10) {
        this(inputStream, i.e().d(), net.jpountz.xxhash.t.b().i(C14389b.f98000s).c(), z10);
    }

    public C14388a(InputStream inputStream) {
        this(inputStream, i.e().d());
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
