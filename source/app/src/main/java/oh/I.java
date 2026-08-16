package oh;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1Exception;

public class I {

    public final InputStream f98805a;

    public final int f98806b;

    public final byte[][] f98807c;

    public I(InputStream inputStream) {
        this(inputStream, j1.a(inputStream));
    }

    public InterfaceC14516g a(int i10) throws IOException {
        l(false);
        int l10 = r.l(this.f98805a, i10);
        int j10 = r.j(this.f98805a, this.f98806b, l10 == 3 || l10 == 4 || l10 == 16 || l10 == 17 || l10 == 8);
        if (j10 < 0) {
            if ((i10 & 32) == 0) {
                throw new IOException("indefinite-length primitive encoding encountered");
            }
            I i11 = new I(new d1(this.f98805a, this.f98806b), this.f98806b, this.f98807c);
            int i12 = i10 & 192;
            return i12 != 0 ? new C14529m0(i12, l10, i11) : i11.e(l10);
        }
        b1 b1Var = new b1(this.f98805a, j10, this.f98806b);
        if ((i10 & 224) == 0) {
            return g(l10, b1Var);
        }
        I i13 = new I(b1Var, b1Var.c(), this.f98807c);
        int i14 = i10 & 192;
        if (i14 != 0) {
            return new a1(i14, l10, (i10 & 32) != 0, i13);
        }
        return i13.d(l10);
    }

    public B b(int i10, int i11, boolean z10) throws IOException {
        return !z10 ? M.J(i10, i11, ((b1) this.f98805a).g()) : M.H(i10, i11, k());
    }

    public B c(int i10, int i11) throws IOException {
        return M.I(i10, i11, k());
    }

    public InterfaceC14516g d(int i10) throws IOException {
        if (i10 == 3) {
            return new Z(this);
        }
        if (i10 == 4) {
            return new C14513e0(this);
        }
        if (i10 == 8) {
            return new C14542t0(this);
        }
        if (i10 == 16) {
            return new W0(this);
        }
        if (i10 == 17) {
            return new Y0(this);
        }
        throw new ASN1Exception("unknown DL object encountered: 0x" + Integer.toHexString(i10));
    }

    public InterfaceC14516g e(int i10) throws IOException {
        if (i10 == 3) {
            return new Z(this);
        }
        if (i10 == 4) {
            return new C14513e0(this);
        }
        if (i10 == 8) {
            return new C14542t0(this);
        }
        if (i10 == 16) {
            return new C14521i0(this);
        }
        if (i10 == 17) {
            return new C14525k0(this);
        }
        throw new ASN1Exception("unknown BER object encountered: 0x" + Integer.toHexString(i10));
    }

    public InterfaceC14516g f(int i10) throws IOException {
        return g(i10, (b1) this.f98805a);
    }

    public InterfaceC14516g g(int i10, b1 b1Var) throws IOException {
        if (i10 == 3) {
            return new R0(b1Var);
        }
        if (i10 == 4) {
            return new D0(b1Var);
        }
        if (i10 == 8) {
            throw new ASN1Exception("externals must use constructed encoding (see X.690 8.18)");
        }
        if (i10 == 16) {
            throw new ASN1Exception("sets must use constructed encoding (see X.690 8.11.1/8.12.1)");
        }
        if (i10 == 17) {
            throw new ASN1Exception("sequences must use constructed encoding (see X.690 8.9.1/8.10.1)");
        }
        try {
            return r.d(i10, b1Var, this.f98807c);
        } catch (IllegalArgumentException e10) {
            throw new ASN1Exception("corrupted stream detected", e10);
        }
    }

    public InterfaceC14516g h(int i10) throws IOException {
        if (i10 < 0 || i10 > 30) {
            throw new IllegalArgumentException("invalid universal tag number: " + i10);
        }
        int read = this.f98805a.read();
        if (read < 0) {
            return null;
        }
        if ((read & (-33)) == i10) {
            return a(read);
        }
        throw new IOException("unexpected identifier encountered: " + read);
    }

    public N i() throws IOException {
        int read = this.f98805a.read();
        if (read < 0) {
            return null;
        }
        if ((read & 192) != 0) {
            return (N) a(read);
        }
        throw new ASN1Exception("no tagged object found");
    }

    public InterfaceC14516g j() throws IOException {
        int read = this.f98805a.read();
        if (read < 0) {
            return null;
        }
        return a(read);
    }

    public C14518h k() throws IOException {
        int read = this.f98805a.read();
        if (read < 0) {
            return new C14518h(0);
        }
        C14518h c14518h = new C14518h();
        do {
            InterfaceC14516g a10 = a(read);
            c14518h.a(a10 instanceof c1 ? ((c1) a10).c() : a10.r());
            read = this.f98805a.read();
        } while (read >= 0);
        return c14518h;
    }

    public final void l(boolean z10) {
        InputStream inputStream = this.f98805a;
        if (inputStream instanceof d1) {
            ((d1) inputStream).f(z10);
        }
    }

    public I(InputStream inputStream, int i10) {
        this(inputStream, i10, new byte[11]);
    }

    public I(InputStream inputStream, int i10, byte[][] bArr) {
        this.f98805a = inputStream;
        this.f98806b = i10;
        this.f98807c = bArr;
    }

    public I(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }
}
