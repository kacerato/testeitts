package Sl;

import Xi.C3335c;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class p extends C3335c {

    public n f23782c;

    public Yl.e f23783d;

    public p(Yl.e eVar, n nVar) {
        super(false);
        this.f23783d = eVar;
        this.f23782c = nVar;
    }

    public void d(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        Yl.e eVar = this.f23783d;
        if (eVar == null) {
            if (pVar.f23783d != null) {
                return false;
            }
        } else if (!eVar.equals(pVar.f23783d)) {
            return false;
        }
        n nVar = this.f23782c;
        n nVar2 = pVar.f23782c;
        if (nVar == null) {
            if (nVar2 != null) {
                return false;
            }
        } else if (!nVar.equals(nVar2)) {
            return false;
        }
        return true;
    }

    public byte[] getEncoded() {
        return this.f23783d.U(this.f23782c.f23763c);
    }

    public int hashCode() {
        Yl.e eVar = this.f23783d;
        int hashCode = ((eVar == null ? 0 : eVar.hashCode()) + 31) * 31;
        n nVar = this.f23782c;
        return hashCode + (nVar != null ? nVar.hashCode() : 0);
    }

    public p(InputStream inputStream, n nVar) throws IOException {
        super(false);
        this.f23783d = Yl.e.s(inputStream, nVar.f23762b, nVar.f23763c);
        this.f23782c = nVar;
    }

    public p(byte[] bArr, n nVar) {
        super(false);
        this.f23783d = Yl.e.t(bArr, nVar.f23762b, nVar.f23763c);
        this.f23782c = nVar;
    }
}
