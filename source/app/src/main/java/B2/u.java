package B2;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import v2.InterfaceC15800a;

@k
@InterfaceC15800a
public final class u extends FilterOutputStream {

    public final r f1476b;

    public u(q qVar, OutputStream outputStream) {
        super((OutputStream) w2.H.E(outputStream));
        this.f1476b = (r) w2.H.E(qVar.i());
    }

    public p c() {
        return this.f1476b.h();
    }

    @Override
    public void close() throws IOException {
        this.out.close();
    }

    @Override
    public void write(int i10) throws IOException {
        this.f1476b.a((byte) i10);
        this.out.write(i10);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f1476b.e(bArr, i10, i11);
        this.out.write(bArr, i10, i11);
    }
}
