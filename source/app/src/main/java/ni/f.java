package ni;

import java.io.IOException;
import oh.B;
import org.bouncycastle.cert.CertIOException;
import th.C;
import th.G;
import th.I;

public class f {

    public final I f98244a;

    public f(I i10) {
        this.f98244a = i10;
    }

    public static I d(byte[] bArr) throws IOException {
        try {
            return I.z(B.B(bArr));
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    public C a() {
        return this.f98244a.v();
    }

    public G b() {
        return this.f98244a.y();
    }

    public boolean c() {
        return this.f98244a.A() != null;
    }

    public I e() {
        return this.f98244a;
    }

    public f(byte[] bArr) throws IOException {
        this(d(bArr));
    }
}
