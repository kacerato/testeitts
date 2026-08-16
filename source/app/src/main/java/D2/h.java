package D2;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.Objects;
import javax.annotation.CheckForNull;
import w2.H;

@v2.c
@p
public final class h extends Reader {

    @CheckForNull
    public CharSequence f4766b;

    public int f4767c;

    public int f4768d;

    public h(CharSequence charSequence) {
        this.f4766b = (CharSequence) H.E(charSequence);
    }

    public final void c() throws IOException {
        if (this.f4766b == null) {
            throw new IOException("reader closed");
        }
    }

    @Override
    public synchronized void close() throws IOException {
        this.f4766b = null;
    }

    public final boolean d() {
        return e() > 0;
    }

    public final int e() {
        Objects.requireNonNull(this.f4766b);
        return this.f4766b.length() - this.f4767c;
    }

    @Override
    public synchronized void mark(int i10) throws IOException {
        H.k(i10 >= 0, "readAheadLimit (%s) may not be negative", i10);
        c();
        this.f4768d = this.f4767c;
    }

    @Override
    public boolean markSupported() {
        return true;
    }

    @Override
    public synchronized int read(CharBuffer charBuffer) throws IOException {
        H.E(charBuffer);
        c();
        Objects.requireNonNull(this.f4766b);
        if (!d()) {
            return -1;
        }
        int min = Math.min(charBuffer.remaining(), e());
        for (int i10 = 0; i10 < min; i10++) {
            CharSequence charSequence = this.f4766b;
            int i11 = this.f4767c;
            this.f4767c = i11 + 1;
            charBuffer.put(charSequence.charAt(i11));
        }
        return min;
    }

    @Override
    public synchronized boolean ready() throws IOException {
        c();
        return true;
    }

    @Override
    public synchronized void reset() throws IOException {
        c();
        this.f4767c = this.f4768d;
    }

    @Override
    public synchronized long skip(long j10) throws IOException {
        int min;
        H.p(j10 >= 0, "n (%s) may not be negative", j10);
        c();
        min = (int) Math.min(e(), j10);
        this.f4767c += min;
        return min;
    }

    @Override
    public synchronized int read() throws IOException {
        char c10;
        c();
        Objects.requireNonNull(this.f4766b);
        if (d()) {
            CharSequence charSequence = this.f4766b;
            int i10 = this.f4767c;
            this.f4767c = i10 + 1;
            c10 = charSequence.charAt(i10);
        } else {
            c10 = '\uffff';
        }
        return c10;
    }

    @Override
    public synchronized int read(char[] cArr, int i10, int i11) throws IOException {
        H.f0(i10, i10 + i11, cArr.length);
        c();
        Objects.requireNonNull(this.f4766b);
        if (!d()) {
            return -1;
        }
        int min = Math.min(i11, e());
        for (int i12 = 0; i12 < min; i12++) {
            CharSequence charSequence = this.f4766b;
            int i13 = this.f4767c;
            this.f4767c = i13 + 1;
            cArr[i10 + i12] = charSequence.charAt(i13);
        }
        return min;
    }
}
