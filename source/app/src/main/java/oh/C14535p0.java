package oh;

import java.io.IOException;
import java.io.InputStream;

public class C14535p0 extends InputStream {

    public final I f98969b;

    public boolean f98970c = true;

    public InputStream f98971d;

    public C14535p0(I i10) {
        this.f98969b = i10;
    }

    public final InterfaceC14553z c() throws IOException {
        InterfaceC14516g j10 = this.f98969b.j();
        if (j10 == null) {
            return null;
        }
        if (j10 instanceof InterfaceC14553z) {
            return (InterfaceC14553z) j10;
        }
        throw new IOException("unknown object encountered: " + ((Object) j10.getClass()));
    }

    @Override
    public int read() throws IOException {
        InterfaceC14553z c10;
        if (this.f98971d == null) {
            if (!this.f98970c || (c10 = c()) == null) {
                return -1;
            }
            this.f98970c = false;
            this.f98971d = c10.a();
        }
        while (true) {
            int read = this.f98971d.read();
            if (read >= 0) {
                return read;
            }
            InterfaceC14553z c11 = c();
            if (c11 == null) {
                this.f98971d = null;
                return -1;
            }
            this.f98971d = c11.a();
        }
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        InterfaceC14553z c10;
        int i12 = 0;
        if (this.f98971d == null) {
            if (!this.f98970c || (c10 = c()) == null) {
                return -1;
            }
            this.f98970c = false;
            this.f98971d = c10.a();
        }
        while (true) {
            int read = this.f98971d.read(bArr, i10 + i12, i11 - i12);
            if (read >= 0) {
                i12 += read;
                if (i12 == i11) {
                    return i12;
                }
            } else {
                InterfaceC14553z c11 = c();
                if (c11 == null) {
                    this.f98971d = null;
                    if (i12 < 1) {
                        return -1;
                    }
                    return i12;
                }
                this.f98971d = c11.a();
            }
        }
    }
}
