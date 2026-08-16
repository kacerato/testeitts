package Qi;

import Bi.C2376h;
import Bi.U;
import Bi.Y;
import Ti.InterfaceC3090a;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.io.CipherIOException;
import org.bouncycastle.crypto.io.InvalidCipherTextIOException;

public class a extends FilterInputStream {

    public static final int f22415n = 2048;

    public U f22416b;

    public byte[] f22417c;

    public C2376h f22418d;

    public Y f22419e;

    public InterfaceC3090a f22420f;

    public byte[] f22421g;

    public byte[] f22422h;

    public int f22423i;

    public int f22424j;

    public boolean f22425k;

    public long f22426l;

    public int f22427m;

    public a(InputStream inputStream, C2376h c2376h) {
        this(inputStream, c2376h, 2048);
    }

    public final void a(int i10, boolean z10) {
        if (z10) {
            C2376h c2376h = this.f22418d;
            if (c2376h != null) {
                i10 = c2376h.c(i10);
            } else {
                InterfaceC3090a interfaceC3090a = this.f22420f;
                if (interfaceC3090a != null) {
                    i10 = interfaceC3090a.h(i10);
                }
            }
        } else {
            C2376h c2376h2 = this.f22418d;
            if (c2376h2 != null) {
                i10 = c2376h2.e(i10);
            } else {
                InterfaceC3090a interfaceC3090a2 = this.f22420f;
                if (interfaceC3090a2 != null) {
                    i10 = interfaceC3090a2.g(i10);
                }
            }
        }
        byte[] bArr = this.f22421g;
        if (bArr == null || bArr.length < i10) {
            this.f22421g = new byte[i10];
        }
    }

    @Override
    public int available() throws IOException {
        return this.f22424j - this.f22423i;
    }

    public final void c() throws IOException {
        int c10;
        try {
            this.f22425k = true;
            a(0, true);
            C2376h c2376h = this.f22418d;
            if (c2376h != null) {
                c10 = c2376h.a(this.f22421g, 0);
            } else {
                InterfaceC3090a interfaceC3090a = this.f22420f;
                if (interfaceC3090a == null) {
                    this.f22424j = 0;
                    return;
                }
                c10 = interfaceC3090a.c(this.f22421g, 0);
            }
            this.f22424j = c10;
        } catch (InvalidCipherTextException e10) {
            throw new InvalidCipherTextIOException("Error finalising cipher", e10);
        } catch (Exception e11) {
            throw new IOException("Error finalising cipher " + ((Object) e11));
        }
    }

    @Override
    public void close() throws IOException {
        try {
            this.f92730in.close();
            this.f22423i = 0;
            this.f22424j = 0;
            this.f22427m = 0;
            this.f22426l = 0L;
            byte[] bArr = this.f22422h;
            if (bArr != null) {
                org.bouncycastle.util.a.e0(bArr, (byte) 0);
                this.f22422h = null;
            }
            byte[] bArr2 = this.f22421g;
            if (bArr2 != null) {
                org.bouncycastle.util.a.e0(bArr2, (byte) 0);
                this.f22421g = null;
            }
            org.bouncycastle.util.a.e0(this.f22417c, (byte) 0);
        } finally {
            if (!this.f22425k) {
                c();
            }
        }
    }

    public final int d() throws IOException {
        if (this.f22425k) {
            return -1;
        }
        this.f22423i = 0;
        this.f22424j = 0;
        while (true) {
            int i10 = this.f22424j;
            if (i10 != 0) {
                return i10;
            }
            int read = this.f92730in.read(this.f22417c);
            if (read == -1) {
                c();
                int i11 = this.f22424j;
                if (i11 == 0) {
                    return -1;
                }
                return i11;
            }
            try {
                a(read, false);
                C2376h c2376h = this.f22418d;
                if (c2376h != null) {
                    read = c2376h.h(this.f22417c, 0, read, this.f22421g, 0);
                } else {
                    InterfaceC3090a interfaceC3090a = this.f22420f;
                    if (interfaceC3090a != null) {
                        read = interfaceC3090a.f(this.f22417c, 0, read, this.f22421g, 0);
                    } else {
                        this.f22419e.f(this.f22417c, 0, read, this.f22421g, 0);
                    }
                }
                this.f22424j = read;
            } catch (Exception e10) {
                throw new CipherIOException("Error processing stream ", e10);
            }
        }
    }

    @Override
    public void mark(int i10) {
        this.f92730in.mark(i10);
        U u10 = this.f22416b;
        if (u10 != null) {
            this.f22426l = u10.getPosition();
        }
        byte[] bArr = this.f22421g;
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            this.f22422h = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        this.f22427m = this.f22423i;
    }

    @Override
    public boolean markSupported() {
        if (this.f22416b != null) {
            return this.f92730in.markSupported();
        }
        return false;
    }

    @Override
    public int read() throws IOException {
        if (this.f22423i >= this.f22424j && d() < 0) {
            return -1;
        }
        byte[] bArr = this.f22421g;
        int i10 = this.f22423i;
        this.f22423i = i10 + 1;
        return bArr[i10] & 255;
    }

    @Override
    public void reset() throws IOException {
        if (this.f22416b == null) {
            throw new IOException("cipher must implement SkippingCipher to be used with reset()");
        }
        this.f92730in.reset();
        this.f22416b.j(this.f22426l);
        byte[] bArr = this.f22422h;
        if (bArr != null) {
            this.f22421g = bArr;
        }
        this.f22423i = this.f22427m;
    }

    @Override
    public long skip(long j10) throws IOException {
        if (j10 <= 0) {
            return 0L;
        }
        if (this.f22416b == null) {
            int min = (int) Math.min(j10, available());
            this.f22423i += min;
            return min;
        }
        long available = available();
        if (j10 <= available) {
            this.f22423i = (int) (this.f22423i + j10);
            return j10;
        }
        this.f22423i = this.f22424j;
        long skip = this.f92730in.skip(j10 - available);
        if (skip == this.f22416b.skip(skip)) {
            return skip + available;
        }
        throw new IOException("Unable to skip cipher " + skip + " bytes.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(InputStream inputStream, C2376h c2376h, int i10) {
        super(inputStream);
        this.f22418d = c2376h;
        this.f22417c = new byte[i10];
        this.f22416b = c2376h instanceof U ? (U) c2376h : null;
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public a(InputStream inputStream, Y y10) {
        this(inputStream, y10, 2048);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f22423i >= this.f22424j && d() < 0) {
            return -1;
        }
        int min = Math.min(i11, available());
        System.arraycopy(this.f22421g, this.f22423i, bArr, i10, min);
        this.f22423i += min;
        return min;
    }

    public a(InputStream inputStream, Y y10, int i10) {
        super(inputStream);
        this.f22419e = y10;
        this.f22417c = new byte[i10];
        this.f22416b = y10 instanceof U ? (U) y10 : null;
    }

    public a(InputStream inputStream, InterfaceC3090a interfaceC3090a) {
        this(inputStream, interfaceC3090a, 2048);
    }

    public a(InputStream inputStream, InterfaceC3090a interfaceC3090a, int i10) {
        super(inputStream);
        this.f22420f = interfaceC3090a;
        this.f22417c = new byte[i10];
        this.f22416b = interfaceC3090a instanceof U ? (U) interfaceC3090a : null;
    }
}
