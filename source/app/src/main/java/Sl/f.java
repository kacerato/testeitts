package Sl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class f extends d {

    public Yl.i f23709d;

    public Yl.e f23710e;

    public Yl.e f23711f;

    public f(Yl.e eVar, Yl.i iVar, Yl.e eVar2, e eVar3) {
        super(true, eVar3);
        this.f23711f = eVar;
        this.f23709d = iVar;
        this.f23710e = eVar2;
    }

    public final void e() {
        if (!this.f23681c.f23708z) {
            this.f23710e = this.f23709d.b().x();
            return;
        }
        Yl.e eVar = new Yl.e(this.f23681c.f23684b);
        this.f23710e = eVar;
        eVar.f30630a[0] = 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        e eVar = this.f23681c;
        if (eVar == null) {
            if (fVar.f23681c != null) {
                return false;
            }
        } else if (!eVar.equals(fVar.f23681c)) {
            return false;
        }
        Yl.i iVar = this.f23709d;
        if (iVar == null) {
            if (fVar.f23709d != null) {
                return false;
            }
        } else if (!iVar.equals(fVar.f23709d)) {
            return false;
        }
        return this.f23711f.equals(fVar.f23711f);
    }

    public void f(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }

    public byte[] getEncoded() {
        byte[] U10 = this.f23711f.U(this.f23681c.f23685c);
        Yl.i iVar = this.f23709d;
        byte[] j10 = iVar instanceof Yl.j ? ((Yl.j) iVar).j() : iVar.b().W();
        byte[] bArr = new byte[U10.length + j10.length];
        System.arraycopy(U10, 0, bArr, 0, U10.length);
        System.arraycopy(j10, 0, bArr, U10.length, j10.length);
        return bArr;
    }

    public int hashCode() {
        e eVar = this.f23681c;
        int hashCode = ((eVar == null ? 0 : eVar.hashCode()) + 31) * 31;
        Yl.i iVar = this.f23709d;
        int hashCode2 = (hashCode + (iVar == null ? 0 : iVar.hashCode())) * 31;
        Yl.e eVar2 = this.f23711f;
        return hashCode2 + (eVar2 != null ? eVar2.hashCode() : 0);
    }

    public f(InputStream inputStream, e eVar) throws IOException {
        super(true, eVar);
        if (eVar.f23682A == 1) {
            int i10 = eVar.f23684b;
            int i11 = eVar.f23687e;
            int i12 = eVar.f23688f;
            int i13 = eVar.f23689g;
            int i14 = eVar.f23708z ? i13 : i13 - 1;
            this.f23711f = Yl.e.s(inputStream, i10, eVar.f23685c);
            this.f23709d = Yl.j.g(inputStream, i10, i11, i12, i13, i14);
        } else {
            this.f23711f = Yl.e.s(inputStream, eVar.f23684b, eVar.f23685c);
            Yl.e v10 = Yl.e.v(inputStream, eVar.f23684b);
            this.f23709d = eVar.f23707y ? new Yl.l(v10) : new Yl.d(v10);
        }
        e();
    }

    public f(byte[] bArr, e eVar) throws IOException {
        this(new ByteArrayInputStream(bArr), eVar);
    }
}
