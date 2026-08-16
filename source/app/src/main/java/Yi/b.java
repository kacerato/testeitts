package Yi;

import Bi.H;
import Xi.C3335c;
import Xi.G;
import Xi.M;
import fm.C13260d;
import java.io.IOException;
import java.io.InputStream;

public class b implements H {

    public G f30602a;

    public b(G g10) {
        this.f30602a = g10;
    }

    @Override
    public C3335c a(InputStream inputStream) throws IOException {
        byte[] bArr;
        int read = inputStream.read();
        if (read == 0) {
            throw new IOException("Sender's public key invalid.");
        }
        if (read == 2 || read == 3) {
            bArr = new byte[((this.f30602a.a().w() + 7) / 8) + 1];
        } else {
            if (read != 4 && read != 6 && read != 7) {
                throw new IOException("Sender's public key has invalid point encoding 0x" + Integer.toString(read, 16));
            }
            bArr = new byte[(((this.f30602a.a().w() + 7) / 8) * 2) + 1];
        }
        bArr[0] = (byte) read;
        C13260d.h(inputStream, bArr, 1, bArr.length - 1);
        return new M(this.f30602a.a().l(bArr), this.f30602a);
    }
}
