package Qi;

import Bi.C2376h;
import Bi.Y;
import Ti.InterfaceC3090a;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.io.CipherIOException;
import org.bouncycastle.crypto.io.InvalidCipherTextIOException;

public class b extends FilterOutputStream {

    public C2376h f22428b;

    public Y f22429c;

    public InterfaceC3090a f22430d;

    public final byte[] f22431e;

    public byte[] f22432f;

    public b(OutputStream outputStream, C2376h c2376h) {
        super(outputStream);
        this.f22431e = new byte[1];
        this.f22428b = c2376h;
    }

    public final void a(int i10, boolean z10) {
        if (z10) {
            C2376h c2376h = this.f22428b;
            if (c2376h != null) {
                i10 = c2376h.c(i10);
            } else {
                InterfaceC3090a interfaceC3090a = this.f22430d;
                if (interfaceC3090a != null) {
                    i10 = interfaceC3090a.h(i10);
                }
            }
        } else {
            C2376h c2376h2 = this.f22428b;
            if (c2376h2 != null) {
                i10 = c2376h2.e(i10);
            } else {
                InterfaceC3090a interfaceC3090a2 = this.f22430d;
                if (interfaceC3090a2 != null) {
                    i10 = interfaceC3090a2.g(i10);
                }
            }
        }
        byte[] bArr = this.f22432f;
        if (bArr == null || bArr.length < i10) {
            this.f22432f = new byte[i10];
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:1|(4:2|3|(2:5|(1:7))(2:19|(2:21|(1:23))(2:24|(1:26)))|8)|9|10|(1:12)(1:14)) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x005a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() throws IOException {
        IOException cipherIOException;
        IOException iOException;
        a(0, true);
        try {
            C2376h c2376h = this.f22428b;
            if (c2376h != null) {
                int a10 = c2376h.a(this.f22432f, 0);
                if (a10 != 0) {
                    this.out.write(this.f22432f, 0, a10);
                }
            } else {
                InterfaceC3090a interfaceC3090a = this.f22430d;
                if (interfaceC3090a != null) {
                    int c10 = interfaceC3090a.c(this.f22432f, 0);
                    if (c10 != 0) {
                        this.out.write(this.f22432f, 0, c10);
                    }
                } else {
                    Y y10 = this.f22429c;
                    if (y10 != null) {
                        y10.reset();
                    }
                }
            }
            iOException = null;
        } catch (InvalidCipherTextException e10) {
            cipherIOException = new InvalidCipherTextIOException("Error finalising cipher data", e10);
            iOException = cipherIOException;
            flush();
            this.out.close();
            if (iOException != null) {
            }
        } catch (Exception e11) {
            cipherIOException = new CipherIOException("Error closing stream: ", e11);
            iOException = cipherIOException;
            flush();
            this.out.close();
            if (iOException != null) {
            }
        }
        flush();
        this.out.close();
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = this.f22431e;
        byte b10 = (byte) i10;
        bArr[0] = b10;
        Y y10 = this.f22429c;
        if (y10 != null) {
            this.out.write(y10.i(b10));
        } else {
            write(bArr, 0, 1);
        }
    }

    public b(OutputStream outputStream, Y y10) {
        super(outputStream);
        this.f22431e = new byte[1];
        this.f22429c = y10;
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public b(OutputStream outputStream, InterfaceC3090a interfaceC3090a) {
        super(outputStream);
        this.f22431e = new byte[1];
        this.f22430d = interfaceC3090a;
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        a(i11, false);
        C2376h c2376h = this.f22428b;
        if (c2376h != null) {
            int h10 = c2376h.h(bArr, i10, i11, this.f22432f, 0);
            if (h10 != 0) {
                this.out.write(this.f22432f, 0, h10);
                return;
            }
            return;
        }
        InterfaceC3090a interfaceC3090a = this.f22430d;
        if (interfaceC3090a == null) {
            this.f22429c.f(bArr, i10, i11, this.f22432f, 0);
            this.out.write(this.f22432f, 0, i11);
        } else {
            int f10 = interfaceC3090a.f(bArr, i10, i11, this.f22432f, 0);
            if (f10 != 0) {
                this.out.write(this.f22432f, 0, f10);
            }
        }
    }
}
