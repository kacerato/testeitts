package Jj;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.bouncycastle.crypto.io.InvalidCipherTextIOException;

public class b extends FilterOutputStream {

    public final Cipher f10631b;

    public final byte[] f10632c;

    public b(OutputStream outputStream, Cipher cipher) {
        super(outputStream);
        this.f10632c = new byte[1];
        this.f10631b = cipher;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(4:(4:1|2|(1:4)|6)|7|8|(1:10)(1:12)) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
    
        if (r0 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() throws IOException {
        IOException iOException;
        IOException iOException2;
        try {
            byte[] doFinal = this.f10631b.doFinal();
            if (doFinal != null) {
                this.out.write(doFinal);
            }
            iOException2 = null;
        } catch (GeneralSecurityException e10) {
            iOException = new InvalidCipherTextIOException("Error during cipher finalisation", e10);
            iOException2 = iOException;
            flush();
            this.out.close();
            if (iOException2 != null) {
            }
        } catch (Exception e11) {
            iOException = new IOException("Error closing stream: " + ((Object) e11));
            iOException2 = iOException;
            flush();
            this.out.close();
            if (iOException2 != null) {
            }
        }
        flush();
        this.out.close();
        if (iOException2 != null) {
            throw iOException2;
        }
    }

    @Override
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = this.f10632c;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        byte[] update = this.f10631b.update(bArr, i10, i11);
        if (update != null) {
            this.out.write(update);
        }
    }
}
