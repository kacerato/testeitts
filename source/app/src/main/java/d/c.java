package D;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.io.OutputStream;

public final class c extends OutputStream {

    @NonNull
    public final OutputStream f4498b;

    public byte[] f4499c;

    public F.b f4500d;

    public int f4501e;

    public c(@NonNull OutputStream outputStream, @NonNull F.b bVar) {
        this(outputStream, bVar, 65536);
    }

    public final void c() throws IOException {
        int i10 = this.f4501e;
        if (i10 > 0) {
            this.f4498b.write(this.f4499c, 0, i10);
            this.f4501e = 0;
        }
    }

    @Override
    public void close() throws IOException {
        try {
            flush();
            this.f4498b.close();
            release();
        } catch (Throwable th2) {
            this.f4498b.close();
            throw th2;
        }
    }

    public final void d() throws IOException {
        if (this.f4501e == this.f4499c.length) {
            c();
        }
    }

    @Override
    public void flush() throws IOException {
        c();
        this.f4498b.flush();
    }

    public final void release() {
        byte[] bArr = this.f4499c;
        if (bArr != null) {
            this.f4500d.put(bArr);
            this.f4499c = null;
        }
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = this.f4499c;
        int i11 = this.f4501e;
        this.f4501e = i11 + 1;
        bArr[i11] = (byte) i10;
        d();
    }

    @VisibleForTesting
    public c(@NonNull OutputStream outputStream, F.b bVar, int i10) {
        this.f4498b = outputStream;
        this.f4500d = bVar;
        this.f4499c = (byte[]) bVar.c(i10, byte[].class);
    }

    @Override
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(@NonNull byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        do {
            int i13 = i11 - i12;
            int i14 = i10 + i12;
            int i15 = this.f4501e;
            if (i15 == 0 && i13 >= this.f4499c.length) {
                this.f4498b.write(bArr, i14, i13);
                return;
            }
            int min = Math.min(i13, this.f4499c.length - i15);
            System.arraycopy(bArr, i14, this.f4499c, this.f4501e, min);
            this.f4501e += min;
            i12 += min;
            d();
        } while (i12 < i11);
    }
}
