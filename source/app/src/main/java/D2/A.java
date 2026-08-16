package D2;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import javax.annotation.CheckForNull;
import w2.H;

@v2.c
@p
public final class A extends InputStream {

    public Iterator<? extends AbstractC2488f> f4727b;

    @CheckForNull
    public InputStream f4728c;

    public A(Iterator<? extends AbstractC2488f> it) throws IOException {
        this.f4727b = (Iterator) H.E(it);
        c();
    }

    @Override
    public int available() throws IOException {
        InputStream inputStream = this.f4728c;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    public final void c() throws IOException {
        close();
        if (this.f4727b.hasNext()) {
            this.f4728c = this.f4727b.next().m();
        }
    }

    @Override
    public void close() throws IOException {
        InputStream inputStream = this.f4728c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f4728c = null;
            }
        }
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    @Override
    public int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f4728c;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read();
            if (read != -1) {
                return read;
            }
            c();
        }
    }

    @Override
    public long skip(long j10) throws IOException {
        InputStream inputStream = this.f4728c;
        if (inputStream == null || j10 <= 0) {
            return 0L;
        }
        long skip = inputStream.skip(j10);
        if (skip != 0) {
            return skip;
        }
        if (read() == -1) {
            return 0L;
        }
        return this.f4728c.skip(j10 - 1) + 1;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        H.E(bArr);
        while (true) {
            InputStream inputStream = this.f4728c;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read(bArr, i10, i11);
            if (read != -1) {
                return read;
            }
            c();
        }
    }
}
