package oh;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;

public class R0 implements InterfaceC14510d {

    public final b1 f98826b;

    public int f98827c = 0;

    public R0(b1 b1Var) {
        this.f98826b = b1Var;
    }

    @Override
    public InputStream a() throws IOException {
        return e(true);
    }

    @Override
    public B c() throws IOException {
        return AbstractC14508c.E(this.f98826b.g());
    }

    public final InputStream e(boolean z10) throws IOException {
        int e10 = this.f98826b.e();
        if (e10 < 1) {
            throw new IllegalStateException("content octets cannot be empty");
        }
        int read = this.f98826b.read();
        this.f98827c = read;
        if (read > 0) {
            if (e10 < 2) {
                throw new IllegalStateException("zero length data with non-zero pad bits");
            }
            if (read > 7) {
                throw new IllegalStateException("pad bits cannot be greater than 7 or less than 0");
            }
            if (z10) {
                throw new IOException("expected octet-aligned bitstring, but found padBits: " + this.f98827c);
            }
        }
        return this.f98826b;
    }

    @Override
    public InputStream i() throws IOException {
        return e(false);
    }

    @Override
    public int n() {
        return this.f98827c;
    }

    @Override
    public B r() {
        try {
            return c();
        } catch (IOException e10) {
            throw new ASN1ParsingException("IOException converting stream to byte array: " + e10.getMessage(), e10);
        }
    }
}
