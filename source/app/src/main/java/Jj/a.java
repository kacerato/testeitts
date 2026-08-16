package Jj;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.bouncycastle.crypto.io.InvalidCipherTextIOException;

public class a extends FilterInputStream {

    public final Cipher f10625b;

    public final byte[] f10626c;

    public boolean f10627d;

    public byte[] f10628e;

    public int f10629f;

    public int f10630g;

    public a(InputStream inputStream, Cipher cipher) {
        super(inputStream);
        this.f10626c = new byte[512];
        this.f10627d = false;
        this.f10625b = cipher;
    }

    @Override
    public int available() throws IOException {
        return this.f10629f - this.f10630g;
    }

    public final byte[] c() throws InvalidCipherTextIOException {
        try {
            if (this.f10627d) {
                return null;
            }
            this.f10627d = true;
            return this.f10625b.doFinal();
        } catch (GeneralSecurityException e10) {
            throw new InvalidCipherTextIOException("Error finalising cipher", e10);
        }
    }

    @Override
    public void close() throws IOException {
        try {
            this.f92730in.close();
            this.f10630g = 0;
            this.f10629f = 0;
        } finally {
            if (!this.f10627d) {
                c();
            }
        }
    }

    public final int d() throws IOException {
        if (this.f10627d) {
            return -1;
        }
        this.f10630g = 0;
        this.f10629f = 0;
        while (true) {
            int i10 = this.f10629f;
            if (i10 != 0) {
                return i10;
            }
            int read = this.f92730in.read(this.f10626c);
            if (read == -1) {
                byte[] c10 = c();
                this.f10628e = c10;
                if (c10 == null || c10.length == 0) {
                    return -1;
                }
                int length = c10.length;
                this.f10629f = length;
                return length;
            }
            byte[] update = this.f10625b.update(this.f10626c, 0, read);
            this.f10628e = update;
            if (update != null) {
                this.f10629f = update.length;
            }
        }
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
        if (this.f10630g >= this.f10629f && d() < 0) {
            return -1;
        }
        byte[] bArr = this.f10628e;
        int i10 = this.f10630g;
        this.f10630g = i10 + 1;
        return bArr[i10] & 255;
    }

    @Override
    public void reset() throws IOException {
    }

    @Override
    public long skip(long j10) throws IOException {
        if (j10 <= 0) {
            return 0L;
        }
        int min = (int) Math.min(j10, available());
        this.f10630g += min;
        return min;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f10630g >= this.f10629f && d() < 0) {
            return -1;
        }
        int min = Math.min(i11, available());
        System.arraycopy(this.f10628e, this.f10630g, bArr, i10, min);
        this.f10630g += min;
        return min;
    }
}
