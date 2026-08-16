package ij;

import em.C13168c;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class C13749d extends InputStream {

    public final InputStream f92309b;

    public final byte[] f92310c;

    public final byte[] f92311d;

    public final OutputStream f92312e;

    public final Long f92313f;

    public int f92314g;

    public int f92315h;

    public boolean f92316i;

    public long f92317j;

    public class a extends OutputStream {
        public a() {
        }

        @Override
        public void write(int i10) throws IOException {
            C13749d c13749d = C13749d.this;
            byte[] bArr = c13749d.f92311d;
            int i11 = c13749d.f92315h;
            c13749d.f92315h = i11 + 1;
            bArr[i11] = (byte) i10;
        }
    }

    public C13749d(InputStream inputStream) {
        this(inputStream, null);
    }

    public int c() throws IOException {
        int read;
        int i10 = 0;
        do {
            Long l10 = this.f92313f;
            if (l10 != null && this.f92317j > l10.longValue()) {
                return -1;
            }
            read = this.f92309b.read();
            if (read >= 33 || read == 13 || read == 10) {
                byte[] bArr = this.f92310c;
                if (i10 >= bArr.length) {
                    throw new IOException("Content Transfer Encoding, base64 line length > 1024");
                }
                bArr[i10] = (byte) read;
                this.f92317j++;
                i10++;
            } else if (read >= 0) {
                this.f92317j++;
            }
            if (read <= -1 || i10 >= this.f92310c.length) {
                break;
            }
        } while (read != 10);
        if (i10 > 0) {
            try {
                C13168c.b(this.f92310c, 0, i10, this.f92312e);
            } catch (Exception e10) {
                throw new IOException("Decode Base64 Content-Transfer-Encoding: " + ((Object) e10));
            }
        } else if (read == -1) {
            return -1;
        }
        return this.f92315h;
    }

    @Override
    public void close() throws IOException {
        this.f92309b.close();
    }

    @Override
    public int read() throws IOException {
        if (this.f92314g == this.f92315h) {
            this.f92314g = 0;
            this.f92315h = 0;
            int c10 = c();
            if (c10 == -1) {
                return c10;
            }
        }
        byte[] bArr = this.f92311d;
        int i10 = this.f92314g;
        this.f92314g = i10 + 1;
        return bArr[i10] & 255;
    }

    public C13749d(InputStream inputStream, Long l10) {
        this.f92310c = new byte[1024];
        this.f92311d = new byte[768];
        this.f92309b = inputStream;
        this.f92312e = new a();
        this.f92313f = l10;
    }
}
