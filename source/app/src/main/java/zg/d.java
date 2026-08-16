package zg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public class d extends c {

    public Inflater f131313d;

    public byte[] f131314e;

    public byte[] f131315f;

    public int f131316g;

    public d(AbstractC16310b<?> abstractC16310b, int i10) {
        super(abstractC16310b);
        this.f131315f = new byte[1];
        this.f131313d = new Inflater(true);
        this.f131314e = new byte[i10];
    }

    @Override
    public void a(InputStream inputStream, int i10) throws IOException {
        Inflater inflater = this.f131313d;
        if (inflater != null) {
            inflater.end();
            this.f131313d = null;
        }
        super.a(inputStream, i10);
    }

    @Override
    public void close() throws IOException {
        Inflater inflater = this.f131313d;
        if (inflater != null) {
            inflater.end();
        }
        super.close();
    }

    @Override
    public int d(PushbackInputStream pushbackInputStream) throws IOException {
        int remaining = this.f131313d.getRemaining();
        if (remaining > 0) {
            pushbackInputStream.unread(c(), this.f131316g - remaining, remaining);
        }
        return remaining;
    }

    public final void e() throws IOException {
        byte[] bArr = this.f131314e;
        int read = super.read(bArr, 0, bArr.length);
        this.f131316g = read;
        if (read == -1) {
            throw new EOFException("Unexpected end of input stream");
        }
        this.f131313d.setInput(this.f131314e, 0, read);
    }

    @Override
    public int read() throws IOException {
        if (read(this.f131315f) == -1) {
            return -1;
        }
        return this.f131315f[0];
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        while (true) {
            try {
                int inflate = this.f131313d.inflate(bArr, i10, i11);
                if (inflate != 0) {
                    return inflate;
                }
                if (!this.f131313d.finished() && !this.f131313d.needsDictionary()) {
                    if (this.f131313d.needsInput()) {
                        e();
                    }
                }
                return -1;
            } catch (DataFormatException e10) {
                throw new IOException(e10);
            }
        }
    }
}
