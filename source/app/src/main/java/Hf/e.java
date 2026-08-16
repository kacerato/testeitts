package Hf;

import java.io.IOException;
import java.io.OutputStream;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.C14985q;

@f
public final class e extends OutputStream {

    @NotNull
    public final OutputStream f8447b;

    @NotNull
    public final a f8448c;

    public boolean f8449d;

    public int f8450e;

    @NotNull
    public final byte[] f8451f;

    @NotNull
    public final byte[] f8452g;

    public int f8453h;

    public e(@NotNull OutputStream output, @NotNull a base64) {
        M.p(output, "output");
        M.p(base64, "base64");
        this.f8447b = output;
        this.f8448c = base64;
        this.f8450e = base64.H() ? base64.E() : -1;
        this.f8451f = new byte[1024];
        this.f8452g = new byte[3];
    }

    public final void c() {
        if (this.f8449d) {
            throw new IOException("The output stream is closed.");
        }
    }

    @Override
    public void close() {
        if (this.f8449d) {
            return;
        }
        this.f8449d = true;
        if (this.f8453h != 0) {
            e();
        }
        this.f8447b.close();
    }

    public final int d(byte[] bArr, int i10, int i11) {
        int min = Math.min(3 - this.f8453h, i11 - i10);
        C14985q.v0(bArr, this.f8452g, this.f8453h, i10, i10 + min);
        int i12 = this.f8453h + min;
        this.f8453h = i12;
        if (i12 == 3) {
            e();
        }
        return min;
    }

    public final void e() {
        if (f(this.f8452g, 0, this.f8453h) != 4) {
            throw new IllegalStateException("Check failed.");
        }
        this.f8453h = 0;
    }

    public final int f(byte[] bArr, int i10, int i11) {
        int v10 = this.f8448c.v(bArr, this.f8451f, 0, i10, i11);
        if (this.f8450e == 0) {
            this.f8447b.write(a.f8417f.N());
            this.f8450e = this.f8448c.E();
            if (v10 > this.f8448c.E()) {
                throw new IllegalStateException("Check failed.");
            }
        }
        this.f8447b.write(this.f8451f, 0, v10);
        this.f8450e -= v10;
        return v10;
    }

    @Override
    public void flush() {
        c();
        this.f8447b.flush();
    }

    @Override
    public void write(int i10) {
        c();
        byte[] bArr = this.f8452g;
        int i11 = this.f8453h;
        int i12 = i11 + 1;
        this.f8453h = i12;
        bArr[i11] = (byte) i10;
        if (i12 == 3) {
            e();
        }
    }

    @Override
    public void write(@NotNull byte[] source, int i10, int i11) {
        int i12;
        M.p(source, "source");
        c();
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) > source.length) {
            throw new IndexOutOfBoundsException("offset: " + i10 + ", length: " + i11 + ", source size: " + source.length);
        }
        if (i11 == 0) {
            return;
        }
        int i13 = this.f8453h;
        if (i13 < 3) {
            if (i13 != 0) {
                i10 += d(source, i10, i12);
                if (this.f8453h != 0) {
                    return;
                }
            }
            while (i10 + 3 <= i12) {
                int min = Math.min((this.f8448c.H() ? this.f8450e : this.f8451f.length) / 4, (i12 - i10) / 3);
                int i14 = (min * 3) + i10;
                if (f(source, i10, i14) != min * 4) {
                    throw new IllegalStateException("Check failed.");
                }
                i10 = i14;
            }
            C14985q.v0(source, this.f8452g, 0, i10, i12);
            this.f8453h = i12 - i10;
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
