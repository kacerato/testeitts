package Hf;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.C14985q;

@f
public final class d extends InputStream {

    @NotNull
    public final InputStream f8438b;

    @NotNull
    public final a f8439c;

    public boolean f8440d;

    public boolean f8441e;

    @NotNull
    public final byte[] f8442f;

    @NotNull
    public final byte[] f8443g;

    @NotNull
    public final byte[] f8444h;

    public int f8445i;

    public int f8446j;

    public d(@NotNull InputStream input, @NotNull a base64) {
        M.p(input, "input");
        M.p(base64, "base64");
        this.f8438b = input;
        this.f8439c = base64;
        this.f8442f = new byte[1];
        this.f8443g = new byte[1024];
        this.f8444h = new byte[1024];
    }

    public final void a(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = this.f8444h;
        int i12 = this.f8445i;
        C14985q.v0(bArr2, bArr, i10, i12, i12 + i11);
        this.f8445i += i11;
        f();
    }

    public final int b(byte[] bArr, int i10, int i11, int i12) {
        int i13 = this.f8446j;
        this.f8446j = i13 + this.f8439c.p(this.f8443g, this.f8444h, i13, 0, i12);
        int min = Math.min(c(), i11 - i10);
        a(bArr, i10, min);
        g();
        return min;
    }

    public final int c() {
        return this.f8446j - this.f8445i;
    }

    @Override
    public void close() {
        if (this.f8440d) {
            return;
        }
        this.f8440d = true;
        this.f8438b.close();
    }

    public final int d(int i10) {
        this.f8443g[i10] = 61;
        if ((i10 & 3) != 2) {
            return i10 + 1;
        }
        int e10 = e();
        if (e10 >= 0) {
            this.f8443g[i10 + 1] = (byte) e10;
        }
        return i10 + 2;
    }

    public final int e() {
        int read;
        if (!this.f8439c.H()) {
            return this.f8438b.read();
        }
        do {
            read = this.f8438b.read();
            if (read == -1) {
                break;
            }
        } while (!c.e(read));
        return read;
    }

    public final void f() {
        if (this.f8445i == this.f8446j) {
            this.f8445i = 0;
            this.f8446j = 0;
        }
    }

    public final void g() {
        byte[] bArr = this.f8444h;
        int length = bArr.length;
        int i10 = this.f8446j;
        if ((this.f8443g.length / 4) * 3 > length - i10) {
            C14985q.v0(bArr, bArr, 0, this.f8445i, i10);
            this.f8446j -= this.f8445i;
            this.f8445i = 0;
        }
    }

    @Override
    public int read() {
        int i10 = this.f8445i;
        if (i10 < this.f8446j) {
            int i11 = this.f8444h[i10] & 255;
            this.f8445i = i10 + 1;
            f();
            return i11;
        }
        int read = read(this.f8442f, 0, 1);
        if (read == -1) {
            return -1;
        }
        if (read == 1) {
            return this.f8442f[0] & 255;
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override
    public int read(@NotNull byte[] destination, int i10, int i11) {
        int i12;
        boolean z10;
        boolean z11;
        M.p(destination, "destination");
        if (i10 >= 0 && i11 >= 0 && (i12 = i10 + i11) <= destination.length) {
            if (!this.f8440d) {
                if (this.f8441e) {
                    return -1;
                }
                if (i11 == 0) {
                    return 0;
                }
                if (c() >= i11) {
                    a(destination, i10, i11);
                    return i11;
                }
                int c10 = (((i11 - c()) + 2) / 3) * 4;
                int i13 = i10;
                while (true) {
                    z10 = this.f8441e;
                    if (z10 || c10 <= 0) {
                        break;
                    }
                    int min = Math.min(this.f8443g.length, c10);
                    int i14 = 0;
                    while (true) {
                        z11 = this.f8441e;
                        if (z11 || i14 >= min) {
                            break;
                        }
                        int e10 = e();
                        if (e10 == -1) {
                            this.f8441e = true;
                        } else if (e10 != 61) {
                            this.f8443g[i14] = (byte) e10;
                            i14++;
                        } else {
                            i14 = d(i14);
                            this.f8441e = true;
                        }
                    }
                    if (!z11 && i14 != min) {
                        throw new IllegalStateException("Check failed.");
                    }
                    c10 -= i14;
                    i13 += b(destination, i13, i12, i14);
                }
                if (i13 == i10 && z10) {
                    return -1;
                }
                return i13 - i10;
            }
            throw new IOException("The input stream is closed.");
        }
        throw new IndexOutOfBoundsException("offset: " + i10 + ", length: " + i11 + ", buffer size: " + destination.length);
    }
}
