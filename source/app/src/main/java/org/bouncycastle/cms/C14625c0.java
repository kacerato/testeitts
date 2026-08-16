package org.bouncycastle.cms;

import java.io.IOException;
import java.io.InputStream;

public final class C14625c0 extends InputStream {

    public final InputStream f100727b;

    public t0 f100728c;

    public byte[] f100729d;

    public boolean f100730e = false;

    public int f100731f = 0;

    public C14625c0(InputStream inputStream, t0 t0Var) {
        this.f100727b = inputStream;
        this.f100728c = t0Var;
    }

    public byte[] c() {
        if (this.f100730e) {
            return org.bouncycastle.util.a.p(this.f100729d);
        }
        throw new IllegalStateException("input stream not fully processed");
    }

    @Override
    public int read() throws IOException {
        byte b10;
        if (this.f100730e) {
            int i10 = this.f100731f;
            byte[] bArr = this.f100729d;
            if (i10 >= bArr.length) {
                return -1;
            }
            this.f100731f = i10 + 1;
            b10 = bArr[i10];
        } else {
            int read = this.f100727b.read();
            if (read >= 0) {
                return read;
            }
            this.f100730e = true;
            t0 t0Var = this.f100728c;
            if (t0Var != null) {
                t0Var.init();
                this.f100729d = this.f100728c.b();
            }
            byte[] bArr2 = this.f100729d;
            int i11 = this.f100731f;
            this.f100731f = i11 + 1;
            b10 = bArr2[i11];
        }
        return b10 & 255;
    }

    public C14625c0(InputStream inputStream, byte[] bArr) {
        this.f100727b = inputStream;
        this.f100729d = bArr;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (bArr == null) {
            throw new NullPointerException("input array is null");
        }
        if (i10 < 0 || bArr.length < i10 + i11) {
            throw new IndexOutOfBoundsException("invalid off(" + i10 + ") and len(" + i11 + ")");
        }
        if (this.f100730e) {
            int i12 = this.f100731f;
            byte[] bArr2 = this.f100729d;
            if (i12 >= bArr2.length) {
                return -1;
            }
            if (i11 >= bArr2.length - i12) {
                System.arraycopy(bArr2, i12, bArr, i10, bArr2.length - i12);
                byte[] bArr3 = this.f100729d;
                int length = bArr3.length - this.f100731f;
                this.f100731f = bArr3.length;
                return length;
            }
            System.arraycopy(bArr2, i12, bArr, i10, i11);
        } else {
            int read = this.f100727b.read(bArr, i10, i11);
            if (read >= 0) {
                return read;
            }
            this.f100730e = true;
            t0 t0Var = this.f100728c;
            if (t0Var != null) {
                t0Var.init();
                this.f100729d = this.f100728c.b();
            }
            byte[] bArr4 = this.f100729d;
            if (i11 >= bArr4.length) {
                System.arraycopy(bArr4, 0, bArr, i10, bArr4.length);
                byte[] bArr5 = this.f100729d;
                this.f100731f = bArr5.length;
                return bArr5.length;
            }
            System.arraycopy(bArr4, 0, bArr, i10, i11);
        }
        this.f100731f += i11;
        return i11;
    }
}
