package Sl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class g extends d {

    public Yl.e f23712d;

    public g(Yl.e eVar, e eVar2) {
        super(false, eVar2);
        this.f23712d = eVar;
    }

    public void e(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        Yl.e eVar = this.f23712d;
        if (eVar == null) {
            if (gVar.f23712d != null) {
                return false;
            }
        } else if (!eVar.equals(gVar.f23712d)) {
            return false;
        }
        e eVar2 = this.f23681c;
        e eVar3 = gVar.f23681c;
        if (eVar2 == null) {
            if (eVar3 != null) {
                return false;
            }
        } else if (!eVar2.equals(eVar3)) {
            return false;
        }
        return true;
    }

    public byte[] getEncoded() {
        return this.f23712d.U(this.f23681c.f23685c);
    }

    public int hashCode() {
        Yl.e eVar = this.f23712d;
        int hashCode = ((eVar == null ? 0 : eVar.hashCode()) + 31) * 31;
        e eVar2 = this.f23681c;
        return hashCode + (eVar2 != null ? eVar2.hashCode() : 0);
    }

    public g(InputStream inputStream, e eVar) throws IOException {
        super(false, eVar);
        this.f23712d = Yl.e.s(inputStream, eVar.f23684b, eVar.f23685c);
    }

    public g(byte[] bArr, e eVar) {
        super(false, eVar);
        this.f23712d = Yl.e.t(bArr, eVar.f23684b, eVar.f23685c);
    }
}
