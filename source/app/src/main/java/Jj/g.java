package Jj;

import java.io.IOException;
import java.io.OutputStream;
import java.security.Signature;
import java.security.SignatureException;
import org.bouncycastle.util.h;

public class g extends OutputStream {

    public Signature f10636b;

    public g(Signature signature) {
        this.f10636b = signature;
    }

    @Override
    public void write(int i10) throws IOException {
        try {
            this.f10636b.update((byte) i10);
        } catch (SignatureException e10) {
            throw h.c(e10.getMessage(), e10);
        }
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        try {
            this.f10636b.update(bArr);
        } catch (SignatureException e10) {
            throw h.c(e10.getMessage(), e10);
        }
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        try {
            this.f10636b.update(bArr, i10, i11);
        } catch (SignatureException e10) {
            throw h.c(e10.getMessage(), e10);
        }
    }
}
