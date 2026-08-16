package Yl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;

public class j implements i {

    public l f30642a;

    public l f30643b;

    public l f30644c;

    public j(l lVar, l lVar2, l lVar3) {
        this.f30642a = lVar;
        this.f30643b = lVar2;
        this.f30644c = lVar3;
    }

    public static j g(InputStream inputStream, int i10, int i11, int i12, int i13, int i14) throws IOException {
        return new j(l.g(inputStream, i10, i11, i11), l.g(inputStream, i10, i12, i12), l.g(inputStream, i10, i13, i14));
    }

    public static j h(byte[] bArr, int i10, int i11, int i12, int i13, int i14) throws IOException {
        return g(new ByteArrayInputStream(bArr), i10, i11, i12, i13, i14);
    }

    public static j i(int i10, int i11, int i12, int i13, int i14, SecureRandom secureRandom) {
        return new j(l.h(i10, i11, i11, secureRandom), l.h(i10, i12, i12, secureRandom), l.h(i10, i13, i14, secureRandom));
    }

    @Override
    public e a(e eVar) {
        e a10 = this.f30643b.a(this.f30642a.a(eVar));
        a10.h(this.f30644c.a(eVar));
        return a10;
    }

    @Override
    public e b() {
        e a10 = this.f30642a.a(this.f30643b.b());
        a10.h(this.f30644c.b());
        return a10;
    }

    @Override
    public b c(b bVar) {
        b c10 = this.f30643b.c(this.f30642a.c(bVar));
        c10.a(this.f30644c.c(bVar));
        return c10;
    }

    @Override
    public e e(e eVar, int i10) {
        e a10 = a(eVar);
        a10.z(i10);
        return a10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        l lVar = this.f30642a;
        if (lVar == null) {
            if (jVar.f30642a != null) {
                return false;
            }
        } else if (!lVar.equals(jVar.f30642a)) {
            return false;
        }
        l lVar2 = this.f30643b;
        if (lVar2 == null) {
            if (jVar.f30643b != null) {
                return false;
            }
        } else if (!lVar2.equals(jVar.f30643b)) {
            return false;
        }
        l lVar3 = this.f30644c;
        l lVar4 = jVar.f30644c;
        if (lVar3 == null) {
            if (lVar4 != null) {
                return false;
            }
        } else if (!lVar3.equals(lVar4)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        l lVar = this.f30642a;
        int hashCode = ((lVar == null ? 0 : lVar.hashCode()) + 31) * 31;
        l lVar2 = this.f30643b;
        int hashCode2 = (hashCode + (lVar2 == null ? 0 : lVar2.hashCode())) * 31;
        l lVar3 = this.f30644c;
        return hashCode2 + (lVar3 != null ? lVar3.hashCode() : 0);
    }

    public byte[] j() {
        byte[] i10 = this.f30642a.i();
        byte[] i11 = this.f30643b.i();
        byte[] i12 = this.f30644c.i();
        byte[] Q10 = org.bouncycastle.util.a.Q(i10, i10.length + i11.length + i12.length);
        System.arraycopy(i11, 0, Q10, i10.length, i11.length);
        System.arraycopy(i12, 0, Q10, i10.length + i11.length, i12.length);
        return Q10;
    }
}
