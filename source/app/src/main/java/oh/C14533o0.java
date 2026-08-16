package oh;

import java.io.IOException;
import java.io.InputStream;

public class C14533o0 extends InputStream {

    public final I f98961b;

    public final boolean f98962c;

    public boolean f98963d = true;

    public int f98964e = 0;

    public InterfaceC14510d f98965f;

    public InputStream f98966g;

    public C14533o0(I i10, boolean z10) {
        this.f98961b = i10;
        this.f98962c = z10;
    }

    public final InterfaceC14510d c() throws IOException {
        InterfaceC14516g j10 = this.f98961b.j();
        if (j10 == null) {
            if (!this.f98962c || this.f98964e == 0) {
                return null;
            }
            throw new IOException("expected octet-aligned bitstring, but found padBits: " + this.f98964e);
        }
        if (j10 instanceof InterfaceC14510d) {
            if (this.f98964e == 0) {
                return (InterfaceC14510d) j10;
            }
            throw new IOException("only the last nested bitstring can have padding");
        }
        throw new IOException("unknown object encountered: " + ((Object) j10.getClass()));
    }

    public int d() {
        return this.f98964e;
    }

    @Override
    public int read() throws IOException {
        if (this.f98966g == null) {
            if (!this.f98963d) {
                return -1;
            }
            InterfaceC14510d c10 = c();
            this.f98965f = c10;
            if (c10 == null) {
                return -1;
            }
            this.f98963d = false;
            this.f98966g = c10.i();
        }
        while (true) {
            int read = this.f98966g.read();
            if (read >= 0) {
                return read;
            }
            this.f98964e = this.f98965f.n();
            InterfaceC14510d c11 = c();
            this.f98965f = c11;
            if (c11 == null) {
                this.f98966g = null;
                return -1;
            }
            this.f98966g = c11.i();
        }
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        if (this.f98966g == null) {
            if (!this.f98963d) {
                return -1;
            }
            InterfaceC14510d c10 = c();
            this.f98965f = c10;
            if (c10 == null) {
                return -1;
            }
            this.f98963d = false;
            this.f98966g = c10.i();
        }
        while (true) {
            int read = this.f98966g.read(bArr, i10 + i12, i11 - i12);
            if (read >= 0) {
                i12 += read;
                if (i12 == i11) {
                    return i12;
                }
            } else {
                this.f98964e = this.f98965f.n();
                InterfaceC14510d c11 = c();
                this.f98965f = c11;
                if (c11 == null) {
                    this.f98966g = null;
                    if (i12 < 1) {
                        return -1;
                    }
                    return i12;
                }
                this.f98966g = c11.i();
            }
        }
    }
}
